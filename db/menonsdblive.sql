-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: menonsdblive
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
) ENGINE=InnoDB AUTO_INCREMENT=913 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add admin',7,'add_admin'),(26,'Can change admin',7,'change_admin'),(27,'Can delete admin',7,'delete_admin'),(28,'Can view admin',7,'view_admin'),(29,'Can add baseunit',8,'add_baseunit'),(30,'Can change baseunit',8,'change_baseunit'),(31,'Can delete baseunit',8,'delete_baseunit'),(32,'Can view baseunit',8,'view_baseunit'),(33,'Can add batch',9,'add_batch'),(34,'Can change batch',9,'change_batch'),(35,'Can delete batch',9,'delete_batch'),(36,'Can view batch',9,'view_batch'),(37,'Can add branch',10,'add_branch'),(38,'Can change branch',10,'change_branch'),(39,'Can delete branch',10,'delete_branch'),(40,'Can view branch',10,'view_branch'),(41,'Can add casehistrypersonalinfo',11,'add_casehistrypersonalinfo'),(42,'Can change casehistrypersonalinfo',11,'change_casehistrypersonalinfo'),(43,'Can delete casehistrypersonalinfo',11,'delete_casehistrypersonalinfo'),(44,'Can view casehistrypersonalinfo',11,'view_casehistrypersonalinfo'),(45,'Can add casemedicalreport',12,'add_casemedicalreport'),(46,'Can change casemedicalreport',12,'change_casemedicalreport'),(47,'Can delete casemedicalreport',12,'delete_casemedicalreport'),(48,'Can view casemedicalreport',12,'view_casemedicalreport'),(49,'Can add city',13,'add_city'),(50,'Can change city',13,'change_city'),(51,'Can delete city',13,'delete_city'),(52,'Can view city',13,'view_city'),(53,'Can add comapany',14,'add_comapany'),(54,'Can change comapany',14,'change_comapany'),(55,'Can delete comapany',14,'delete_comapany'),(56,'Can view comapany',14,'view_comapany'),(57,'Can add country',15,'add_country'),(58,'Can change country',15,'change_country'),(59,'Can delete country',15,'delete_country'),(60,'Can view country',15,'view_country'),(61,'Can add department',16,'add_department'),(62,'Can change department',16,'change_department'),(63,'Can delete department',16,'delete_department'),(64,'Can view department',16,'view_department'),(65,'Can add designation',17,'add_designation'),(66,'Can change designation',17,'change_designation'),(67,'Can delete designation',17,'delete_designation'),(68,'Can view designation',17,'view_designation'),(69,'Can add district',18,'add_district'),(70,'Can change district',18,'change_district'),(71,'Can delete district',18,'delete_district'),(72,'Can view district',18,'view_district'),(73,'Can add hospitaldetails',19,'add_hospitaldetails'),(74,'Can change hospitaldetails',19,'change_hospitaldetails'),(75,'Can delete hospitaldetails',19,'delete_hospitaldetails'),(76,'Can view hospitaldetails',19,'view_hospitaldetails'),(77,'Can add invoice error log',20,'add_invoiceerrorlog'),(78,'Can change invoice error log',20,'change_invoiceerrorlog'),(79,'Can delete invoice error log',20,'delete_invoiceerrorlog'),(80,'Can view invoice error log',20,'view_invoiceerrorlog'),(81,'Can add item category',21,'add_itemcategory'),(82,'Can change item category',21,'change_itemcategory'),(83,'Can delete item category',21,'delete_itemcategory'),(84,'Can view item category',21,'view_itemcategory'),(85,'Can add menuheadingdetails',22,'add_menuheadingdetails'),(86,'Can change menuheadingdetails',22,'change_menuheadingdetails'),(87,'Can delete menuheadingdetails',22,'delete_menuheadingdetails'),(88,'Can view menuheadingdetails',22,'view_menuheadingdetails'),(89,'Can add prescription',23,'add_prescription'),(90,'Can change prescription',23,'change_prescription'),(91,'Can delete prescription',23,'delete_prescription'),(92,'Can view prescription',23,'view_prescription'),(93,'Can add role',24,'add_role'),(94,'Can change role',24,'change_role'),(95,'Can delete role',24,'delete_role'),(96,'Can view role',24,'view_role'),(97,'Can add staffdetails',25,'add_staffdetails'),(98,'Can change staffdetails',25,'change_staffdetails'),(99,'Can delete staffdetails',25,'delete_staffdetails'),(100,'Can view staffdetails',25,'view_staffdetails'),(101,'Can add state',26,'add_state'),(102,'Can change state',26,'change_state'),(103,'Can delete state',26,'delete_state'),(104,'Can view state',26,'view_state'),(105,'Can add status',27,'add_status'),(106,'Can change status',27,'change_status'),(107,'Can delete status',27,'delete_status'),(108,'Can view status',27,'view_status'),(109,'Can add storedetails',28,'add_storedetails'),(110,'Can change storedetails',28,'change_storedetails'),(111,'Can delete storedetails',28,'delete_storedetails'),(112,'Can view storedetails',28,'view_storedetails'),(113,'Can add supplier',29,'add_supplier'),(114,'Can change supplier',29,'change_supplier'),(115,'Can delete supplier',29,'delete_supplier'),(116,'Can view supplier',29,'view_supplier'),(117,'Can add taxmaster',30,'add_taxmaster'),(118,'Can change taxmaster',30,'change_taxmaster'),(119,'Can delete taxmaster',30,'delete_taxmaster'),(120,'Can view taxmaster',30,'view_taxmaster'),(121,'Can add treatment_master',31,'add_treatment_master'),(122,'Can change treatment_master',31,'change_treatment_master'),(123,'Can delete treatment_master',31,'delete_treatment_master'),(124,'Can view treatment_master',31,'view_treatment_master'),(125,'Can add equipment_master',32,'add_equipment_master'),(126,'Can change equipment_master',32,'change_equipment_master'),(127,'Can delete equipment_master',32,'delete_equipment_master'),(128,'Can view equipment_master',32,'view_equipment_master'),(129,'Can add item subcategory',33,'add_itemsubcategory'),(130,'Can change item subcategory',33,'change_itemsubcategory'),(131,'Can delete item subcategory',33,'delete_itemsubcategory'),(132,'Can view item subcategory',33,'view_itemsubcategory'),(133,'Can add medical report file',34,'add_medicalreportfile'),(134,'Can change medical report file',34,'change_medicalreportfile'),(135,'Can delete medical report file',34,'delete_medicalreportfile'),(136,'Can view medical report file',34,'view_medicalreportfile'),(137,'Can add medicinemaster',35,'add_medicinemaster'),(138,'Can change medicinemaster',35,'change_medicinemaster'),(139,'Can delete medicinemaster',35,'delete_medicinemaster'),(140,'Can view medicinemaster',35,'view_medicinemaster'),(141,'Can add itemaster',36,'add_itemaster'),(142,'Can change itemaster',36,'change_itemaster'),(143,'Can delete itemaster',36,'delete_itemaster'),(144,'Can view itemaster',36,'view_itemaster'),(145,'Can add menudetails',37,'add_menudetails'),(146,'Can change menudetails',37,'change_menudetails'),(147,'Can delete menudetails',37,'delete_menudetails'),(148,'Can view menudetails',37,'view_menudetails'),(149,'Can add package_deatils',38,'add_package_deatils'),(150,'Can change package_deatils',38,'change_package_deatils'),(151,'Can delete package_deatils',38,'delete_package_deatils'),(152,'Can view package_deatils',38,'view_package_deatils'),(153,'Can add patient_details',39,'add_patient_details'),(154,'Can change patient_details',39,'change_patient_details'),(155,'Can delete patient_details',39,'delete_patient_details'),(156,'Can view patient_details',39,'view_patient_details'),(157,'Can add obstretichistory',40,'add_obstretichistory'),(158,'Can change obstretichistory',40,'change_obstretichistory'),(159,'Can delete obstretichistory',40,'delete_obstretichistory'),(160,'Can view obstretichistory',40,'view_obstretichistory'),(161,'Can add obg history',41,'add_obghistory'),(162,'Can change obg history',41,'change_obghistory'),(163,'Can delete obg history',41,'delete_obghistory'),(164,'Can view obg history',41,'view_obghistory'),(165,'Can add nextreatmentdetailsmaster',42,'add_nextreatmentdetailsmaster'),(166,'Can change nextreatmentdetailsmaster',42,'change_nextreatmentdetailsmaster'),(167,'Can delete nextreatmentdetailsmaster',42,'delete_nextreatmentdetailsmaster'),(168,'Can view nextreatmentdetailsmaster',42,'view_nextreatmentdetailsmaster'),(169,'Can add menustralhistory',43,'add_menustralhistory'),(170,'Can change menustralhistory',43,'change_menustralhistory'),(171,'Can delete menustralhistory',43,'delete_menustralhistory'),(172,'Can view menustralhistory',43,'view_menustralhistory'),(173,'Can add medication',44,'add_medication'),(174,'Can change medication',44,'change_medication'),(175,'Can delete medication',44,'delete_medication'),(176,'Can view medication',44,'view_medication'),(177,'Can add med_ history',45,'add_med_history'),(178,'Can change med_ history',45,'change_med_history'),(179,'Can delete med_ history',45,'delete_med_history'),(180,'Can view med_ history',45,'view_med_history'),(181,'Can add labinvestigation',46,'add_labinvestigation'),(182,'Can change labinvestigation',46,'change_labinvestigation'),(183,'Can delete labinvestigation',46,'delete_labinvestigation'),(184,'Can view labinvestigation',46,'view_labinvestigation'),(185,'Can add hopresentillness',47,'add_hopresentillness'),(186,'Can change hopresentillness',47,'change_hopresentillness'),(187,'Can delete hopresentillness',47,'delete_hopresentillness'),(188,'Can view hopresentillness',47,'view_hopresentillness'),(189,'Can add hopastillness',48,'add_hopastillness'),(190,'Can change hopastillness',48,'change_hopastillness'),(191,'Can delete hopastillness',48,'delete_hopastillness'),(192,'Can view hopastillness',48,'view_hopastillness'),(193,'Can add generalphysicalexamination',49,'add_generalphysicalexamination'),(194,'Can change generalphysicalexamination',49,'change_generalphysicalexamination'),(195,'Can delete generalphysicalexamination',49,'delete_generalphysicalexamination'),(196,'Can view generalphysicalexamination',49,'view_generalphysicalexamination'),(197,'Can add family history',50,'add_familyhistory'),(198,'Can change family history',50,'change_familyhistory'),(199,'Can delete family history',50,'delete_familyhistory'),(200,'Can view family history',50,'view_familyhistory'),(201,'Can add doctorprescription',51,'add_doctorprescription'),(202,'Can change doctorprescription',51,'change_doctorprescription'),(203,'Can delete doctorprescription',51,'delete_doctorprescription'),(204,'Can view doctorprescription',51,'view_doctorprescription'),(205,'Can add differentialdiagnosis',52,'add_differentialdiagnosis'),(206,'Can change differentialdiagnosis',52,'change_differentialdiagnosis'),(207,'Can delete differentialdiagnosis',52,'delete_differentialdiagnosis'),(208,'Can view differentialdiagnosis',52,'view_differentialdiagnosis'),(209,'Can add dietary history',53,'add_dietaryhistory'),(210,'Can change dietary history',53,'change_dietaryhistory'),(211,'Can delete dietary history',53,'delete_dietaryhistory'),(212,'Can view dietary history',53,'view_dietaryhistory'),(213,'Can add diet_ chart',54,'add_diet_chart'),(214,'Can change diet_ chart',54,'change_diet_chart'),(215,'Can delete diet_ chart',54,'delete_diet_chart'),(216,'Can view diet_ chart',54,'view_diet_chart'),(217,'Can add diagnosis',55,'add_diagnosis'),(218,'Can change diagnosis',55,'change_diagnosis'),(219,'Can delete diagnosis',55,'delete_diagnosis'),(220,'Can view diagnosis',55,'view_diagnosis'),(221,'Can add dashvidhpariksha',56,'add_dashvidhpariksha'),(222,'Can change dashvidhpariksha',56,'change_dashvidhpariksha'),(223,'Can delete dashvidhpariksha',56,'delete_dashvidhpariksha'),(224,'Can view dashvidhpariksha',56,'view_dashvidhpariksha'),(225,'Can add complaints',57,'add_complaints'),(226,'Can change complaints',57,'change_complaints'),(227,'Can delete complaints',57,'delete_complaints'),(228,'Can view complaints',57,'view_complaints'),(229,'Can add ashtavidhpariksha',58,'add_ashtavidhpariksha'),(230,'Can change ashtavidhpariksha',58,'change_ashtavidhpariksha'),(231,'Can delete ashtavidhpariksha',58,'delete_ashtavidhpariksha'),(232,'Can view ashtavidhpariksha',58,'view_ashtavidhpariksha'),(233,'Can add patient_history',59,'add_patient_history'),(234,'Can change patient_history',59,'change_patient_history'),(235,'Can delete patient_history',59,'delete_patient_history'),(236,'Can view patient_history',59,'view_patient_history'),(237,'Can add personal history',60,'add_personalhistory'),(238,'Can change personal history',60,'change_personalhistory'),(239,'Can delete personal history',60,'delete_personalhistory'),(240,'Can view personal history',60,'view_personalhistory'),(241,'Can add personal historyold',61,'add_personalhistoryold'),(242,'Can change personal historyold',61,'change_personalhistoryold'),(243,'Can delete personal historyold',61,'delete_personalhistoryold'),(244,'Can view personal historyold',61,'view_personalhistoryold'),(245,'Can add phy_ sys_ examination',62,'add_phy_sys_examination'),(246,'Can change phy_ sys_ examination',62,'change_phy_sys_examination'),(247,'Can delete phy_ sys_ examination',62,'delete_phy_sys_examination'),(248,'Can view phy_ sys_ examination',62,'view_phy_sys_examination'),(249,'Can add preliminarydata',63,'add_preliminarydata'),(250,'Can change preliminarydata',63,'change_preliminarydata'),(251,'Can delete preliminarydata',63,'delete_preliminarydata'),(252,'Can view preliminarydata',63,'view_preliminarydata'),(253,'Can add prescriptiont',64,'add_prescriptiont'),(254,'Can change prescriptiont',64,'change_prescriptiont'),(255,'Can delete prescriptiont',64,'delete_prescriptiont'),(256,'Can view prescriptiont',64,'view_prescriptiont'),(257,'Can add record_ sheet',65,'add_record_sheet'),(258,'Can change record_ sheet',65,'change_record_sheet'),(259,'Can delete record_ sheet',65,'delete_record_sheet'),(260,'Can view record_ sheet',65,'view_record_sheet'),(261,'Can add reorderleveldetails',66,'add_reorderleveldetails'),(262,'Can change reorderleveldetails',66,'change_reorderleveldetails'),(263,'Can delete reorderleveldetails',66,'delete_reorderleveldetails'),(264,'Can view reorderleveldetails',66,'view_reorderleveldetails'),(265,'Can add menumanagement',67,'add_menumanagement'),(266,'Can change menumanagement',67,'change_menumanagement'),(267,'Can delete menumanagement',67,'delete_menumanagement'),(268,'Can view menumanagement',67,'view_menumanagement'),(269,'Can add sampraptighataka',68,'add_sampraptighataka'),(270,'Can change sampraptighataka',68,'change_sampraptighataka'),(271,'Can delete sampraptighataka',68,'delete_sampraptighataka'),(272,'Can view sampraptighataka',68,'view_sampraptighataka'),(273,'Can add staffallocation',69,'add_staffallocation'),(274,'Can change staffallocation',69,'change_staffallocation'),(275,'Can delete staffallocation',69,'delete_staffallocation'),(276,'Can view staffallocation',69,'view_staffallocation'),(277,'Can add purchaseorderheader',70,'add_purchaseorderheader'),(278,'Can change purchaseorderheader',70,'change_purchaseorderheader'),(279,'Can delete purchaseorderheader',70,'delete_purchaseorderheader'),(280,'Can view purchaseorderheader',70,'view_purchaseorderheader'),(281,'Can add invoicemaster',71,'add_invoicemaster'),(282,'Can change invoicemaster',71,'change_invoicemaster'),(283,'Can delete invoicemaster',71,'delete_invoicemaster'),(284,'Can view invoicemaster',71,'view_invoicemaster'),(285,'Can add grnheader',72,'add_grnheader'),(286,'Can change grnheader',72,'change_grnheader'),(287,'Can delete grnheader',72,'delete_grnheader'),(288,'Can view grnheader',72,'view_grnheader'),(289,'Can add dailyreportforop',73,'add_dailyreportforop'),(290,'Can change dailyreportforop',73,'change_dailyreportforop'),(291,'Can delete dailyreportforop',73,'delete_dailyreportforop'),(292,'Can view dailyreportforop',73,'view_dailyreportforop'),(293,'Can add creditdetailsmaster',74,'add_creditdetailsmaster'),(294,'Can change creditdetailsmaster',74,'change_creditdetailsmaster'),(295,'Can delete creditdetailsmaster',74,'delete_creditdetailsmaster'),(296,'Can view creditdetailsmaster',74,'view_creditdetailsmaster'),(297,'Can add consultationinvdetails',75,'add_consultationinvdetails'),(298,'Can change consultationinvdetails',75,'change_consultationinvdetails'),(299,'Can delete consultationinvdetails',75,'delete_consultationinvdetails'),(300,'Can view consultationinvdetails',75,'view_consultationinvdetails'),(301,'Can add roleassign',76,'add_roleassign'),(302,'Can change roleassign',76,'change_roleassign'),(303,'Can delete roleassign',76,'delete_roleassign'),(304,'Can view roleassign',76,'view_roleassign'),(305,'Can add daily treatmentdetails',77,'add_dailytreatmentdetails'),(306,'Can change daily treatmentdetails',77,'change_dailytreatmentdetails'),(307,'Can delete daily treatmentdetails',77,'delete_dailytreatmentdetails'),(308,'Can view daily treatmentdetails',77,'view_dailytreatmentdetails'),(309,'Can add appointments',78,'add_appointments'),(310,'Can change appointments',78,'change_appointments'),(311,'Can delete appointments',78,'delete_appointments'),(312,'Can view appointments',78,'view_appointments'),(313,'Can add stock edit logtabl',79,'add_stockeditlogtabl'),(314,'Can change stock edit logtabl',79,'change_stockeditlogtabl'),(315,'Can delete stock edit logtabl',79,'delete_stockeditlogtabl'),(316,'Can view stock edit logtabl',79,'view_stockeditlogtabl'),(317,'Can add physicalstockdetails',80,'add_physicalstockdetails'),(318,'Can change physicalstockdetails',80,'change_physicalstockdetails'),(319,'Can delete physicalstockdetails',80,'delete_physicalstockdetails'),(320,'Can view physicalstockdetails',80,'view_physicalstockdetails'),(321,'Can add invoicechild',81,'add_invoicechild'),(322,'Can change invoicechild',81,'change_invoicechild'),(323,'Can delete invoicechild',81,'delete_invoicechild'),(324,'Can view invoicechild',81,'view_invoicechild'),(325,'Can add creditdetailschild',82,'add_creditdetailschild'),(326,'Can change creditdetailschild',82,'change_creditdetailschild'),(327,'Can delete creditdetailschild',82,'delete_creditdetailschild'),(328,'Can view creditdetailschild',82,'view_creditdetailschild'),(329,'Can add systematic examination',83,'add_systematicexamination'),(330,'Can change systematic examination',83,'change_systematicexamination'),(331,'Can delete systematic examination',83,'delete_systematicexamination'),(332,'Can view systematic examination',83,'view_systematicexamination'),(333,'Can add treatment',84,'add_treatment'),(334,'Can change treatment',84,'change_treatment'),(335,'Can delete treatment',84,'delete_treatment'),(336,'Can view treatment',84,'view_treatment'),(337,'Can add treatment_ chart',85,'add_treatment_chart'),(338,'Can change treatment_ chart',85,'change_treatment_chart'),(339,'Can delete treatment_ chart',85,'delete_treatment_chart'),(340,'Can view treatment_ chart',85,'view_treatment_chart'),(341,'Can add nextreatmentdetailschild',86,'add_nextreatmentdetailschild'),(342,'Can change nextreatmentdetailschild',86,'change_nextreatmentdetailschild'),(343,'Can delete nextreatmentdetailschild',86,'delete_nextreatmentdetailschild'),(344,'Can view nextreatmentdetailschild',86,'view_nextreatmentdetailschild'),(345,'Can add treatmentadvised',87,'add_treatmentadvised'),(346,'Can change treatmentadvised',87,'change_treatmentadvised'),(347,'Can delete treatmentadvised',87,'delete_treatmentadvised'),(348,'Can view treatmentadvised',87,'view_treatmentadvised'),(349,'Can add treatmentinvoicemaster',88,'add_treatmentinvoicemaster'),(350,'Can change treatmentinvoicemaster',88,'change_treatmentinvoicemaster'),(351,'Can delete treatmentinvoicemaster',88,'delete_treatmentinvoicemaster'),(352,'Can view treatmentinvoicemaster',88,'view_treatmentinvoicemaster'),(353,'Can add treatmentinvoicechild',89,'add_treatmentinvoicechild'),(354,'Can change treatmentinvoicechild',89,'change_treatmentinvoicechild'),(355,'Can delete treatmentinvoicechild',89,'delete_treatmentinvoicechild'),(356,'Can view treatmentinvoicechild',89,'view_treatmentinvoicechild'),(357,'Can add triggeraftersalereturn',90,'add_triggeraftersalereturn'),(358,'Can change triggeraftersalereturn',90,'change_triggeraftersalereturn'),(359,'Can delete triggeraftersalereturn',90,'delete_triggeraftersalereturn'),(360,'Can view triggeraftersalereturn',90,'view_triggeraftersalereturn'),(361,'Can add unitdt',91,'add_unitdt'),(362,'Can change unitdt',91,'change_unitdt'),(363,'Can delete unitdt',91,'delete_unitdt'),(364,'Can view unitdt',91,'view_unitdt'),(365,'Can add triggerupdate_purchaseorderchild',92,'add_triggerupdate_purchaseorderchild'),(366,'Can change triggerupdate_purchaseorderchild',92,'change_triggerupdate_purchaseorderchild'),(367,'Can delete triggerupdate_purchaseorderchild',92,'delete_triggerupdate_purchaseorderchild'),(368,'Can view triggerupdate_purchaseorderchild',92,'view_triggerupdate_purchaseorderchild'),(369,'Can add triggerforstock',93,'add_triggerforstock'),(370,'Can change triggerforstock',93,'change_triggerforstock'),(371,'Can delete triggerforstock',93,'delete_triggerforstock'),(372,'Can view triggerforstock',93,'view_triggerforstock'),(373,'Can add triggerforafterupdatestock',94,'add_triggerforafterupdatestock'),(374,'Can change triggerforafterupdatestock',94,'change_triggerforafterupdatestock'),(375,'Can delete triggerforafterupdatestock',94,'delete_triggerforafterupdatestock'),(376,'Can view triggerforafterupdatestock',94,'view_triggerforafterupdatestock'),(377,'Can add stockentry physicalstockdetails',95,'add_stockentryphysicalstockdetails'),(378,'Can change stockentry physicalstockdetails',95,'change_stockentryphysicalstockdetails'),(379,'Can delete stockentry physicalstockdetails',95,'delete_stockentryphysicalstockdetails'),(380,'Can view stockentry physicalstockdetails',95,'view_stockentryphysicalstockdetails'),(381,'Can add purchaseorderchild',96,'add_purchaseorderchild'),(382,'Can change purchaseorderchild',96,'change_purchaseorderchild'),(383,'Can delete purchaseorderchild',96,'delete_purchaseorderchild'),(384,'Can view purchaseorderchild',96,'view_purchaseorderchild'),(385,'Can add grnchild',97,'add_grnchild'),(386,'Can change grnchild',97,'change_grnchild'),(387,'Can delete grnchild',97,'delete_grnchild'),(388,'Can view grnchild',97,'view_grnchild'),(389,'Can add vitals',98,'add_vitals'),(390,'Can change vitals',98,'change_vitals'),(391,'Can delete vitals',98,'delete_vitals'),(392,'Can view vitals',98,'view_vitals'),(393,'Can add vyadhipariksha',99,'add_vyadhipariksha'),(394,'Can change vyadhipariksha',99,'change_vyadhipariksha'),(395,'Can delete vyadhipariksha',99,'delete_vyadhipariksha'),(396,'Can view vyadhipariksha',99,'view_vyadhipariksha'),(397,'Can add sourcedetails',100,'add_sourcedetails'),(398,'Can change sourcedetails',100,'change_sourcedetails'),(399,'Can delete sourcedetails',100,'delete_sourcedetails'),(400,'Can view sourcedetails',100,'view_sourcedetails'),(401,'Can add enquiry',101,'add_enquiry'),(402,'Can change enquiry',101,'change_enquiry'),(403,'Can delete enquiry',101,'delete_enquiry'),(404,'Can view enquiry',101,'view_enquiry'),(405,'Can add followup',102,'add_followup'),(406,'Can change followup',102,'change_followup'),(407,'Can delete followup',102,'delete_followup'),(408,'Can view followup',102,'view_followup'),(409,'Can add nex doctor prescription',103,'add_nexdoctorprescription'),(410,'Can change nex doctor prescription',103,'change_nexdoctorprescription'),(411,'Can delete nex doctor prescription',103,'delete_nexdoctorprescription'),(412,'Can view nex doctor prescription',103,'view_nexdoctorprescription'),(413,'Can add medication entry',104,'add_medicationentry'),(414,'Can change medication entry',104,'change_medicationentry'),(415,'Can delete medication entry',104,'delete_medicationentry'),(416,'Can view medication entry',104,'view_medicationentry'),(417,'Can add casehistory error log',105,'add_casehistoryerrorlog'),(418,'Can change casehistory error log',105,'change_casehistoryerrorlog'),(419,'Can delete casehistory error log',105,'delete_casehistoryerrorlog'),(420,'Can view casehistory error log',105,'view_casehistoryerrorlog'),(421,'Can add diet',106,'add_diet'),(422,'Can change diet',106,'change_diet'),(423,'Can delete diet',106,'delete_diet'),(424,'Can view diet',106,'view_diet'),(425,'Can add medicalfollowup',107,'add_medicalfollowup'),(426,'Can change medicalfollowup',107,'change_medicalfollowup'),(427,'Can delete medicalfollowup',107,'delete_medicalfollowup'),(428,'Can view medicalfollowup',107,'view_medicalfollowup'),(429,'Can add clairveda case history',108,'add_clairvedacasehistory'),(430,'Can change clairveda case history',108,'change_clairvedacasehistory'),(431,'Can delete clairveda case history',108,'delete_clairvedacasehistory'),(432,'Can view clairveda case history',108,'view_clairvedacasehistory'),(433,'Can add clairveda follow up',109,'add_clairvedafollowup'),(434,'Can change clairveda follow up',109,'change_clairvedafollowup'),(435,'Can delete clairveda follow up',109,'delete_clairvedafollowup'),(436,'Can view clairveda follow up',109,'view_clairvedafollowup'),(437,'Can add clairveda follow up report',110,'add_clairvedafollowupreport'),(438,'Can change clairveda follow up report',110,'change_clairvedafollowupreport'),(439,'Can delete clairveda follow up report',110,'delete_clairvedafollowupreport'),(440,'Can view clairveda follow up report',110,'view_clairvedafollowupreport'),(441,'Can add clairveda prescription',111,'add_clairvedaprescription'),(442,'Can change clairveda prescription',111,'change_clairvedaprescription'),(443,'Can delete clairveda prescription',111,'delete_clairvedaprescription'),(444,'Can view clairveda prescription',111,'view_clairvedaprescription'),(445,'Can add clairvedcasehistrypersonalinfo',112,'add_clairvedcasehistrypersonalinfo'),(446,'Can change clairvedcasehistrypersonalinfo',112,'change_clairvedcasehistrypersonalinfo'),(447,'Can delete clairvedcasehistrypersonalinfo',112,'delete_clairvedcasehistrypersonalinfo'),(448,'Can view clairvedcasehistrypersonalinfo',112,'view_clairvedcasehistrypersonalinfo'),(449,'Can add casehistoryresult report',113,'add_casehistoryresultreport'),(450,'Can change casehistoryresult report',113,'change_casehistoryresultreport'),(451,'Can delete casehistoryresult report',113,'delete_casehistoryresultreport'),(452,'Can view casehistoryresult report',113,'view_casehistoryresultreport'),(453,'Can add followupcalldetails',114,'add_followupcalldetails'),(454,'Can change followupcalldetails',114,'change_followupcalldetails'),(455,'Can delete followupcalldetails',114,'delete_followupcalldetails'),(456,'Can view followupcalldetails',114,'view_followupcalldetails'),(457,'Can add ippatientadmission',115,'add_ippatientadmission'),(458,'Can change ippatientadmission',115,'change_ippatientadmission'),(459,'Can delete ippatientadmission',115,'delete_ippatientadmission'),(460,'Can view ippatientadmission',115,'view_ippatientadmission'),(461,'Can add room_details',116,'add_room_details'),(462,'Can change room_details',116,'change_room_details'),(463,'Can delete room_details',116,'delete_room_details'),(464,'Can view room_details',116,'view_room_details'),(465,'Can add ippatientroombooking',117,'add_ippatientroombooking'),(466,'Can change ippatientroombooking',117,'change_ippatientroombooking'),(467,'Can delete ippatientroombooking',117,'delete_ippatientroombooking'),(468,'Can view ippatientroombooking',117,'view_ippatientroombooking'),(469,'Can add ipdailymedicine',118,'add_ipdailymedicine'),(470,'Can change ipdailymedicine',118,'change_ipdailymedicine'),(471,'Can delete ipdailymedicine',118,'delete_ipdailymedicine'),(472,'Can view ipdailymedicine',118,'view_ipdailymedicine'),(473,'Can add iptreatmentdetails',119,'add_iptreatmentdetails'),(474,'Can change iptreatmentdetails',119,'change_iptreatmentdetails'),(475,'Can delete iptreatmentdetails',119,'delete_iptreatmentdetails'),(476,'Can view iptreatmentdetails',119,'view_iptreatmentdetails'),(477,'Can add patient discharge',120,'add_patientdischarge'),(478,'Can change patient discharge',120,'change_patientdischarge'),(479,'Can delete patient discharge',120,'delete_patientdischarge'),(480,'Can view patient discharge',120,'view_patientdischarge'),(481,'Can add ip bill',121,'add_ipbill'),(482,'Can change ip bill',121,'change_ipbill'),(483,'Can delete ip bill',121,'delete_ipbill'),(484,'Can view ip bill',121,'view_ipbill'),(485,'Can add patient audit log',122,'add_patientauditlog'),(486,'Can change patient audit log',122,'change_patientauditlog'),(487,'Can delete patient audit log',122,'delete_patientauditlog'),(488,'Can view patient audit log',122,'view_patientauditlog'),(489,'Can add room change log',123,'add_roomchangelog'),(490,'Can change room change log',123,'change_roomchangelog'),(491,'Can delete room change log',123,'delete_roomchangelog'),(492,'Can view room change log',123,'view_roomchangelog'),(493,'Can add ipexpandedbillmedicinedetail',124,'add_ipexpandedbillmedicinedetail'),(494,'Can change ipexpandedbillmedicinedetail',124,'change_ipexpandedbillmedicinedetail'),(495,'Can delete ipexpandedbillmedicinedetail',124,'delete_ipexpandedbillmedicinedetail'),(496,'Can view ipexpandedbillmedicinedetail',124,'view_ipexpandedbillmedicinedetail'),(497,'Can add ipexpandedbillotherexpensesdetail',125,'add_ipexpandedbillotherexpensesdetail'),(498,'Can change ipexpandedbillotherexpensesdetail',125,'change_ipexpandedbillotherexpensesdetail'),(499,'Can delete ipexpandedbillotherexpensesdetail',125,'delete_ipexpandedbillotherexpensesdetail'),(500,'Can view ipexpandedbillotherexpensesdetail',125,'view_ipexpandedbillotherexpensesdetail'),(501,'Can add ip expanded bill room detail',126,'add_ipexpandedbillroomdetail'),(502,'Can change ip expanded bill room detail',126,'change_ipexpandedbillroomdetail'),(503,'Can delete ip expanded bill room detail',126,'delete_ipexpandedbillroomdetail'),(504,'Can view ip expanded bill room detail',126,'view_ipexpandedbillroomdetail'),(505,'Can add ipexpandedbilltreatmentdetail',127,'add_ipexpandedbilltreatmentdetail'),(506,'Can change ipexpandedbilltreatmentdetail',127,'change_ipexpandedbilltreatmentdetail'),(507,'Can delete ipexpandedbilltreatmentdetail',127,'delete_ipexpandedbilltreatmentdetail'),(508,'Can view ipexpandedbilltreatmentdetail',127,'view_ipexpandedbilltreatmentdetail'),(509,'Can add packagemaster',128,'add_packagemaster'),(510,'Can change packagemaster',128,'change_packagemaster'),(511,'Can delete packagemaster',128,'delete_packagemaster'),(512,'Can view packagemaster',128,'view_packagemaster'),(513,'Can add advice on discharge',129,'add_adviceondischarge'),(514,'Can change advice on discharge',129,'change_adviceondischarge'),(515,'Can delete advice on discharge',129,'delete_adviceondischarge'),(516,'Can view advice on discharge',129,'view_adviceondischarge'),(517,'Can add discharge medication procedure',130,'add_dischargemedicationprocedure'),(518,'Can change discharge medication procedure',130,'change_dischargemedicationprocedure'),(519,'Can delete discharge medication procedure',130,'delete_dischargemedicationprocedure'),(520,'Can view discharge medication procedure',130,'view_dischargemedicationprocedure'),(521,'Can add ip package payment',131,'add_ippackagepayment'),(522,'Can change ip package payment',131,'change_ippackagepayment'),(523,'Can delete ip package payment',131,'delete_ippackagepayment'),(524,'Can view ip package payment',131,'view_ippackagepayment'),(525,'Can add dashboardesign',132,'add_dashboardesign'),(526,'Can change dashboardesign',132,'change_dashboardesign'),(527,'Can delete dashboardesign',132,'delete_dashboardesign'),(528,'Can view dashboardesign',132,'view_dashboardesign'),(529,'Can add dashboardallocation',133,'add_dashboardallocation'),(530,'Can change dashboardallocation',133,'change_dashboardallocation'),(531,'Can delete dashboardallocation',133,'delete_dashboardallocation'),(532,'Can view dashboardallocation',133,'view_dashboardallocation'),(533,'Can add ip packageextend',134,'add_ippackageextend'),(534,'Can change ip packageextend',134,'change_ippackageextend'),(535,'Can delete ip packageextend',134,'delete_ippackageextend'),(536,'Can view ip packageextend',134,'view_ippackageextend'),(537,'Can add treatment room_details',135,'add_treatmentroom_details'),(538,'Can change treatment room_details',135,'change_treatmentroom_details'),(539,'Can delete treatment room_details',135,'delete_treatmentroom_details'),(540,'Can view treatment room_details',135,'view_treatmentroom_details'),(541,'Can add oppatienttreamentroombooking',136,'add_oppatienttreamentroombooking'),(542,'Can change oppatienttreamentroombooking',136,'change_oppatienttreamentroombooking'),(543,'Can delete oppatienttreamentroombooking',136,'delete_oppatienttreamentroombooking'),(544,'Can view oppatienttreamentroombooking',136,'view_oppatienttreamentroombooking'),(545,'Can add proceduredt',137,'add_proceduredt'),(546,'Can change proceduredt',137,'change_proceduredt'),(547,'Can delete proceduredt',137,'delete_proceduredt'),(548,'Can view proceduredt',137,'view_proceduredt'),(549,'Can add oppatienttimeslotbooking',138,'add_oppatienttimeslotbooking'),(550,'Can change oppatienttimeslotbooking',138,'change_oppatienttimeslotbooking'),(551,'Can delete oppatienttimeslotbooking',138,'delete_oppatienttimeslotbooking'),(552,'Can view oppatienttimeslotbooking',138,'view_oppatienttimeslotbooking'),(553,'Can add oppatientadmission',139,'add_oppatientadmission'),(554,'Can change oppatientadmission',139,'change_oppatientadmission'),(555,'Can delete oppatientadmission',139,'delete_oppatientadmission'),(556,'Can view oppatientadmission',139,'view_oppatientadmission'),(557,'Can add op package payment',140,'add_oppackagepayment'),(558,'Can change op package payment',140,'change_oppackagepayment'),(559,'Can delete op package payment',140,'delete_oppackagepayment'),(560,'Can view op package payment',140,'view_oppackagepayment'),(561,'Can add labtestchild',141,'add_labtestchild'),(562,'Can change labtestchild',141,'change_labtestchild'),(563,'Can delete labtestchild',141,'delete_labtestchild'),(564,'Can view labtestchild',141,'view_labtestchild'),(565,'Can add labtestmaster',142,'add_labtestmaster'),(566,'Can change labtestmaster',142,'change_labtestmaster'),(567,'Can delete labtestmaster',142,'delete_labtestmaster'),(568,'Can view labtestmaster',142,'view_labtestmaster'),(569,'Can add casehistorydietplan',143,'add_casehistorydietplan'),(570,'Can change casehistorydietplan',143,'change_casehistorydietplan'),(571,'Can delete casehistorydietplan',143,'delete_casehistorydietplan'),(572,'Can view casehistorydietplan',143,'view_casehistorydietplan'),(573,'Can add casehistorydoctorsnote',144,'add_casehistorydoctorsnote'),(574,'Can change casehistorydoctorsnote',144,'change_casehistorydoctorsnote'),(575,'Can delete casehistorydoctorsnote',144,'delete_casehistorydoctorsnote'),(576,'Can view casehistorydoctorsnote',144,'view_casehistorydoctorsnote'),(577,'Can add casehistorymedicalandsurgicalhistory',145,'add_casehistorymedicalandsurgicalhistory'),(578,'Can change casehistorymedicalandsurgicalhistory',145,'change_casehistorymedicalandsurgicalhistory'),(579,'Can delete casehistorymedicalandsurgicalhistory',145,'delete_casehistorymedicalandsurgicalhistory'),(580,'Can view casehistorymedicalandsurgicalhistory',145,'view_casehistorymedicalandsurgicalhistory'),(581,'Can add casehistorytreatmentplan',146,'add_casehistorytreatmentplan'),(582,'Can change casehistorytreatmentplan',146,'change_casehistorytreatmentplan'),(583,'Can delete casehistorytreatmentplan',146,'delete_casehistorytreatmentplan'),(584,'Can view casehistorytreatmentplan',146,'view_casehistorytreatmentplan'),(585,'Can add casehistryvitals',147,'add_casehistryvitals'),(586,'Can change casehistryvitals',147,'change_casehistryvitals'),(587,'Can delete casehistryvitals',147,'delete_casehistryvitals'),(588,'Can view casehistryvitals',147,'view_casehistryvitals'),(589,'Can add casehistorylabtestrequisition',148,'add_casehistorylabtestrequisition'),(590,'Can change casehistorylabtestrequisition',148,'change_casehistorylabtestrequisition'),(591,'Can delete casehistorylabtestrequisition',148,'delete_casehistorylabtestrequisition'),(592,'Can view casehistorylabtestrequisition',148,'view_casehistorylabtestrequisition'),(593,'Can add casehistorylabresult',149,'add_casehistorylabresult'),(594,'Can change casehistorylabresult',149,'change_casehistorylabresult'),(595,'Can delete casehistorylabresult',149,'delete_casehistorylabresult'),(596,'Can view casehistorylabresult',149,'view_casehistorylabresult'),(597,'Can add prescriptionnew',150,'add_prescriptionnew'),(598,'Can change prescriptionnew',150,'change_prescriptionnew'),(599,'Can delete prescriptionnew',150,'delete_prescriptionnew'),(600,'Can view prescriptionnew',150,'view_prescriptionnew'),(601,'Can add ratemaster',151,'add_ratemaster'),(602,'Can change ratemaster',151,'change_ratemaster'),(603,'Can delete ratemaster',151,'delete_ratemaster'),(604,'Can view ratemaster',151,'view_ratemaster'),(605,'Can add appointmentinvoicemaster',152,'add_appointmentinvoicemaster'),(606,'Can change appointmentinvoicemaster',152,'change_appointmentinvoicemaster'),(607,'Can delete appointmentinvoicemaster',152,'delete_appointmentinvoicemaster'),(608,'Can view appointmentinvoicemaster',152,'view_appointmentinvoicemaster'),(609,'Can add food',153,'add_food'),(610,'Can change food',153,'change_food'),(611,'Can delete food',153,'delete_food'),(612,'Can view food',153,'view_food'),(613,'Can add new invoice master',154,'add_newinvoicemaster'),(614,'Can change new invoice master',154,'change_newinvoicemaster'),(615,'Can delete new invoice master',154,'delete_newinvoicemaster'),(616,'Can view new invoice master',154,'view_newinvoicemaster'),(617,'Can add new invoice child',155,'add_newinvoicechild'),(618,'Can change new invoice child',155,'change_newinvoicechild'),(619,'Can delete new invoice child',155,'delete_newinvoicechild'),(620,'Can view new invoice child',155,'view_newinvoicechild'),(621,'Can add medicinemaster_new',156,'add_medicinemaster_new'),(622,'Can change medicinemaster_new',156,'change_medicinemaster_new'),(623,'Can delete medicinemaster_new',156,'delete_medicinemaster_new'),(624,'Can view medicinemaster_new',156,'view_medicinemaster_new'),(625,'Can add medicinemasterrate',157,'add_medicinemasterrate'),(626,'Can change medicinemasterrate',157,'change_medicinemasterrate'),(627,'Can delete medicinemasterrate',157,'delete_medicinemasterrate'),(628,'Can view medicinemasterrate',157,'view_medicinemasterrate'),(629,'Can add inventory category',158,'add_inventorycategory'),(630,'Can change inventory category',158,'change_inventorycategory'),(631,'Can delete inventory category',158,'delete_inventorycategory'),(632,'Can view inventory category',158,'view_inventorycategory'),(633,'Can add inventory company',159,'add_inventorycompany'),(634,'Can change inventory company',159,'change_inventorycompany'),(635,'Can delete inventory company',159,'delete_inventorycompany'),(636,'Can view inventory company',159,'view_inventorycompany'),(637,'Can add inventory invoice master',160,'add_inventoryinvoicemaster'),(638,'Can change inventory invoice master',160,'change_inventoryinvoicemaster'),(639,'Can delete inventory invoice master',160,'delete_inventoryinvoicemaster'),(640,'Can view inventory invoice master',160,'view_inventoryinvoicemaster'),(641,'Can add inventoryinvoicechild',161,'add_inventoryinvoicechild'),(642,'Can change inventoryinvoicechild',161,'change_inventoryinvoicechild'),(643,'Can delete inventoryinvoicechild',161,'delete_inventoryinvoicechild'),(644,'Can view inventoryinvoicechild',161,'view_inventoryinvoicechild'),(645,'Can add inventorymaster',162,'add_inventorymaster'),(646,'Can change inventorymaster',162,'change_inventorymaster'),(647,'Can delete inventorymaster',162,'delete_inventorymaster'),(648,'Can view inventorymaster',162,'view_inventorymaster'),(649,'Can add inventorystockdetails',163,'add_inventorystockdetails'),(650,'Can change inventorystockdetails',163,'change_inventorystockdetails'),(651,'Can delete inventorystockdetails',163,'delete_inventorystockdetails'),(652,'Can view inventorystockdetails',163,'view_inventorystockdetails'),(653,'Can add invreorderdetails',164,'add_invreorderdetails'),(654,'Can change invreorderdetails',164,'change_invreorderdetails'),(655,'Can delete invreorderdetails',164,'delete_invreorderdetails'),(656,'Can view invreorderdetails',164,'view_invreorderdetails'),(657,'Can add credit note master',165,'add_creditnotemaster'),(658,'Can change credit note master',165,'change_creditnotemaster'),(659,'Can delete credit note master',165,'delete_creditnotemaster'),(660,'Can view credit note master',165,'view_creditnotemaster'),(661,'Can add credit note child',166,'add_creditnotechild'),(662,'Can change credit note child',166,'change_creditnotechild'),(663,'Can delete credit note child',166,'delete_creditnotechild'),(664,'Can view credit note child',166,'view_creditnotechild'),(665,'Can add payment update log',167,'add_paymentupdatelog'),(666,'Can change payment update log',167,'change_paymentupdatelog'),(667,'Can delete payment update log',167,'delete_paymentupdatelog'),(668,'Can view payment update log',167,'view_paymentupdatelog'),(669,'Can add appointment fee rule',168,'add_appointmentfeerule'),(670,'Can change appointment fee rule',168,'change_appointmentfeerule'),(671,'Can delete appointment fee rule',168,'delete_appointmentfeerule'),(672,'Can view appointment fee rule',168,'view_appointmentfeerule'),(673,'Can add patient visit tracking',169,'add_patientvisittracking'),(674,'Can change patient visit tracking',169,'change_patientvisittracking'),(675,'Can delete patient visit tracking',169,'delete_patientvisittracking'),(676,'Can view patient visit tracking',169,'view_patientvisittracking'),(677,'Can add stock audit log',170,'add_stockauditlog'),(678,'Can change stock audit log',170,'change_stockauditlog'),(679,'Can delete stock audit log',170,'delete_stockauditlog'),(680,'Can view stock audit log',170,'view_stockauditlog'),(681,'Can add Pharmacy Invoice Payment Update Log',171,'add_paymentupdatelognew'),(682,'Can change Pharmacy Invoice Payment Update Log',171,'change_paymentupdatelognew'),(683,'Can delete Pharmacy Invoice Payment Update Log',171,'delete_paymentupdatelognew'),(684,'Can view Pharmacy Invoice Payment Update Log',171,'view_paymentupdatelognew'),(685,'Can add appointment edit log',172,'add_appointmenteditlog'),(686,'Can change appointment edit log',172,'change_appointmenteditlog'),(687,'Can delete appointment edit log',172,'delete_appointmenteditlog'),(688,'Can view appointment edit log',172,'view_appointmenteditlog'),(689,'Can add zoho access token',173,'add_zohoaccesstoken'),(690,'Can change zoho access token',173,'change_zohoaccesstoken'),(691,'Can delete zoho access token',173,'delete_zohoaccesstoken'),(692,'Can view zoho access token',173,'view_zohoaccesstoken'),(693,'Can add zoho config',174,'add_zohoconfig'),(694,'Can change zoho config',174,'change_zohoconfig'),(695,'Can delete zoho config',174,'delete_zohoconfig'),(696,'Can view zoho config',174,'view_zohoconfig'),(697,'Can add Assigned Appointment',175,'add_assignedappointments'),(698,'Can change Assigned Appointment',175,'change_assignedappointments'),(699,'Can delete Assigned Appointment',175,'delete_assignedappointments'),(700,'Can view Assigned Appointment',175,'view_assignedappointments'),(701,'Can add prescription edit log',176,'add_prescriptioneditlog'),(702,'Can change prescription edit log',176,'change_prescriptioneditlog'),(703,'Can delete prescription edit log',176,'delete_prescriptioneditlog'),(704,'Can view prescription edit log',176,'view_prescriptioneditlog'),(705,'Can add appointment fee',177,'add_appointmentfee'),(706,'Can change appointment fee',177,'change_appointmentfee'),(707,'Can delete appointment fee',177,'delete_appointmentfee'),(708,'Can view appointment fee',177,'view_appointmentfee'),(709,'Can add casehistorylabbill',178,'add_casehistorylabbill'),(710,'Can change casehistorylabbill',178,'change_casehistorylabbill'),(711,'Can delete casehistorylabbill',178,'delete_casehistorylabbill'),(712,'Can view casehistorylabbill',178,'view_casehistorylabbill'),(713,'Can add proforma invoice',179,'add_proformainvoice'),(714,'Can change proforma invoice',179,'change_proformainvoice'),(715,'Can delete proforma invoice',179,'delete_proformainvoice'),(716,'Can view proforma invoice',179,'view_proformainvoice'),(717,'Can add purchase order',180,'add_purchaseorder'),(718,'Can change purchase order',180,'change_purchaseorder'),(719,'Can delete purchase order',180,'delete_purchaseorder'),(720,'Can view purchase order',180,'view_purchaseorder'),(721,'Can add proforma item',181,'add_proformaitem'),(722,'Can change proforma item',181,'change_proformaitem'),(723,'Can delete proforma item',181,'delete_proformaitem'),(724,'Can view proforma item',181,'view_proformaitem'),(725,'Can add po item',182,'add_poitem'),(726,'Can change po item',182,'change_poitem'),(727,'Can delete po item',182,'delete_poitem'),(728,'Can view po item',182,'view_poitem'),(729,'Can add b2b invoice',183,'add_b2binvoice'),(730,'Can change b2b invoice',183,'change_b2binvoice'),(731,'Can delete b2b invoice',183,'delete_b2binvoice'),(732,'Can view b2b invoice',183,'view_b2binvoice'),(733,'Can add b2b invoice item',184,'add_b2binvoiceitem'),(734,'Can change b2b invoice item',184,'change_b2binvoiceitem'),(735,'Can delete b2b invoice item',184,'delete_b2binvoiceitem'),(736,'Can view b2b invoice item',184,'view_b2binvoiceitem'),(737,'Can add b2c invoice',185,'add_b2cinvoice'),(738,'Can change b2c invoice',185,'change_b2cinvoice'),(739,'Can delete b2c invoice',185,'delete_b2cinvoice'),(740,'Can view b2c invoice',185,'view_b2cinvoice'),(741,'Can add b2c invoice item',186,'add_b2cinvoiceitem'),(742,'Can change b2c invoice item',186,'change_b2cinvoiceitem'),(743,'Can delete b2c invoice item',186,'delete_b2cinvoiceitem'),(744,'Can view b2c invoice item',186,'view_b2cinvoiceitem'),(745,'Can add stock transfer',187,'add_stocktransfer'),(746,'Can change stock transfer',187,'change_stocktransfer'),(747,'Can delete stock transfer',187,'delete_stocktransfer'),(748,'Can view stock transfer',187,'view_stocktransfer'),(749,'Can add stock transfer item',188,'add_stocktransferitem'),(750,'Can change stock transfer item',188,'change_stocktransferitem'),(751,'Can delete stock transfer item',188,'delete_stocktransferitem'),(752,'Can view stock transfer item',188,'view_stocktransferitem'),(753,'Can add stock transfer log',189,'add_stocktransferlog'),(754,'Can change stock transfer log',189,'change_stocktransferlog'),(755,'Can delete stock transfer log',189,'delete_stocktransferlog'),(756,'Can view stock transfer log',189,'view_stocktransferlog'),(757,'Can add source lead',190,'add_sourcelead'),(758,'Can change source lead',190,'change_sourcelead'),(759,'Can delete source lead',190,'delete_sourcelead'),(760,'Can view source lead',190,'view_sourcelead'),(761,'Can add labunitmaster',191,'add_labunitmaster'),(762,'Can change labunitmaster',191,'change_labunitmaster'),(763,'Can delete labunitmaster',191,'delete_labunitmaster'),(764,'Can view labunitmaster',191,'view_labunitmaster'),(765,'Can add lab invoice master',192,'add_labinvoicemaster'),(766,'Can change lab invoice master',192,'change_labinvoicemaster'),(767,'Can delete lab invoice master',192,'delete_labinvoicemaster'),(768,'Can view lab invoice master',192,'view_labinvoicemaster'),(769,'Can add lab invoice child',193,'add_labinvoicechild'),(770,'Can change lab invoice child',193,'change_labinvoicechild'),(771,'Can delete lab invoice child',193,'delete_labinvoicechild'),(772,'Can view lab invoice child',193,'view_labinvoicechild'),(773,'Can add normal value master',194,'add_normalvaluemaster'),(774,'Can change normal value master',194,'change_normalvaluemaster'),(775,'Can delete normal value master',194,'delete_normalvaluemaster'),(776,'Can view normal value master',194,'view_normalvaluemaster'),(777,'Can add headerdetails',195,'add_headerdetails'),(778,'Can change headerdetails',195,'change_headerdetails'),(779,'Can delete headerdetails',195,'delete_headerdetails'),(780,'Can view headerdetails',195,'view_headerdetails'),(781,'Can add procedure master',196,'add_proceduremaster'),(782,'Can change procedure master',196,'change_proceduremaster'),(783,'Can delete procedure master',196,'delete_proceduremaster'),(784,'Can view procedure master',196,'view_proceduremaster'),(785,'Can add casuality invoice master',197,'add_casualityinvoicemaster'),(786,'Can change casuality invoice master',197,'change_casualityinvoicemaster'),(787,'Can delete casuality invoice master',197,'delete_casualityinvoicemaster'),(788,'Can view casuality invoice master',197,'view_casualityinvoicemaster'),(789,'Can add casuality invoice child',198,'add_casualityinvoicechild'),(790,'Can change casuality invoice child',198,'change_casualityinvoicechild'),(791,'Can delete casuality invoice child',198,'delete_casualityinvoicechild'),(792,'Can view casuality invoice child',198,'view_casualityinvoicechild'),(793,'Can add lab requisition master',199,'add_labrequisitionmaster'),(794,'Can change lab requisition master',199,'change_labrequisitionmaster'),(795,'Can delete lab requisition master',199,'delete_labrequisitionmaster'),(796,'Can view lab requisition master',199,'view_labrequisitionmaster'),(797,'Can add lab result master',200,'add_labresultmaster'),(798,'Can change lab result master',200,'change_labresultmaster'),(799,'Can delete lab result master',200,'delete_labresultmaster'),(800,'Can view lab result master',200,'view_labresultmaster'),(801,'Can add debit note',201,'add_debitnote'),(802,'Can change debit note',201,'change_debitnote'),(803,'Can delete debit note',201,'delete_debitnote'),(804,'Can view debit note',201,'view_debitnote'),(805,'Can add debit note item',202,'add_debitnoteitem'),(806,'Can change debit note item',202,'change_debitnoteitem'),(807,'Can delete debit note item',202,'delete_debitnoteitem'),(808,'Can view debit note item',202,'view_debitnoteitem'),(809,'Can add purchase invoice',203,'add_purchaseinvoice'),(810,'Can change purchase invoice',203,'change_purchaseinvoice'),(811,'Can delete purchase invoice',203,'delete_purchaseinvoice'),(812,'Can view purchase invoice',203,'view_purchaseinvoice'),(813,'Can add purchase invoice item',204,'add_purchaseinvoiceitem'),(814,'Can change purchase invoice item',204,'change_purchaseinvoiceitem'),(815,'Can delete purchase invoice item',204,'delete_purchaseinvoiceitem'),(816,'Can view purchase invoice item',204,'view_purchaseinvoiceitem'),(817,'Can add death register',205,'add_deathregister'),(818,'Can change death register',205,'change_deathregister'),(819,'Can delete death register',205,'delete_deathregister'),(820,'Can view death register',205,'view_deathregister'),(821,'Can add birth register',206,'add_birthregister'),(822,'Can change birth register',206,'change_birthregister'),(823,'Can delete birth register',206,'delete_birthregister'),(824,'Can view birth register',206,'view_birthregister'),(825,'Can add discount',207,'add_discount'),(826,'Can change discount',207,'change_discount'),(827,'Can delete discount',207,'delete_discount'),(828,'Can view discount',207,'view_discount'),(829,'Can add in out punch data',208,'add_inoutpunchdata'),(830,'Can change in out punch data',208,'change_inoutpunchdata'),(831,'Can delete in out punch data',208,'delete_inoutpunchdata'),(832,'Can view in out punch data',208,'view_inoutpunchdata'),(833,'Can add raw punch data',209,'add_rawpunchdata'),(834,'Can change raw punch data',209,'change_rawpunchdata'),(835,'Can delete raw punch data',209,'delete_rawpunchdata'),(836,'Can view raw punch data',209,'view_rawpunchdata'),(837,'Can add stock transfer order',210,'add_stocktransferorder'),(838,'Can change stock transfer order',210,'change_stocktransferorder'),(839,'Can delete stock transfer order',210,'delete_stocktransferorder'),(840,'Can view stock transfer order',210,'view_stocktransferorder'),(841,'Can add stock transfer order item',211,'add_stocktransferorderitem'),(842,'Can change stock transfer order item',211,'change_stocktransferorderitem'),(843,'Can delete stock transfer order item',211,'delete_stocktransferorderitem'),(844,'Can view stock transfer order item',211,'view_stocktransferorderitem'),(845,'Can add stock transferverficationmaster',212,'add_stocktransferverficationmaster'),(846,'Can change stock transferverficationmaster',212,'change_stocktransferverficationmaster'),(847,'Can delete stock transferverficationmaster',212,'delete_stocktransferverficationmaster'),(848,'Can view stock transferverficationmaster',212,'view_stocktransferverficationmaster'),(849,'Can add stock transferverification item',213,'add_stocktransferverificationitem'),(850,'Can change stock transferverification item',213,'change_stocktransferverificationitem'),(851,'Can delete stock transferverification item',213,'delete_stocktransferverificationitem'),(852,'Can view stock transferverification item',213,'view_stocktransferverificationitem'),(853,'Can add b2b restock status',214,'add_b2brestockstatus'),(854,'Can change b2b restock status',214,'change_b2brestockstatus'),(855,'Can delete b2b restock status',214,'delete_b2brestockstatus'),(856,'Can view b2b restock status',214,'view_b2brestockstatus'),(857,'Can add b2b restock item',215,'add_b2brestockitem'),(858,'Can change b2b restock item',215,'change_b2brestockitem'),(859,'Can delete b2b restock item',215,'delete_b2brestockitem'),(860,'Can view b2b restock item',215,'view_b2brestockitem'),(861,'Can add b2c restock status',216,'add_b2crestockstatus'),(862,'Can change b2c restock status',216,'change_b2crestockstatus'),(863,'Can delete b2c restock status',216,'delete_b2crestockstatus'),(864,'Can view b2c restock status',216,'view_b2crestockstatus'),(865,'Can add b2c restock item',217,'add_b2crestockitem'),(866,'Can change b2c restock item',217,'change_b2crestockitem'),(867,'Can delete b2c restock item',217,'delete_b2crestockitem'),(868,'Can view b2c restock item',217,'view_b2crestockitem'),(869,'Can add Supplier Purchase Order',218,'add_supplierpurchaseorder'),(870,'Can change Supplier Purchase Order',218,'change_supplierpurchaseorder'),(871,'Can delete Supplier Purchase Order',218,'delete_supplierpurchaseorder'),(872,'Can view Supplier Purchase Order',218,'view_supplierpurchaseorder'),(873,'Can add supplier purchase order item',219,'add_supplierpurchaseorderitem'),(874,'Can change supplier purchase order item',219,'change_supplierpurchaseorderitem'),(875,'Can delete supplier purchase order item',219,'delete_supplierpurchaseorderitem'),(876,'Can view supplier purchase order item',219,'view_supplierpurchaseorderitem'),(877,'Can add Asset Audit Log',220,'add_assetauditlog'),(878,'Can change Asset Audit Log',220,'change_assetauditlog'),(879,'Can delete Asset Audit Log',220,'delete_assetauditlog'),(880,'Can view Asset Audit Log',220,'view_assetauditlog'),(881,'Can add asset',221,'add_asset'),(882,'Can change asset',221,'change_asset'),(883,'Can delete asset',221,'delete_asset'),(884,'Can view asset',221,'view_asset'),(885,'Can add Asset Transfer',222,'add_assettransfer'),(886,'Can change Asset Transfer',222,'change_assettransfer'),(887,'Can delete Asset Transfer',222,'delete_assettransfer'),(888,'Can view Asset Transfer',222,'view_assettransfer'),(889,'Can add Goods Issue Note',223,'add_goodsissuenote'),(890,'Can change Goods Issue Note',223,'change_goodsissuenote'),(891,'Can delete Goods Issue Note',223,'delete_goodsissuenote'),(892,'Can view Goods Issue Note',223,'view_goodsissuenote'),(893,'Can add goods issue note item',224,'add_goodsissuenoteitem'),(894,'Can change goods issue note item',224,'change_goodsissuenoteitem'),(895,'Can delete goods issue note item',224,'delete_goodsissuenoteitem'),(896,'Can view goods issue note item',224,'view_goodsissuenoteitem'),(897,'Can add appointment status',225,'add_appointmentstatus'),(898,'Can change appointment status',225,'change_appointmentstatus'),(899,'Can delete appointment status',225,'delete_appointmentstatus'),(900,'Can view appointment status',225,'view_appointmentstatus'),(901,'Can add doctor revisit settings',226,'add_doctorrevisitsettings'),(902,'Can change doctor revisit settings',226,'change_doctorrevisitsettings'),(903,'Can delete doctor revisit settings',226,'delete_doctorrevisitsettings'),(904,'Can view doctor revisit settings',226,'view_doctorrevisitsettings'),(905,'Can add patient visit cycle log',227,'add_patientvisitcyclelog'),(906,'Can change patient visit cycle log',227,'change_patientvisitcyclelog'),(907,'Can delete patient visit cycle log',227,'delete_patientvisitcyclelog'),(908,'Can view patient visit cycle log',227,'view_patientvisitcyclelog'),(909,'Can add patient visit cycle appointment',228,'add_patientvisitcycleappointment'),(910,'Can change patient visit cycle appointment',228,'change_patientvisitcycleappointment'),(911,'Can delete patient visit cycle appointment',228,'delete_patientvisitcycleappointment'),(912,'Can view patient visit cycle appointment',228,'view_patientvisitcycleappointment');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_adviceondischarge`
--

LOCK TABLES `ayurvedaapp_adviceondischarge` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_adviceondischarge` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_adviceondischarge` VALUES (1,'dfgfhjkjhk',5),(2,'dsqfedqsf',6),(3,'sadvsf',7),(4,'wetwt',8),(5,'sdgs',9),(6,'sad',10),(7,'asfasf',11),(8,'zdvzxd',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmenteditlog`
--

LOCK TABLES `ayurvedaapp_appointmenteditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmenteditlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointmenteditlog` VALUES (1,'DELETE','TKNO202607132',1,'2026-07-13','Revisit','','','50',NULL,NULL,NULL,NULL,NULL,'0','2026-07-13','08:06:50.717136',NULL,5,1),(2,'DELETE','TKNO202607133',1,'2026-07-13','Revisit','','','50',NULL,NULL,NULL,NULL,NULL,'0','2026-07-13','09:14:48.564659',NULL,5,1),(3,'DELETE','TKNO202607155',1,'2026-07-15','Revisit','','','0',NULL,NULL,NULL,NULL,NULL,'0','2026-07-15','09:07:39.378631',NULL,5,1),(4,'DELETE','TKNO202607161',1,'2026-07-16','Revisit','','','0',NULL,NULL,NULL,NULL,NULL,'0','2026-07-15','09:58:38.394011',NULL,5,1),(5,'DELETE','TKNO202607161',1,'2026-07-16','Revisit','','','0',NULL,NULL,NULL,NULL,NULL,'0','2026-07-16','10:01:02.245815',NULL,5,1);
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
  `max_visit_count` int NOT NULL,
  `no_of_days` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ayurvedaapp_appointmentf_branch_id_doctor_id_visi_126562b3_uniq` (`branch_id`,`doctor_id`,`visit_type`),
  KEY `ayurvedaapp_appointm_doctor_id_0df83f96_fk_ayurvedaa` (`doctor_id`),
  CONSTRAINT `ayurvedaapp_appointm_branch_id_74e2065e_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_doctor_id_0df83f96_fk_ayurvedaa` FOREIGN KEY (`doctor_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmentfee`
--

LOCK TABLES `ayurvedaapp_appointmentfee` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmentfee` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointmentfee` VALUES (1,'Revisit',0.00,1,'2026-06-10 10:25:29.370518','2026-07-16 08:44:37.593260',5,1,1,4),(2,'Consultation',300.00,1,'2026-06-11 17:23:06.043514','2026-07-15 06:03:06.911291',5,193,1,20),(3,'Consultation',300.00,1,'2026-06-11 17:28:41.057578','2026-07-15 06:02:26.335042',5,195,1,20),(4,'Consultation',250.00,1,'2026-06-11 17:39:48.428325','2026-07-15 06:02:38.969337',5,196,1,20),(5,'Consultation',250.00,1,'2026-06-11 17:40:06.031980','2026-07-15 06:02:57.784851',5,197,1,20),(6,'Consultation',300.00,1,'2026-06-11 17:40:22.591172','2026-07-15 06:02:48.771964',5,198,1,20),(7,'Consultation',500.00,1,'2026-07-10 10:30:39.091873','2026-07-15 05:55:40.099754',5,1,1,9),(8,'Followup',100.00,1,'2026-07-10 10:30:51.847797','2026-07-16 08:45:01.025201',5,1,1,4),(9,'Consultation',500.00,1,'2026-07-16 07:03:34.558781','2026-07-16 07:04:53.135917',5,205,1,9),(10,'Followup',200.00,1,'2026-07-16 07:05:13.090301','2026-07-16 07:05:13.090301',5,205,1,4),(11,'Revisit',0.00,1,'2026-07-16 07:05:46.516983','2026-07-16 07:05:46.516983',5,205,1,3),(12,'Consultation',400.00,1,'2026-07-16 07:37:12.139664','2026-07-16 07:37:12.139664',5,174,1,10),(13,'Revisit',0.00,1,'2026-07-16 07:37:38.986842','2026-07-16 07:37:38.986842',5,174,1,4),(14,'Followup',100.00,1,'2026-07-16 07:38:04.858502','2026-07-16 07:38:04.858502',5,174,2,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmentinvoicemaster`
--

LOCK TABLES `ayurvedaapp_appointmentinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmentinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointmentinvoicemaster` VALUES (1,'TKNO202604091','2026-04-09',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(2,'TKNO202604092','2026-04-09',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(3,'TKNO202604093','2026-04-09',500,0,0,500,'jibin','1234567890','0','500','500',0,2,5,2,NULL,'Cash'),(4,'TKNO202605121','2026-05-12',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(5,'TKNO202605122','2026-05-12',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(6,'TKNO202605131','2026-05-13',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(7,'TKNO202605261','2026-05-26',500,0,0,500,'testpt','9999999999','0','500','500',0,198,5,2,NULL,'Cash'),(8,'TKNO202605262','2026-05-26',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(9,'TKNO202606041','2026-06-04',500,0,0,500,'Soumya','9867311453','0','500','500',0,199,5,2,NULL,'Cash'),(10,'TKNO202606081','2026-06-08',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(11,'TKNO202606111','2026-06-11',0,0,0,0,'Divya P','9847223855','0','0','0',0,200,5,2,NULL,'Cash'),(12,'TKNO202606121','2026-06-12',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(13,'TKNO202606122','2026-06-12',300,0,0,300,'POOJA','9847223855','0','300','300',0,205,5,2,NULL,'Cash'),(14,'TKNO202606123','2026-06-12',250,0,0,250,'THEERTHA','9847223855','0','250','250',0,206,5,2,NULL,'Gpay'),(15,'TKNO202606124','2026-06-12',300,0,0,300,'Divya P','9847223855','0','300','300',0,200,5,2,NULL,'Gpay'),(16,'TKNO202606125','2026-06-12',250,0,0,250,'divya','7736002944','0','250','250',0,208,5,2,NULL,'Cash'),(17,'TKNO202606161','2026-06-16',100,0,0,100,'test','9048272638','0','100','100',0,1,5,2,NULL,'Cash'),(18,'TKNO202606162','2026-06-16',300,0,0,300,'Babu','9847223855','0','300','300',0,211,5,2,NULL,'Gpay'),(19,'TKNO202606163','2026-06-16',300,0,0,300,'SARASWATHY','9847223855','0','300','300',0,215,5,2,NULL,'Cash'),(20,'TKNO202606171','2026-06-17',300,0,0,300,'BHAVYA','914875236','0','300','300',0,216,5,2,NULL,'Cash'),(21,'TKNO202606172','2026-06-17',300,0,0,300,'amutha','914875236','0','300','300',0,217,5,2,NULL,'Cash'),(22,'TKNO202606181','2026-06-18',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(23,'TKNO202606221','2026-06-22',500,0,0,500,'Ajesh PK','6789764567','0','500','500',0,222,5,2,NULL,'Cash'),(24,'TKNO202606231','2026-06-23',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(25,'TKNO202607021','2026-07-02',500,0,0,500,'Arun Kumar Test','8765432344','0','500','500',0,233,5,2,NULL,'Cash'),(26,'TKNO202607031','2026-07-03',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(27,'TKNO202607091','2026-07-09',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(28,'TKNO202607101','2026-07-10',0,0,0,0,'test','9048272638','0','0','0',0,1,5,2,NULL,'Cash'),(29,'TKNO202607131','2026-07-13',50,0,0,50,'test','9048272638','0','50','50',0,1,5,2,NULL,'Cash'),(30,'TKNO202607132','2026-07-13',50,0,0,50,'tester1','7854646745','0','50','50',0,218,5,2,NULL,'Cash'),(31,'TKNO202607132','2026-07-13',50,0,0,50,'test','9048272638','0','50','50',0,1,5,2,NULL,'Cash'),(32,'TKNO202607133','2026-07-13',50,0,0,50,'test','9048272638','0','50','50',0,1,5,2,NULL,'Cash'),(33,'TKNO202607141','2026-07-14',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(34,'TKNO202607141','2026-07-14',500,0,0,500,'testpt','9999999999','0','500','500',0,198,5,2,NULL,'Cash'),(35,'TKNO202607142','2026-07-14',500,0,0,500,'tester1','7854646745','0','500','500',0,218,5,2,NULL,'Cash'),(36,'TKNO202607151','2026-07-15',0,0,0,0,'tester1','7854646745','0','0','0',0,218,5,2,NULL,'Cash'),(37,'TKNO202607152','2026-07-15',0,0,0,0,'testpt','9999999999','0','0','0',0,198,5,2,NULL,'Cash'),(38,'TKNO202607153','2026-07-15',0,0,0,0,'testuser','9895310696','0','0','0',0,196,5,2,NULL,'Cash'),(39,'TKNO202607154','2026-07-15',500,0,0,500,'Prakash test','8765432451','0','500','500',0,219,5,2,NULL,'Cash'),(40,'TKNO202607155','2026-07-15',0,0,0,0,'testuser','9895310696','0','0','0',0,196,5,2,NULL,'Cash'),(41,'TKNO202607155','2026-07-15',500,0,0,500,'Javantest','8654764531','0','500','500',0,220,5,2,NULL,'Cash'),(42,'TKNO202607151','2026-07-15',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(43,'TKNO202607161','2026-07-16',0,0,0,0,'test','9048272638','0','0','0',0,1,5,2,NULL,'Cash'),(44,'TKNO202607161','2026-07-16',0,0,0,0,'test','9048272638','0','0','0',0,1,5,2,NULL,'Cash'),(45,'TKNO202607161','2026-07-16',0,0,0,0,'test','9048272638','0','0','0',0,1,5,2,NULL,'Cash'),(46,'TKNO202607162','2026-07-16',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(47,'TKNO202607163','2026-07-16',500,0,0,500,'Javantest','8654764531','0','500','500',0,220,5,2,NULL,'Cash'),(48,'TKNO202607164','2026-07-16',500,0,0,500,'testpatient123','1234567890','0','500','500',0,210,5,2,NULL,'Cash'),(49,'TKNO202607165','2026-07-16',0,0,0,0,'testpatient123','1234567890','0','0','0',0,210,5,2,NULL,'Cash'),(50,'TKNO202607166','2026-07-16',200,0,0,200,'testpatient123','1234567890','0','200','200',0,210,5,2,NULL,'Cash'),(51,'TKNO202607167','2026-07-16',500,0,0,500,'Prakash test','8765432451','0','500','500',0,219,5,2,NULL,'Cash'),(52,'TKNO202607168','2026-07-16',0,0,0,0,'Prakash test','8765432451','0','0','0',0,219,5,2,NULL,'Cash'),(53,'TKNO202607169','2026-07-16',200,0,0,200,'Prakash test','8765432451','0','200','200',0,219,5,2,NULL,'Cash'),(54,'TKNO2026071610','2026-07-16',500,0,0,500,'Arun Kumar Test','8765432344','0','500','500',0,233,5,2,NULL,'Cash'),(55,'TKNO2026071611','2026-07-16',0,0,0,0,'Arun Kumar Test','8765432344','0','0','0',0,233,5,2,NULL,'Cash'),(56,'TKNO2026071612','2026-07-16',200,0,0,200,'Arun Kumar Test','8765432344','0','200','200',0,233,5,2,NULL,'Cash'),(57,'TKNO2026071612','2026-07-16',200,0,0,200,'Arun Kumar Test','8765432344','0','200','200',0,233,5,2,NULL,'Cash'),(58,'TKNO2026071612','2026-07-16',200,0,0,200,'Arun Kumar Test','8765432344','0','200','200',0,233,5,2,NULL,'Cash'),(59,'TKNO2026071612','2026-07-16',200,0,0,200,'Arun Kumar Test','8765432344','0','200','200',0,233,5,2,NULL,'Cash'),(60,'TKNO2026071612','2026-07-16',200,0,0,200,'Arun Kumar Test','8765432344','0','200','200',0,233,5,2,NULL,'Cash'),(61,'TKNO2026071612','2026-07-16',200,0,0,200,'Arun Kumar Test','8765432344','0','200','200',0,233,5,2,NULL,'Cash'),(62,'TKNO2026071613','2026-07-16',0,0,0,0,'Javantest','8654764531','0','0','0',0,220,5,2,NULL,'Cash'),(63,'TKNO2026071614','2026-07-16',100,0,0,100,'Javantest','8654764531','0','100','100',0,220,5,2,NULL,'Cash');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointments`
--

LOCK TABLES `ayurvedaapp_appointments` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointments` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointments` VALUES (42,'TKNO202607151','2026-07-15','','2026-07-15',5,1,1,'','Consultation','500',30,NULL,NULL),(45,'TKNO202607161','2026-07-16','','2026-07-16',5,1,1,'87654321345','Revisit','0',30,NULL,NULL),(46,'TKNO202607162','2026-07-16','','2026-07-16',5,196,1,'','Consultation','500',30,NULL,NULL),(47,'TKNO202607163','2026-07-16','','2026-07-16',5,220,1,'','Consultation','500',30,NULL,NULL),(48,'TKNO202607164','2026-07-16','','2026-07-16',5,210,205,'','Consultation','500',30,NULL,NULL),(49,'TKNO202607165','2026-07-16','','2026-07-16',5,210,205,'','Revisit','0',30,NULL,NULL),(50,'TKNO202607166','2026-07-16','','2026-07-16',5,210,205,'','Followup','200',30,NULL,NULL),(51,'TKNO202607167','2026-07-16','','2026-07-16',5,219,205,'','Consultation','500',30,NULL,NULL),(52,'TKNO202607168','2026-07-16','','2026-07-16',5,219,205,'','Revisit','0',30,NULL,NULL),(53,'TKNO202607169','2026-07-16','','2026-07-16',5,219,205,'','Followup','200',30,NULL,NULL),(54,'TKNO2026071610','2026-07-16','','2026-07-16',5,233,205,'','Consultation','500',30,NULL,NULL),(55,'TKNO2026071611','2026-07-16','','2026-07-16',5,233,205,'','Revisit','0',30,NULL,NULL),(61,'TKNO2026071612','2026-07-16','','2026-07-16',5,233,205,'','Followup','200',30,NULL,NULL),(62,'TKNO2026071613','2026-07-16','','2026-07-16',5,220,1,'','Revisit','0',30,NULL,NULL),(63,'TKNO2026071614','2026-07-16','','2026-07-16',5,220,1,'','Followup','100',30,NULL,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_appointmentstatus`
--

DROP TABLE IF EXISTS `ayurvedaapp_appointmentstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_appointmentstatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status_name` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ayurvedaapp_appointmentstatus_status_name_f23e46df_uniq` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmentstatus`
--

LOCK TABLES `ayurvedaapp_appointmentstatus` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmentstatus` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointmentstatus` VALUES (1,'Consultation',1,'2026-07-10 10:04:47.822125','2026-07-10 10:04:47.822125'),(2,'Followup',1,'2026-07-10 10:05:49.598374','2026-07-10 10:05:49.598374'),(3,'Revisit',1,'2026-07-10 10:06:03.582162','2026-07-10 10:06:03.582162');
/*!40000 ALTER TABLE `ayurvedaapp_appointmentstatus` ENABLE KEYS */;
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
-- Table structure for table `ayurvedaapp_asset`
--

DROP TABLE IF EXISTS `ayurvedaapp_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_asset` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asset_id` varchar(100) NOT NULL,
  `asset_name` varchar(300) NOT NULL,
  `description` longtext,
  `purchase_date` date DEFAULT NULL,
  `asset_added_date` date NOT NULL,
  `manufacturer` varchar(300) DEFAULT NULL,
  `supplier` varchar(300) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `is_transferred` tinyint(1) NOT NULL,
  `is_under_maintenance` tinyint(1) NOT NULL,
  `is_disposed` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  `purchase_cost` decimal(12,2) NOT NULL,
  `physical_location` varchar(200) DEFAULT NULL,
  `added_by_id` bigint DEFAULT NULL,
  `branch_id` bigint NOT NULL,
  `deleted_by_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_id` (`asset_id`),
  KEY `ayurvedaapp_asset_added_by_id_c245bdc8_fk_ayurvedaa` (`added_by_id`),
  KEY `ayurvedaapp_asset_branch_id_c7c62eaa_fk_ayurvedaapp_branch_id` (`branch_id`),
  KEY `ayurvedaapp_asset_deleted_by_id_7f7d0546_fk_ayurvedaa` (`deleted_by_id`),
  CONSTRAINT `ayurvedaapp_asset_added_by_id_c245bdc8_fk_ayurvedaa` FOREIGN KEY (`added_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_asset_branch_id_c7c62eaa_fk_ayurvedaapp_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_asset_deleted_by_id_7f7d0546_fk_ayurvedaa` FOREIGN KEY (`deleted_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_asset`
--

LOCK TABLES `ayurvedaapp_asset` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_asset` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_asset` VALUES (1,'AST-29912','Building','ertyh','2026-07-09','2026-07-09','fwger','regr','transferred',0,1,0,0,'2026-07-09 04:27:56.635124','2026-07-09 05:55:31.140631',0,NULL,100000.00,'Floor 2',1,5,NULL),(2,'AST-29913','Vehicle','dgb','2026-07-09','2026-07-09','ABDC','AB Developers','transferred',0,1,0,0,'2026-07-09 05:28:04.871856','2026-07-09 05:28:56.983623',0,NULL,200000.00,'AB232,Kottayam ',1,5,NULL),(3,'AST-33032','Machineries','','2026-07-09','2026-07-09','Ibel','Polar','available',1,0,0,0,'2026-07-09 05:41:47.367892','2026-07-09 05:41:47.367892',0,NULL,600.00,'AK FT 45,Kochi',1,5,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_assetauditlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_assetauditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_assetauditlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(20) NOT NULL,
  `old_value` json DEFAULT NULL,
  `new_value` json DEFAULT NULL,
  `notes` longtext,
  `action_date` date NOT NULL,
  `action_time` time(6) NOT NULL,
  `asset_id` bigint NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `staff_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_assetaud_asset_id_bd7be110_fk_ayurvedaa` (`asset_id`),
  KEY `ayurvedaapp_assetaud_branch_id_cb797c90_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_assetaud_staff_id_cd3ae5d9_fk_ayurvedaa` (`staff_id`),
  CONSTRAINT `ayurvedaapp_assetaud_asset_id_bd7be110_fk_ayurvedaa` FOREIGN KEY (`asset_id`) REFERENCES `ayurvedaapp_asset` (`id`),
  CONSTRAINT `ayurvedaapp_assetaud_branch_id_cb797c90_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_assetaud_staff_id_cd3ae5d9_fk_ayurvedaa` FOREIGN KEY (`staff_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_assetauditlog`
--

LOCK TABLES `ayurvedaapp_assetauditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_assetauditlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_assetauditlog` VALUES (1,'create','{}','{}','Asset \'Building\' created','2026-07-09','04:27:56.643239',1,5,1),(2,'update','{\"branch\": 5, \"status\": \"available\", \"supplier\": \"regr\", \"asset_name\": \"Building\", \"description\": \"ertyh\", \"manufacturer\": \"fwger\", \"purchase_cost\": \"100.00\", \"purchase_date\": \"2026-07-09\", \"physical_location\": \"Floor 2\"}','{\"branch\": \"5\", \"status\": \"available\", \"supplier\": \"regr\", \"asset_name\": \"Building\", \"description\": \"ertyh\", \"manufacturer\": \"fwger\", \"purchase_cost\": \"100000\", \"purchase_date\": \"2026-07-09\", \"physical_location\": \"Floor 2\"}','Asset updated by Anu','2026-07-09','04:51:35.833783',1,5,1),(3,'transfer','{}','{}','Asset transferred to branch: PALAKKAD','2026-07-09','04:57:27.322409',1,5,1),(4,'update','{\"branch\": 5, \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": 14, \"transfer_date\": \"2026-07-09\", \"from_department\": 8}','{\"branch\": \"5\", \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": \"9\", \"transfer_date\": \"2026-07-09\", \"from_department\": \"8\"}','Transfer record updated by Anu','2026-07-09','05:18:01.203215',1,5,1),(5,'create','{}','{}','Asset \'Vehicle\' created','2026-07-09','05:28:04.879848',2,5,1),(6,'transfer','{}','{}','Asset transferred to branch: PALAKKAD','2026-07-09','05:28:56.991196',2,5,1),(7,'create','{}','{}','Asset \'Machineries\' created','2026-07-09','05:41:47.381860',3,5,1),(8,'update','{\"branch\": 5, \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": 9, \"transfer_date\": \"2026-07-09\", \"from_department\": 8}','{\"branch\": \"5\", \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": \"9\", \"transfer_date\": \"2026-07-09\", \"from_department\": \"8\"}','Transfer record updated by Anu','2026-07-09','05:46:45.642524',1,5,1),(9,'update','{\"branch\": 5, \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": 9, \"transfer_date\": \"2026-07-09\", \"from_department\": 8}','{\"branch\": \"5\", \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": \"8\", \"transfer_date\": \"2026-07-09\", \"from_department\": \"8\"}','Transfer record updated by Anu','2026-07-09','05:55:21.709067',1,5,1),(10,'update','{\"branch\": 5, \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": 8, \"transfer_date\": \"2026-07-09\", \"from_department\": 8}','{\"branch\": \"5\", \"remarks\": \"erere\", \"received_by\": \"BEVAN\", \"to_department\": \"9\", \"transfer_date\": \"2026-07-09\", \"from_department\": \"8\"}','Transfer record updated by Anu','2026-07-09','05:55:31.153266',1,5,1);
/*!40000 ALTER TABLE `ayurvedaapp_assetauditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_assettransfer`
--

DROP TABLE IF EXISTS `ayurvedaapp_assettransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_assettransfer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transfer_number` varchar(50) NOT NULL,
  `received_by` varchar(300) DEFAULT NULL,
  `transfer_date` date NOT NULL,
  `remarks` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_editable` tinyint(1) NOT NULL,
  `asset_id` bigint NOT NULL,
  `transferred_by_id` bigint DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `from_department_id` bigint DEFAULT NULL,
  `to_department_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transfer_number` (`transfer_number`),
  KEY `ayurvedaapp_assettra_transferred_by_id_2e697542_fk_ayurvedaa` (`transferred_by_id`),
  KEY `ayurvedaapp_assettransfer_asset_id_6aaafd1b` (`asset_id`),
  KEY `ayurvedaapp_assettra_branch_id_3f2fa7fb_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_assettra_from_department_id_26d03c5b_fk_ayurvedaa` (`from_department_id`),
  KEY `ayurvedaapp_assettra_to_department_id_9d0b140f_fk_ayurvedaa` (`to_department_id`),
  CONSTRAINT `ayurvedaapp_assettra_asset_id_6aaafd1b_fk_ayurvedaa` FOREIGN KEY (`asset_id`) REFERENCES `ayurvedaapp_asset` (`id`),
  CONSTRAINT `ayurvedaapp_assettra_branch_id_3f2fa7fb_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_assettra_from_department_id_26d03c5b_fk_ayurvedaa` FOREIGN KEY (`from_department_id`) REFERENCES `ayurvedaapp_department` (`id`),
  CONSTRAINT `ayurvedaapp_assettra_to_department_id_9d0b140f_fk_ayurvedaa` FOREIGN KEY (`to_department_id`) REFERENCES `ayurvedaapp_department` (`id`),
  CONSTRAINT `ayurvedaapp_assettra_transferred_by_id_2e697542_fk_ayurvedaa` FOREIGN KEY (`transferred_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_assettransfer`
--

LOCK TABLES `ayurvedaapp_assettransfer` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_assettransfer` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_assettransfer` VALUES (1,'TRF202607090001','BEVAN','2026-07-09','erere','2026-07-09 04:57:27.302428','2026-07-09 05:55:31.119511',1,1,1,5,8,9),(2,'TRF202607090002','SIVAN','2026-07-09','get','2026-07-09 05:28:56.979627','2026-07-09 05:28:56.979627',1,2,1,5,8,9);
/*!40000 ALTER TABLE `ayurvedaapp_assettransfer` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_baseunit`
--

LOCK TABLES `ayurvedaapp_baseunit` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_baseunit` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_baseunit` VALUES (48,'BTL','BTL'),(49,'STRP','STRP'),(50,'SACH','SACH'),(51,'NOS','NOS'),(52,'PKT','PKT'),(53,'0','0'),(54,'testunit','testunit'),(55,'MILLILITRE','ML'),(56,'GRAM','g'),(57,'TAB',''),(58,'CREAM',''),(59,'UNIT',''),(60,'SURGICAL ITEM',''),(61,'TEST KIT',''),(62,'BOTTLE',''),(63,'INJECTION',''),(64,'PCS',''),(65,'SACHET',''),(66,'CAPSULE',''),(67,'RESPULES',''),(68,'SOAP',''),(69,'SHEET',''),(70,'OINMENT',''),(71,'GARGLE',''),(72,'VACCINE',''),(73,'INHALER',''),(74,'POWDER',''),(75,'GEL',''),(76,'SUPPOSITORY',''),(77,'DIAPER',''),(78,'FIXATOR',''),(79,'PAD',''),(80,'TABLET',''),(81,'TA',''),(82,'SOLUTION',''),(83,'SANITARY PAD',''),(84,'BRACE','');
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
-- Table structure for table `ayurvedaapp_birthregister`
--

DROP TABLE IF EXISTS `ayurvedaapp_birthregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_birthregister` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gender` varchar(10) DEFAULT NULL,
  `date_time_of_birth` datetime(6) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `guardian_address` longtext,
  `guardian_phone` varchar(20) DEFAULT NULL,
  `special_instructions` longtext,
  `file_location` longtext,
  `is_new_born` tinyint(1) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `mother_id` bigint NOT NULL,
  `child_op` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ayurvedaapp_birthregister_child_op_08c3d110_uniq` (`child_op`),
  KEY `ayurvedaapp_birthreg_created_by_id_993f7798_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_birthreg_mother_id_60f3db16_fk_ayurvedaa` (`mother_id`),
  CONSTRAINT `ayurvedaapp_birthreg_created_by_id_993f7798_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_birthreg_mother_id_60f3db16_fk_ayurvedaa` FOREIGN KEY (`mother_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_birthregister`
--

LOCK TABLES `ayurvedaapp_birthregister` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_birthregister` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_birthregister` VALUES (1,'Male','2026-06-29 10:23:00.000000','3','O+','AKATHETHARA','9847223855','','',1,'','2026-06-29 04:55:45.263560','2026-06-29 04:55:45.263560',1,200,NULL),(2,'Male','2026-06-29 10:35:00.000000','3','A+','olavakkode,Palakkad','9847223855','','',1,'birth_reg_photos/07201c74-7fc7-4400-8c95-63f64cd0cced.png','2026-06-29 05:06:11.697704','2026-06-29 05:06:11.697704',1,209,NULL),(3,'Female','2026-06-29 15:17:00.000000','6','A+','test','9867311453','dsr','srs',1,'birth_reg_photos/24d52328-ffd4-43ec-9a7d-6b776f886ac4.jpeg','2026-06-29 06:47:25.222265','2026-06-29 06:47:25.222265',1,199,'BIRTH-20260629-0001'),(5,'Male','2026-06-29 15:20:00.000000','5','A+','test','9867311453','','',1,'birth_reg_photos/af3fe8bc-ea2c-4ac8-9d7c-594f9088f74a.jpeg','2026-06-29 07:52:14.748329','2026-06-29 07:52:14.748329',1,199,'BIRTH-20260629-0002'),(6,'Male','2026-06-29 16:26:00.000000','3','O+','KODUMB','9847311453','adq','efrer',1,'','2026-06-29 07:56:46.608913','2026-06-29 07:56:46.608913',1,202,'BIRTH-20260629-0003'),(7,'Male','2026-07-10 07:47:00.000000','4 kg','','test','9867311453','ffgfsg','sgs',1,'birth_reg_photos/df547913-a5f3-4e7c-ab67-467bd52de535.jpeg','2026-07-03 10:18:39.262644','2026-07-03 10:18:39.262644',1,199,'BIRTH-20260703-0001');
/*!40000 ALTER TABLE `ayurvedaapp_birthregister` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_branch`
--

LOCK TABLES `ayurvedaapp_branch` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_branch` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_branch` VALUES (5,'PALAKKAD','OPP.RAILWAY STATION OLAVAKKODE PALAKKAD-678002\r\n                     ','9999999990','','9999999999','gstno',NULL,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorydoctorsnote`
--

LOCK TABLES `ayurvedaapp_casehistorydoctorsnote` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorydoctorsnote` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorydoctorsnote` VALUES (1,'<p>tst</p>','2026-05-12',NULL,1,1),(2,'<p>bjhbkjnljnkjbkhbkbhj ujggg hihgihjl</p>','2026-06-22',NULL,1,222);
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
  `result` varchar(200) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorylabresult`
--

LOCK TABLES `ayurvedaapp_casehistorylabresult` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabresult` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorylabresult` VALUES (1,'12','13','','2026-05-12 16:19:50.196867',1,1,1,'2026-05-12',NULL,NULL,NULL),(3,'250','100.00 - 300.00 mg/dL','','2026-06-08 10:58:27.418601',196,1,2,'2026-06-08',NULL,NULL,NULL),(4,'14','10.00 - 500.00 mg/dL','','2026-06-08 11:02:12.067589',196,1,1,'2026-06-08',NULL,NULL,NULL),(5,'30','10.00 - 500.00 mg/dL','','2026-06-10 10:21:57.718651',196,1,1,'2026-06-10',2,1,'Normal'),(6,'250','100.00 - 300.00 mg/dL','','2026-06-10 10:21:57.720950',196,1,2,'2026-06-10',2,1,'Normal'),(7,'150','100.00 - 300.00 mg/dL','','2026-06-11 17:08:57.216494',196,1,2,'2026-06-11',3,2,'Normal'),(8,'35','10.00 - 500.00 mg/dL','','2026-06-11 17:08:57.220902',196,1,1,'2026-06-11',3,2,'Normal'),(9,'12','12','','2026-06-16 14:55:13.540989',1,1,3,'2026-06-16',5,3,NULL),(10,'12','10.00 - 500.00 mg/dL','','2026-06-16 15:05:46.521917',1,1,1,'2026-06-16',4,4,'Normal'),(11,'4','3.00 - 5.00 mill/comm','','2026-06-17 07:45:52.679897',196,1,5,'2026-06-17',11,5,NULL),(12,'5000','4000.00 - 11000.00 cmm','','2026-06-17 07:45:52.683894',196,1,4,'2026-06-17',11,5,NULL),(13,'35.0','45.0-75.0','','2026-06-18 04:20:45.684631',200,1,2,'2026-06-18',7,6,'Low'),(14,'Normal','Normal','','2026-06-18 04:20:45.684631',200,1,3,'2026-06-18',7,6,'Normal'),(15,'58','55-65','','2026-06-18 04:27:28.800843',1,1,2,'2026-06-18',13,7,'Normal'),(16,'Positive','Positive/Negative','','2026-06-18 04:27:28.800843',1,1,3,'2026-06-18',13,7,'Positive'),(17,'50','40.00 - 60.00 %','','2026-06-22 10:28:33.302889',222,1,9,'2026-06-22',15,8,'Normal'),(18,'5000','4000.00 - 11000.00 cmm','','2026-06-22 10:28:33.308881',222,1,4,'2026-06-22',15,8,'Normal'),(19,'80  mg/dL','60.00 - 80.00 mg/dL','','2026-07-01 12:30:03.577528',196,1,6,'2026-07-01',18,9,NULL),(20,'70  mg/dL','60.00 - 80.00 mg/dL','','2026-07-01 12:30:03.586645',196,1,3,'2026-07-01',18,9,NULL),(21,'70 mg/dL','60.00 - 80.00 mg/dL','','2026-07-01 12:30:03.596002',196,1,5,'2026-07-01',18,9,NULL),(22,'5000','4000.00 - 11000.00 cmm','','2026-07-02 04:24:02.149180',210,1,4,'2026-07-02',17,10,NULL),(23,'550 mmol/L','500 - 600 mmol/L','','2026-07-02 04:24:02.155175',210,1,56,'2026-07-02',17,10,NULL),(24,'140','135.00 - 145.00 mmol/L','','2026-07-02 04:24:02.159548',210,1,57,'2026-07-02',17,10,NULL),(25,'4','3.50 - 5.00 mmol/L','','2026-07-02 04:24:02.164541',210,1,58,'2026-07-02',17,10,NULL),(26,'98','96.00 - 110.00 mmol/L','','2026-07-02 04:24:02.168538',210,1,59,'2026-07-02',17,10,NULL),(27,'70','60.00 - 80.00 mg/dL','','2026-07-02 11:24:02.279245',196,1,6,'2026-07-02',21,11,NULL),(28,'70','60.00 - 80.00 mg/dL','','2026-07-02 11:24:02.283240',196,1,3,'2026-07-02',21,11,NULL),(29,'70','60.00 - 80.00 mg/dL','','2026-07-02 11:24:02.286240',196,1,5,'2026-07-02',21,11,NULL),(30,'5000','4000.00 - 11000.00 cmm','','2026-07-03 04:53:34.416794',210,1,4,'2026-07-03',22,12,NULL),(31,'75','60.00 - 80.00 mg/dL','','2026-07-03 04:53:34.420904',210,1,6,'2026-07-03',22,12,NULL),(32,'30','20.00 - 40.00 %','','2026-07-03 04:53:34.423904',210,1,10,'2026-07-03',22,12,NULL),(33,'30','20.00 - 40.00 %','','2026-07-03 04:53:34.427540',210,1,3,'2026-07-03',22,12,NULL),(34,'30','20.00 - 40.00 %','','2026-07-03 04:53:34.430538',210,1,5,'2026-07-03',22,12,NULL),(35,'12000 cmm','4000.00 - 11000.00 cmm','','2026-07-03 06:01:10.246699',1,1,4,'2026-07-03',14,13,NULL),(36,'70','60.00 - 80.00 mg/dL','','2026-07-03 06:03:01.981333',198,1,6,'2026-07-03',20,14,NULL),(37,'5','10.00 - 90.00 %','','2026-07-03 06:03:01.984192',198,1,3,'2026-07-03',20,14,NULL),(38,'90','10.00 - 70.00 %','','2026-07-03 06:03:01.992278',198,1,5,'2026-07-03',20,14,NULL),(39,'75','60.00 - 80.00 mg/dL','','2026-07-03 10:24:52.663677',196,1,6,'2026-07-03',24,15,'Normal'),(40,'75','10.00 - 90.00 %','','2026-07-03 10:24:52.667681',196,1,3,'2026-07-03',24,15,'Normal'),(41,'90','10.00 - 70.00 %','','2026-07-03 10:24:52.672026',196,1,5,'2026-07-03',24,15,'High'),(42,'60','10.00 - 90.00 %','','2026-07-03 11:08:29.007394',196,1,3,'2026-07-03',28,16,NULL),(43,'7000','4000.00 - 11000.00 cmm','','2026-07-03 11:08:29.011077',196,1,4,'2026-07-03',28,16,NULL),(44,'78','60.00 - 80.00 mg/dL','','2026-07-03 11:08:29.014072',196,1,6,'2026-07-03',28,16,NULL),(45,'7000','4000.00 - 11000.00 cmm','','2026-07-03 11:30:41.746128',200,1,4,'2026-07-03',6,17,NULL),(46,'70','10.00 - 90.00 %','','2026-07-03 11:31:07.813682',208,1,3,'2026-07-03',10,18,NULL),(47,'70','10.00 - 90.00 %','','2026-07-03 11:33:41.652460',200,1,2,'2026-07-03',29,19,NULL),(48,'80','10.00 - 90.00 %','','2026-07-03 11:33:41.655459',200,1,3,'2026-07-03',29,19,NULL),(49,'7000','4000.00 - 11000.00 cmm','','2026-07-03 11:45:28.020931',1,1,4,'2026-07-03',30,20,NULL),(50,'80','60.00 - 80.00 mg/dL','','2026-07-03 11:45:28.025131',1,1,6,'2026-07-03',30,20,NULL),(51,'70','10.00 - 90.00 %','','2026-07-03 11:45:28.029173',1,1,3,'2026-07-03',30,20,NULL),(52,'60','10.00 - 70.00 %','','2026-07-03 11:45:28.033168',1,1,5,'2026-07-03',30,20,NULL),(53,'90','10.00 - 90.00 %','','2026-07-03 11:45:28.036166',1,1,101,'2026-07-03',30,20,NULL),(54,'80','10.00 - 90.00 %','','2026-07-03 11:45:28.040162',1,1,103,'2026-07-03',30,20,NULL),(55,'85','10.00 - 90.00 %','','2026-07-03 11:45:28.044445',1,1,104,'2026-07-03',30,20,NULL),(66,'5000','4000.00 - 11000.00 cmm','','2026-07-04 06:58:47.574006',196,1,4,'2026-07-04',31,23,'Normal'),(67,'7000','4000.00 - 11000.00 cmm','','2026-07-04 06:58:47.576864',196,1,56,'2026-07-04',31,23,'Normal'),(68,'200','135.00 - 145.00 mmol/L','','2026-07-04 06:58:47.579861',196,1,57,'2026-07-04',31,23,'High'),(69,'4','3.50 - 5.00 mmol/L','','2026-07-04 06:58:47.582857',196,1,58,'2026-07-04',31,23,'Normal'),(70,'100','96.00 - 110.00 mmol/L','','2026-07-04 06:58:47.584856',196,1,59,'2026-07-04',31,23,'Normal'),(71,'6050','4000.00 - 11000.00 cmm','','2026-07-04 07:20:43.886072',1,1,4,'2026-07-04',32,24,'Normal'),(72,'80','10.00 - 90.00 %','','2026-07-04 07:20:43.889069',1,1,3,'2026-07-04',32,24,'Normal'),(73,'60','10.00 - 70.00 %','','2026-07-04 07:20:43.891068',1,1,5,'2026-07-04',32,24,'Normal'),(74,'80','45.00 - 150.00 U/L','','2026-07-04 07:24:36.218343',212,1,46,'2026-07-04',33,25,'Normal');
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
  `labtestgroup_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_handledbystaff_id_2e10d5c5_fk_ayurvedaa` (`handledbystaff_id`),
  KEY `ayurvedaapp_casehist_labtestchild_id_6ade0f7b_fk_ayurvedaa` (`labtestchild_id`),
  KEY `ayurvedaapp_casehist_patient_id_b53547fd_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_case_history_id_ebacbd2d_fk_ayurvedaa` (`case_history_id`),
  KEY `ayurvedaapp_casehist_invoice_id_7411756a_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_casehist_requisition_master_i_d77a30df_fk_ayurvedaa` (`requisition_master_id`),
  KEY `ayurvedaapp_casehist_labtestgroup_id_33eeed51_fk_ayurvedaa` (`labtestgroup_id`),
  CONSTRAINT `ayurvedaapp_casehist_case_history_id_ebacbd2d_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_handledbystaff_id_2e10d5c5_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_invoice_id_7411756a_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_labinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_labtestchild_id_6ade0f7b_fk_ayurvedaa` FOREIGN KEY (`labtestchild_id`) REFERENCES `ayurvedaapp_labtestchild` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_labtestgroup_id_33eeed51_fk_ayurvedaa` FOREIGN KEY (`labtestgroup_id`) REFERENCES `ayurvedaapp_labtestmaster` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_b53547fd_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_requisition_master_i_d77a30df_fk_ayurvedaa` FOREIGN KEY (`requisition_master_id`) REFERENCES `ayurvedaapp_labrequisitionmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorylabtestrequisition`
--

LOCK TABLES `ayurvedaapp_casehistorylabtestrequisition` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabtestrequisition` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorylabtestrequisition` VALUES (23,'2026-06-18 04:24:13.366569',1,1,2,1,13,13,NULL),(24,'2026-06-18 04:24:13.367722',1,1,3,1,13,13,NULL),(25,'2026-06-22 10:26:26.286200',NULL,1,9,222,15,14,NULL),(26,'2026-06-22 10:26:26.293194',NULL,1,4,222,15,14,NULL),(80,'2026-07-01 10:04:14.822049',NULL,1,4,210,17,32,NULL),(81,'2026-07-01 10:04:14.823047',NULL,1,56,210,17,32,7),(82,'2026-07-01 10:04:14.824048',NULL,1,57,210,17,32,7),(83,'2026-07-01 10:04:14.826045',NULL,1,58,210,17,32,7),(84,'2026-07-01 10:04:14.826045',NULL,1,59,210,17,32,7),(88,'2026-07-02 05:41:10.418922',NULL,1,6,198,20,34,NULL),(89,'2026-07-02 05:41:10.425031',NULL,1,3,198,20,34,4),(90,'2026-07-02 05:41:10.426160',NULL,1,5,198,20,34,4),(95,'2026-07-03 04:51:57.324774',NULL,1,4,210,22,36,NULL),(96,'2026-07-03 04:51:57.326772',NULL,1,6,210,22,36,NULL),(97,'2026-07-03 04:51:57.328771',NULL,1,10,210,22,36,NULL),(98,'2026-07-03 04:51:57.330771',NULL,1,3,210,22,36,4),(99,'2026-07-03 04:51:57.333768',NULL,1,5,210,22,36,4),(100,'2026-07-03 10:19:51.070586',NULL,1,9,196,23,37,NULL),(101,'2026-07-03 10:19:51.073662',NULL,1,59,196,23,37,NULL),(102,'2026-07-03 10:19:51.074658',NULL,1,66,196,23,37,NULL),(103,'2026-07-03 10:19:51.076656',NULL,1,101,196,23,37,11),(104,'2026-07-03 10:19:51.077656',NULL,1,103,196,23,37,11),(105,'2026-07-03 10:19:51.078654',NULL,1,104,196,23,37,11),(106,'2026-07-03 10:30:15.360884',NULL,1,84,219,25,38,NULL),(107,'2026-07-03 10:30:15.361880',NULL,1,3,219,25,38,4),(108,'2026-07-03 10:30:15.363886',NULL,1,5,219,25,38,4),(109,'2026-07-03 10:30:15.365444',NULL,1,101,219,25,38,11),(110,'2026-07-03 10:30:15.367189',NULL,1,103,219,25,38,11),(111,'2026-07-03 10:30:15.368185',NULL,1,104,219,25,38,11),(112,'2026-07-03 11:06:34.702763',NULL,1,3,196,28,39,NULL),(113,'2026-07-03 11:06:34.704761',NULL,1,4,196,28,39,NULL),(114,'2026-07-03 11:06:34.705760',NULL,1,6,196,28,39,NULL),(115,'2026-07-03 11:42:58.249797',1,1,4,1,30,40,NULL),(116,'2026-07-03 11:42:58.250794',1,1,6,1,30,40,NULL),(117,'2026-07-03 11:42:58.253289',1,1,3,1,30,40,4),(118,'2026-07-03 11:42:58.254286',1,1,5,1,30,40,4),(119,'2026-07-03 11:42:58.256288',1,1,101,1,30,40,11),(120,'2026-07-03 11:42:58.257287',1,1,103,1,30,40,11),(121,'2026-07-03 11:42:58.258283',1,1,104,1,30,40,11),(122,'2026-07-04 06:33:05.251224',NULL,1,4,196,31,41,NULL),(123,'2026-07-04 06:33:05.256220',NULL,1,56,196,31,41,7),(124,'2026-07-04 06:33:05.257220',NULL,1,57,196,31,41,7),(125,'2026-07-04 06:33:05.258218',NULL,1,58,196,31,41,7),(126,'2026-07-04 06:33:05.259217',NULL,1,59,196,31,41,7),(127,'2026-07-04 07:13:47.490979',1,1,4,1,32,42,NULL),(128,'2026-07-04 07:13:47.492976',1,1,3,1,32,42,4),(129,'2026-07-04 07:13:47.493976',1,1,5,1,32,42,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorymedicalandsurgicalhistory`
--

LOCK TABLES `ayurvedaapp_casehistorymedicalandsurgicalhistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorymedicalandsurgicalhistory` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorymedicalandsurgicalhistory` VALUES (1,'<p>tst</p>','<p>test</p>','2026-05-12',NULL,1,1),(2,'<p><strong><em>jhkhkjhlkjjm</em></strong></p>','<p>bjhbk iyjghkl</p>','2026-06-22',NULL,1,222);
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
  `deletedstatus` tinyint(1) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorytreatmentplan`
--

LOCK TABLES `ayurvedaapp_casehistorytreatmentplan` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorytreatmentplan` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorytreatmentplan` VALUES (3,'2026-06-22','1','2026-06-22',NULL,NULL,2,222,NULL,0),(4,'2026-07-02','1','2026-07-02',NULL,NULL,2,210,NULL,0),(5,'2026-07-02','1','2026-07-02',NULL,NULL,2,210,NULL,0),(6,'2026-07-02','2','2026-07-02',NULL,NULL,3,233,NULL,0),(7,'2026-07-02','1','2026-07-02',NULL,NULL,2,233,NULL,0),(8,'2026-07-02','1','2026-07-02',NULL,NULL,2,233,NULL,0),(9,'2026-07-02','1','2026-07-02',NULL,NULL,2,233,NULL,0),(10,'2026-07-02','1','2026-07-02',NULL,NULL,2,1,NULL,0),(11,'2026-07-02','1','2026-07-02',NULL,NULL,2,210,NULL,0),(12,'2026-07-02','1','2026-07-02',NULL,NULL,2,233,NULL,0),(13,'2026-07-02','1','2026-07-02',NULL,NULL,2,233,NULL,0),(14,'2026-07-03','1','2026-07-03',NULL,NULL,2,220,NULL,0),(15,'2026-07-03','1','2026-07-03',NULL,NULL,3,220,NULL,0),(16,'2026-07-03','1','2026-07-03',NULL,NULL,2,219,NULL,0);
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
  `pr` varchar(20) DEFAULT NULL,
  `spo2` varchar(20) DEFAULT NULL,
  `temperature` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_mrno_id_8543775e_fk_ayurvedaa` (`mrno_id`),
  KEY `ayurvedaapp_casehist_handledbystaff_id_65227d23_fk_ayurvedaa` (`handledbystaff_id`),
  CONSTRAINT `ayurvedaapp_casehist_handledbystaff_id_65227d23_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_mrno_id_8543775e_fk_ayurvedaa` FOREIGN KEY (`mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistryvitals`
--

LOCK TABLES `ayurvedaapp_casehistryvitals` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistryvitals` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistryvitals` VALUES (1,56,45,145,21.4,'135/75',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2026-05-12 16:25:33.866862',1,1,'75','',''),(2,56,67,145,31.87,'120/80',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2026-05-26 09:44:01.231917',1,1,'90','98','99'),(3,25,60,170,20.76,'120/90',0,0,0,0,0,0,0,0,0,0,0,0,0,'2026-06-17 07:50:25.910907',196,1,'85','98','99'),(4,52,60.2,170,20.83,'120/80',0,0,0,0,0,0,0,0,0,0,0,0,0,'2026-06-22 11:04:11.587289',222,1,'72','98.6','98.6');
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
  `procedure_name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `procedure_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `quantity` decimal(8,2) NOT NULL,
  `rate` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `is_completed` tinyint(1) NOT NULL,
  `invoice_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casualit_invoice_id_33338b49_fk_ayurvedaa` (`invoice_id`),
  CONSTRAINT `ayurvedaapp_casualit_invoice_id_33338b49_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_casualityinvoicemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casualityinvoicechild`
--

LOCK TABLES `ayurvedaapp_casualityinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casualityinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casualityinvoicechild` VALUES (1,1,'Observation Charge',NULL,NULL,1.00,500.00,500.00,0.00,0.00,NULL,0,1),(2,1,'Observation Charge',NULL,NULL,1.00,500.00,500.00,0.00,0.00,NULL,0,2),(3,1,'Observation Charge',NULL,NULL,1.00,600.00,600.00,0.00,0.00,NULL,0,3),(4,2,'X-ray Chest',NULL,NULL,1.00,300.00,300.00,0.00,0.00,NULL,0,3),(5,1,'Enemia Charge',NULL,NULL,1.00,130.00,130.00,0.00,0.00,NULL,0,4),(6,1,'Procedure Charge',NULL,NULL,1.00,50.00,50.00,0.00,0.00,NULL,0,5);
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
  `invoice_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `patient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `patient_mr_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `patient_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `patient_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `patient_age` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `patient_gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `discount` decimal(12,2) NOT NULL,
  `consultation_fee` decimal(10,2) NOT NULL,
  `registration_fee` decimal(10,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `payment_mode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casualityinvoicemaster`
--

LOCK TABLES `ayurvedaapp_casualityinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casualityinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casualityinvoicemaster` VALUES (1,'CAS-2026-06-0001','2026-06-08','testuser','MRNO202605121','9895310696','','','Male',500.00,0.00,0.00,0.00,0.00,0.00,500.00,'Cash','Paid','2026-06-08 11:05:46.649810','2026-06-10 10:18:43.625748',500.00,0.00,0.00,1,'2026-06-10 10:18:43.625622',5,1,1,2,196),(2,'CAS-2026-06-0002','2026-06-10','testuser','MRNO202605121','9895310696','','','Male',500.00,0.00,0.00,0.00,0.00,0.00,500.00,'Cash','Paid','2026-06-10 10:18:33.495708','2026-06-10 10:18:33.495726',500.00,0.00,0.00,0,NULL,5,NULL,1,2,196),(3,'CAS-2026-06-0003','2026-06-17','tester1','MRNO202606173','7854646745','Kottayam','56','Male',900.00,0.00,0.00,10.00,10.00,10.00,910.00,'Cash','Paid','2026-06-17 08:01:20.185222','2026-06-17 08:01:20.185222',910.00,0.00,0.00,0,NULL,5,NULL,1,2,218),(4,'CAS-2026-06-0004','2026-06-17','Javantest','MRNO202606175','8654764531','Ernakulam','35','Male',130.00,0.00,0.00,0.00,0.00,0.00,130.00,'Cash','Paid','2026-06-17 08:15:05.269432','2026-06-17 08:15:05.269432',130.00,0.00,0.00,0,NULL,5,NULL,1,2,220),(5,'CAS-2026-06-0005','2026-06-18','Rahul','MRNO202606181','9876543456','Ernakulam','45','Male',50.00,0.00,0.00,10.00,10.00,10.00,60.00,'Cash','Paid','2026-06-18 10:41:57.797762','2026-06-18 10:41:57.797762',60.00,0.00,0.00,0,NULL,5,NULL,1,2,221);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_comapany`
--

LOCK TABLES `ayurvedaapp_comapany` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_comapany` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_comapany` VALUES (146,'Test'),(147,'Autozone '),(148,'Erreka'),(149,'AJ'),(150,'Hikvision'),(151,'NAVANS'),(152,'INTEGRACE PVT LTD'),(153,'GLADSTONE PHARMA INDIA PVT.LTD'),(154,'TORRENT PHARMA'),(155,'DEFAULT COMPANY'),(156,'ARISTO LABORATORIES PVT.LTD'),(157,'NEON LABORATORIES PVT.LTD'),(158,'VERSATIL HEALTHCARE'),(159,'BHARAT SERUM AND VACCINES.LTD'),(160,'SHIELD HEALTHCARE'),(161,'APPLE LIFE SCIENCE PVT.LTD'),(162,'LIFE MANKIND PHARMA'),(163,'GLENMARK PHARMACEUTICAL'),(164,'CIPLA'),(165,'DR.REDDY LABORATORIES .LTD'),(166,'MEGASYS BIOTEK PVT,LTD'),(167,'GLAXOSMITHKLINE PHARMACEUTICAL.LTD'),(168,'ZUVENTUS HEALTHCARE.LTD'),(169,'SANOFI CONSUMER HEALTHCARE IND.LTD'),(170,'NEON'),(171,'IPCA LABORATORIES'),(172,'PRISTINE PEARL PHARMA VENTURES SDN BHD'),(173,'ALEMBIC PHARMACEUTICAL.LTD'),(174,'SUN PHARMA'),(175,'EVERLIVE'),(176,'ROMSONS'),(177,'SMITH&NEPHEW'),(178,'RANBAXY'),(179,'STAR MEDITEX'),(180,'G K SURGICAL'),(181,'MANKIND'),(182,'PFIZER LIMITED'),(183,'GALDERMA'),(184,'MEDGROW HEALTHCARE'),(185,'WIN MEDICARE'),(186,'GLAXO SMITH  KLIM'),(187,'BIOLOGICAL E LTD'),(188,'ZUVENTUS'),(189,'ASTREA'),(190,'ZYDUS LIFESCIENCES LTD'),(191,'BIOMIRRA BIOGENICS P LTD'),(192,'J B CHEMICALS &PHARMACEUTICALS LTD'),(193,'GLAXO SMITH  KLIM BIOLOGICALS'),(194,'JUGGAT PHARMA'),(195,'AIWAN'),(196,'HALBERD PHARMACEUTICAL&LAB'),(197,'NEON LABORATORES PVT'),(198,'CORONA REMEDIES LTD'),(199,'GLAXO SMITH KLIME'),(200,'KINSLEY'),(201,'GLENMARK'),(202,'BLISS GVS PHARMA'),(203,'SEVANA'),(204,'MICRO LAB'),(205,'INDOCO REMEDIES LTD'),(206,'BEREF PHARMACEUTICALS PVT'),(207,'INTAS PHARMACEUTICALS LTD'),(208,'NECTAR LIFESCIENCES LTD'),(209,'AKUMS DRUGS PHARMACEUTICALS LTD'),(210,'ROWES LIFE SCIENCES PVT LTD'),(211,'TORRENT'),(212,'ABBOTT'),(213,'APEX'),(214,'RHINE'),(215,'ARISTO PHARMACEUTICALS PVT'),(216,'OLYMPUS'),(217,'ICARUS'),(218,'GLAXO'),(219,'MEYER ORGANICS PVT LTD'),(220,'UNIVERSAL NUTRISCIENCE PVT LTD'),(221,'RAMARAJU SURGICAL COTTON'),(222,'PHARMED LTD'),(223,'ALEMBIC'),(224,'INDOCO'),(225,'ACULIFE'),(226,'ALKEM'),(227,'NUWINT HEALTHCARE PVT LTD'),(228,'AKESISS'),(229,'MACLEODS'),(230,'PHARM PRODUCTS'),(231,'ZYDUS HEALTHCARE LTD'),(232,'H&H PHARMACEUTICAL LTD'),(233,'FRANCO INDIAN PHARMACEUTICAL PVT LTD'),(234,'INNOVATIVE PHARMACEUTICAL PVT LTD'),(235,'NORESTEA PHARMACEUTICALPVTLTD'),(236,'DYNAMIC'),(237,'ANTHUS'),(238,'DR REDDY\"S'),(239,'ICON'),(240,'EMCURE'),(241,'AMAZZON'),(242,'OIMED'),(243,'TABLETS INDIA LTD'),(244,'USV PRIVATE LTD'),(245,'SCITECH SPECIALITIESPVT LTD'),(246,'ROWEZ'),(247,'EYSYS'),(248,'HEALTHWAY ASSOCIATE'),(249,'MMC'),(250,'HLL LIFECARE LTD'),(251,'SIGNORAH HEALTHCARE'),(252,'PHARMANOVOSPECIALITIES'),(253,'SERWIN PHARMACEUTICALS'),(254,'GLADSTONE PHARMA INDIA'),(255,'GLADSTONE'),(256,'SANOFI'),(257,'HETERO HEALTH CARE'),(258,'BHARAT SERUMS PVT'),(259,'SMITH MEDICALS'),(260,'JHONSON AND JHONSAN PVT LTD'),(261,'BANGALORE ANTIBIOTICS ANDBIOLOGICALS PVT LTD'),(262,'VIVIA DERMACARE'),(263,'PROCTER AND GAMBLE HEALTH LTD'),(264,'PROCTER AND GAMBLE'),(265,'CANIXA LIFE SCIENCE LTD'),(266,'NAVANI MEDITEX PVT LTD'),(267,'GINICS HEALTHCARE PVT LTD'),(268,'AUROBINDO PHARMA LTD'),(269,'ZEYYER'),(270,'HIGGS BOSON PHARMACEUTICALS'),(271,'WALLACE'),(272,'HETRO HEALTHCARE LTD'),(273,'EVASTEO PHARMACEUTICALS PVT LTD'),(274,'RUSCH'),(275,'INNOVATITVE PHARMACEUTICALS PVT LTD'),(276,'MSD PHARMACEUTICAL PVT LTD'),(277,'ZYDUS'),(278,'GLADSTONE PHARMA INDIA PVT LTD'),(279,'FRANCO INDIAN PHARMACEUTICAL'),(280,'DR REDDYS'),(281,'SAPHNIX LIFE SCIENCE'),(282,'SURGICARE'),(283,'BENTLY+REMINGEON PVT LTD'),(284,'HALBERD PHARMACEUTICALS'),(285,'ANCORA HEALTHCARE PVT LTD'),(286,'APEX LABORATORIES PVT LTD'),(287,'COMED CHEMICALS LTD'),(288,'MICRO LABS LTD'),(289,'HEGDE&HEGDE PHARMACEUTICAL'),(290,'TORRENT PHARMACEUTICALS LTD'),(291,'PRS PHARMACEUTICAL PVT  LTD'),(292,'CIPLA LTD BY GOLDEN CROSS PHARMA LTD'),(293,'AJANTA PHARMA'),(294,'AKUMS DRUGS&PHARMACEUTICALS LTD'),(295,'becton dickinson india pvt ltd'),(296,'hindustan syr and medical devices'),(297,'vasofix'),(298,'samarth'),(299,'clinical innovations'),(300,'vissco'),(301,'olmed'),(302,'bharat serums and vaccine ltd'),(303,'raptakos brett and co'),(304,'j b chem'),(305,'HI CURE BIOTECH'),(306,'SIGNORAH HEALTH CARE'),(307,'EVASTEO'),(308,'PEARL'),(309,'INNOVATIVE'),(310,'HETERO HEALTHCARE LTD'),(311,'HIMALAYA WELLNESS COMPANY'),(312,'PROCTER GAMBLEHEALTH LTD'),(313,'alexia'),(314,'RPG LIFE SCIENCES LTD'),(315,'BHARATH SERUM &VACCINES LTD'),(316,'INTAS'),(317,'ZEO PHARMACEUTICAL'),(318,'VETAS PHARMCEUTICAL'),(319,'AMSTEL LIFECARE PVT LTD'),(320,'FIGOMED HEALTHCARE PVT LTD'),(321,'TABLIZ LIFE SCIENCE LTD'),(322,'NORETSA PHARMACEUTICALS PVT LTD'),(323,'CROSSFORD HEALTHCARE'),(324,'MEDOPHARM'),(325,'ENTOD PHARMACEUTICAL'),(326,'BLUE CROSS LABORATORIES'),(327,'ARISTO'),(328,'OLMPUS'),(329,'ROSSMED LIFESCIENCE LTD'),(330,'SERUM INSTITUTE'),(331,'REDDYS'),(332,'AKUMETIS'),(333,'SCHULKE'),(334,'INTEGRACE'),(335,'BAYER ZYDUS PHARMA'),(336,'MITS HEALTH CARE LTD'),(337,'ETHICON'),(338,'TORRES REMEDIES'),(339,'ZIEO PHARMACEUTICALS PVT LTD'),(340,'MY PHARMA LABORATORIES'),(341,'NEW ASSOCIATED PHARMA'),(342,'GAMBLE HEALTH LTD'),(343,'PURE AND CURE HEALTHCARE PVT LTD'),(344,'TORRENT PHARMACEUTICALS'),(345,'DISPO VAN'),(346,'NEON LABORATORIES LTD'),(347,'AKUMS DRUG&PHARMACEUTICALS'),(348,'RAPTAKOS BRETT&CO LTD'),(349,'NICHEPHARM LIFESCIENCES PVT LTD'),(350,'PROCTER&GAMBLE HEALTH CARE'),(351,'INTAGRACE'),(352,'NOVO'),(353,'J B CHEMICAL'),(354,'MEDLIFE ENTERPRISES'),(355,'SYSTOPIC'),(356,'ORGANON'),(357,'HLL LIFECARE'),(358,'ABEL PHRMA'),(359,'lal remedies'),(360,'LACTONOVA NUTRIPHARM PVT LTD'),(361,'DR.REDDYS'),(362,'GEN BIOTEC'),(363,'BANGALORE ANTIBIOTICS AND BIOLOGICAL PVTLTD'),(364,'SEPTANOVA PHARMACEUTICAL'),(365,'ERIS'),(366,'SHIELD'),(367,'P&G'),(368,'WELBE LIFE SCIENCE'),(369,'FORCE INDIA PHARMA'),(370,'NAVANI'),(371,'ABOTT'),(372,'GLAXO SMITHKLIM'),(373,'HIMALAYA'),(374,'ALBERT DAVID LTD'),(375,'NICHEPHARML LIFE SCIENCES'),(376,'MEYER'),(377,'LUPIN'),(378,'ZYDUS HEALTHCARE'),(379,'AUROBINDO'),(380,'GINICS HEALTHCARE'),(381,'FOURRTS'),(382,'FOURTS'),(383,'LE RENON HEALTH CARE'),(384,'MARQUESS GENETICA'),(385,'SERUMINSTITUE OF INDIA'),(386,'PHARMED'),(387,'SCIENTIFIC AND SURGICAL'),(388,'CYTOGENIX PHARMACEUTICALS'),(389,'CYTOGENIC HEALTH CARE'),(390,'AJANTA'),(391,'SERWIN'),(392,'PINARC LIFE SCIENCES'),(393,'SURGIWEAR'),(394,'MANEESH PHARMACEUTICALS'),(395,'DYNA'),(396,'PENTAGON LABS'),(397,'DSA REMEDIES PVT LTD'),(398,'QUINCKE TYPE POINT'),(399,'JANSSEN'),(400,'KINSLEY LIFECARE PHARMA PVT LTD'),(401,'FRANCO INDIAN PHRMACEUTICAL'),(402,'GLASS VAN'),(403,'NEW CARE'),(404,'BETT PLUS'),(405,'BIO VACCNE'),(406,'HARVEEY'),(407,'TEXAS'),(408,'EZ LIFE'),(409,'ORDAIN HEALTHCARE'),(410,'SEPTANOVA PHARMCEUTICALS'),(411,'GYNAVISTA'),(412,'INTRALIFE'),(413,'SUN PHARAMA LABARATORIES LTD'),(414,'SERUM INSTITUTE OF INDIA'),(415,'HEALTHIUM MEDI TECH'),(416,'HEALTHIUM'),(417,'BHARAT BIOTECH'),(418,'STERKENPHARMA LTD'),(419,'JONSON&JONSON'),(420,'VERSATIL'),(421,'SAPHNIX LIFE CARE'),(422,'ABBOT'),(423,'TABLIZ LIFE SCIENCES PVT LTD'),(424,'GAMBLE HYGIENE AND HEALTH CARE'),(425,'JOHNSON&JOHNSON'),(426,'INNOVA'),(427,'SANTEVITA PHARMACO'),(428,'ZUVENTUS H'),(429,'SIGNORAH HEALTHARE'),(430,'GLADSTONE PHRMA INDIA PVT LTD'),(431,'ENTOD PHARMACEUTICALS LTD'),(432,'PROCTER&GAMBLE HOME PRODUCT PVT LTD'),(433,'PFIZER'),(434,'ZIEO PHARMACEUTICALPVT LTD'),(435,'IPCA'),(436,'ZEYYAR'),(437,'RAPTAKOS');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_creditnotechild`
--

LOCK TABLES `ayurvedaapp_creditnotechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_creditnotechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_creditnotechild` VALUES (7,'IV SET',1,202.5,5,202.5,'Return from Invoice INV26/270013',1,54,7),(8,'BABY KIT',1,340,5,340,'Return from Invoice INV26/270013',1,49,8),(9,'ENCORATE CHRONO 300',1,6.504,5,6.5,'Return from Invoice INV26/270019',1,64,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_creditnotemaster`
--

LOCK TABLES `ayurvedaapp_creditnotemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_creditnotemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_creditnotemaster` VALUES (7,'CN26/270001','2026-06-16','Return of items',192.86,9.64,202.5,'TEST','1234567',5,187,2,33),(8,'CN26/270002','2026-06-16','no need',323.81,16.19,340,'TEST','1234567',5,187,2,33),(9,'CN26/270003','2026-06-20','Return of items',6.19,0.31,6.5,'testpt','9999999999',5,1,2,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=1612 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dashboardallocation`
--

LOCK TABLES `ayurvedaapp_dashboardallocation` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dashboardallocation` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_dashboardallocation` VALUES (1271,'Assigned',1,21,10),(1272,'Assigned',2,21,11),(1273,'Assigned',3,21,12),(1274,'Assigned',4,21,13),(1275,'Assigned',5,21,14),(1276,'Assigned',6,21,15),(1277,'Assigned',7,21,16),(1278,'Assigned',8,21,18),(1279,'Assigned',9,21,19),(1280,'Assigned',10,21,20),(1281,'Assigned',11,21,21),(1282,'Assigned',12,21,22),(1283,'Assigned',13,21,26),(1284,'Assigned',14,21,25),(1285,'Assigned',15,21,27),(1286,'Assigned',16,21,28),(1287,'Assigned',17,21,35),(1288,'Assigned',18,21,36),(1289,'Assigned',19,21,37),(1290,'Assigned',20,21,39),(1291,'Assigned',21,21,40),(1292,'Assigned',22,21,41),(1293,'Assigned',23,21,42),(1294,'Assigned',24,21,43),(1295,'Assigned',25,21,38),(1296,'Assigned',26,21,24),(1418,'Assigned',1,26,18),(1419,'Assigned',2,26,19),(1420,'Assigned',3,26,20),(1421,'Assigned',4,26,21),(1422,'Assigned',5,26,23),(1423,'Assigned',6,26,33),(1424,'Assigned',7,26,36),(1476,'Assigned',1,27,19),(1477,'Assigned',2,27,18),(1478,'Assigned',3,27,16),(1479,'Assigned',4,27,25),(1480,'Assigned',5,27,36),(1481,'Assigned',6,27,21),(1530,'Assigned',1,15,10),(1531,'Assigned',2,15,11),(1532,'Assigned',3,15,26),(1533,'Assigned',4,15,28),(1534,'Assigned',5,15,12),(1535,'Assigned',6,15,13),(1536,'Assigned',7,15,14),(1537,'Assigned',8,15,44),(1538,'Assigned',1,25,13),(1539,'Assigned',2,25,14),(1540,'Assigned',3,25,16),(1541,'Assigned',4,25,15),(1542,'Assigned',5,25,18),(1543,'Assigned',6,25,19),(1544,'Assigned',7,25,20),(1545,'Assigned',8,25,21),(1546,'Assigned',9,25,22),(1547,'Assigned',10,25,23),(1548,'Assigned',11,25,24),(1549,'Assigned',12,25,25),(1550,'Assigned',13,25,26),(1551,'Assigned',14,25,27),(1552,'Assigned',15,25,28),(1553,'Assigned',16,25,29),(1554,'Assigned',17,25,31),(1555,'Assigned',18,25,32),(1556,'Assigned',19,25,33),(1557,'Assigned',20,25,34),(1558,'Assigned',21,25,35),(1559,'Assigned',22,25,36),(1560,'Assigned',23,25,37),(1561,'Assigned',24,25,38),(1562,'Assigned',25,25,39),(1563,'Assigned',26,25,40),(1564,'Assigned',27,25,41),(1565,'Assigned',28,25,42),(1566,'Assigned',29,25,43),(1567,'Assigned',30,25,10),(1568,'Assigned',31,25,11),(1569,'Assigned',32,25,12),(1590,'Assigned',1,1,10),(1591,'Assigned',2,1,11),(1592,'Assigned',3,1,12),(1593,'Assigned',4,1,13),(1594,'Assigned',5,1,14),(1595,'Assigned',6,1,16),(1596,'Assigned',7,1,18),(1597,'Assigned',8,1,19),(1598,'Assigned',9,1,20),(1599,'Assigned',10,1,21),(1600,'Assigned',11,1,22),(1601,'Assigned',12,1,25),(1602,'Assigned',13,1,26),(1603,'Assigned',14,1,23),(1604,'Assigned',15,1,28),(1605,'Assigned',16,1,33),(1606,'Assigned',17,1,36),(1607,'Assigned',18,1,41),(1608,'Assigned',19,1,44),(1609,'Assigned',20,1,43),(1610,'Assigned',21,1,45),(1611,'Assigned',1,28,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dashboardesign`
--

LOCK TABLES `ayurvedaapp_dashboardesign` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dashboardesign` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_dashboardesign` VALUES (10,'Patient Details','#95e9cce8','adminpatientdetailtable',1),(11,'Todays Appointments','#5C9EDD','todayappointment',1),(12,'Today Medical Follow up ','#7ac15c','todaymedicalfollowup',1),(13,'Today Enquiry Follow Up','#FFCD00','todayremaindertable',1),(14,'Daily Call Summary','#e54f16','enquirycalldetails',1),(15,'Treatment Record','#db2fa6','treatmentlistrecord',1),(16,'Treatment Invoice List','#e97dcd','treatmentlist',1),(18,'Pharmacy Invoice List','#474bc1','invlist',1),(19,'Expiring Within 6 Months','#c31515','expiredmedicine',1),(20,'Current Reorder List','#FFDD00','currentreorderlist',1),(21,'Daily Pharmacy Sale List','#78dddd','daily_sales_report',1),(22,'Treatment Room Booking OP','#FF90BB','treatment_booking_list',1),(23,'Branchwise Revenue','#5C9EDD','dailyrevenue_dashboard',1),(24,'Pharmacy Queue List','#007BFF','pharmacyqueue',1),(25,'Transaction History','#e97dcd','daily_transaction_report',1),(26,'Consultation Invoice ','#3238a8','appointment_invlist',1),(27,'Branch-wise Pharmacy Invoice','#0335fc','pharmacyinvoicereport',1),(28,'Prescription Print','#e97dcd','prescription_list',1),(29,'Lab Test Queue','#007BFF','todays_labtests',1),(31,'New tax Invoice List','#e97dcd','newtaxinvlist',1),(32,'Sale Report After Sept 22','#007BFF','salesreport',1),(33,'Branch Summary','#0335fc','branch_list',1),(34,'Millet Invoice List','Green','inventory_invlist',1),(35,'Appointment Payment Edit','#006992','appinvedit',1),(36,'HSN Report','#e97dcd','gst_report',1),(37,'Online Consultation','Orange','zoho_contacts_view',1),(38,'Millet Sales Report','gray','inventory_sales_report',1),(39,'Doctors Visit Rport','#007BFF','doctor_visit_report',1),(40,'Lab Report Count ','#F57799','labcountreport',1),(41,'Pending Pharmacy Invoice','#575799','pending_pharmacy_invoice_list',1),(42,'Lab Revenue','Green','lab_revenue',1),(43,'Doctor\'s Appointment Fee Management','Blue','appointment_fee_list',1),(44,'Lab Invoice List','blue','lab_invoice_list',1),(45,'Casuality Invoice List','Blue','casuality_invoice_list',1);
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
-- Table structure for table `ayurvedaapp_deathregister`
--

DROP TABLE IF EXISTS `ayurvedaapp_deathregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_deathregister` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unregistered_name` varchar(300) DEFAULT NULL,
  `unregistered_gender` varchar(20) DEFAULT NULL,
  `unregistered_age` varchar(20) DEFAULT NULL,
  `unregistered_address` longtext,
  `unregistered_phone` varchar(20) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `admission_datetime` datetime(6) DEFAULT NULL,
  `death_datetime` datetime(6) DEFAULT NULL,
  `consulting_doctor_id` bigint DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `booking_number` varchar(100) DEFAULT NULL,
  `citizen_id` varchar(100) DEFAULT NULL,
  `uhid_no` varchar(100) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `insurance_ref` varchar(100) DEFAULT NULL,
  `corporate_company` varchar(200) DEFAULT NULL,
  `staff_id` varchar(100) DEFAULT NULL,
  `privileged_customer_id` varchar(100) DEFAULT NULL,
  `aadhaar_number` varchar(12) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `registration_type` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `patient_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_deathreg_created_by_id_8748553f_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_deathreg_patient_id_b3bf392d_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_deathregister_consulting_doctor_id_a5fc174c` (`consulting_doctor_id`),
  CONSTRAINT `ayurvedaapp_deathreg_consulting_doctor_id_a5fc174c_fk_ayurvedaa` FOREIGN KEY (`consulting_doctor_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_deathreg_created_by_id_8748553f_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_deathreg_patient_id_b3bf392d_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_deathregister`
--

LOCK TABLES `ayurvedaapp_deathregister` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_deathregister` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_deathregister` VALUES (1,NULL,NULL,NULL,NULL,NULL,'R 122','2026-06-29 11:06:00.000000','2026-06-29 11:07:00.000000',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'death_reg_photos/1bebf866-0834-4e82-bd95-272ca81fb686.png','registered','2026-06-29 05:37:09.167539','2026-06-29 05:37:09.167539',1,219),(2,'K Jose Philip','Male',NULL,'','','R23','2026-06-29 09:16:00.000000','2026-06-29 11:16:00.000000',1,'2026-06-29','2026-06-29','qdsqw','qwewqe','qwewq','GENERAL','wqdqw','qwdqw','1','qwew','edqwewq','','unregistered','2026-06-29 05:46:21.189289','2026-06-29 05:46:21.189289',1,223),(3,'Reji Kumar','Male',NULL,'','','R123','2026-06-29 23:44:00.000000','2026-06-29 12:44:00.000000',1,'2026-06-29','2026-06-29','asddgfdg','dfgdft5645653','3435434','INSURANCE','3tgtrg','45t4gwrg','1','regerger','tgt345434345','','unregistered','2026-06-29 07:15:13.153979','2026-06-29 07:15:13.153979',1,224),(4,NULL,NULL,NULL,NULL,NULL,'','2026-06-10 16:53:00.000000','2026-06-17 04:53:00.000000',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','registered','2026-06-29 08:24:02.210497','2026-06-29 08:24:02.210497',1,210),(5,'Shruthi Deepthi','Female',NULL,'','','','2026-06-17 15:55:00.000000','2026-06-29 16:58:00.000000',1,'2026-06-29','2026-06-29','dr46536363','fdg54656','fdg454655676','GENERAL','35324325265','4gdfgefge','1','trgtergte','34332241343','','unregistered','2026-06-29 08:26:03.993946','2026-06-29 08:26:03.993946',1,225),(10,'RAvi Kumar','Male',NULL,'','','','2026-06-29 15:58:00.000000','2026-06-29 17:58:00.000000',NULL,'2026-06-29','2026-06-29','fgdfgd','gfdgdsfgfs','sdfsa','INSURANCE','dgds','dgsdgds','1','fasfsa','75647668564','death_reg_photos/79feb9a4-f2b5-41cd-af00-e1b11e300c3d.png','unregistered','2026-06-29 08:35:21.893231','2026-06-29 08:35:21.893231',1,230),(11,'Vaishnavi Shaji','Female',NULL,'','','','2026-06-09 14:13:00.000000','2026-06-23 14:13:00.000000',182,'2026-06-29','2026-06-29','4645','31313','1232342','CORPORATE','4242131','BBage','1','ed24r5465','787654342231','','unregistered','2026-06-29 08:43:31.851393','2026-06-29 08:43:31.851393',1,231),(12,NULL,NULL,NULL,NULL,NULL,'R2145','2026-06-16 14:15:00.000000','2026-06-17 17:22:00.000000',182,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'death_reg_photos/54593add-94fd-4e16-a840-5612ac509af5.jpeg','registered','2026-06-29 08:45:51.654647','2026-06-29 08:45:51.654647',1,207),(13,NULL,NULL,NULL,NULL,NULL,'R145','2026-06-16 17:25:00.000000','2026-06-29 14:27:00.000000',183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','registered','2026-06-29 08:55:11.704043','2026-06-29 08:55:11.704043',1,219),(14,'SHibu Soman','Male',NULL,'','','','2026-06-02 14:32:00.000000','2026-06-29 14:28:00.000000',183,'2026-06-29','2026-06-29','54678','6786454','retret435353','GENERAL','gtrgre','7dsvsdg','1','rt35354','345686745656','','unregistered','2026-06-29 08:59:06.556902','2026-06-29 08:59:06.556902',1,232);
/*!40000 ALTER TABLE `ayurvedaapp_deathregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_debitnote`
--

DROP TABLE IF EXISTS `ayurvedaapp_debitnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_debitnote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `debit_note_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `debit_note_date` date NOT NULL,
  `total_before_tax` decimal(10,2) NOT NULL,
  `total_tax_amount` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `remarks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint NOT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `debit_note_number` (`debit_note_number`),
  KEY `ayurvedaapp_debitnot_created_by_id_3e41965c_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_debitnot_supplier_id_8606d25d_fk_ayurvedaa` (`supplier_id`),
  CONSTRAINT `ayurvedaapp_debitnot_created_by_id_3e41965c_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_debitnot_supplier_id_8606d25d_fk_ayurvedaa` FOREIGN KEY (`supplier_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_debitnote`
--

LOCK TABLES `ayurvedaapp_debitnote` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_debitnote` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_debitnote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_debitnoteitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_debitnoteitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_debitnoteitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `batch_no` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `available_qty` int NOT NULL,
  `return_qty` int NOT NULL,
  `mrp` decimal(10,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL,
  `before_tax_amount` decimal(10,2) NOT NULL,
  `tax_amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `debit_note_id` bigint NOT NULL,
  `stock_item_id` bigint NOT NULL,
  `remarks` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_debitnot_debit_note_id_e6ed1565_fk_ayurvedaa` (`debit_note_id`),
  KEY `ayurvedaapp_debitnot_stock_item_id_2ffc810c_fk_ayurvedaa` (`stock_item_id`),
  CONSTRAINT `ayurvedaapp_debitnot_debit_note_id_e6ed1565_fk_ayurvedaa` FOREIGN KEY (`debit_note_id`) REFERENCES `ayurvedaapp_debitnote` (`id`),
  CONSTRAINT `ayurvedaapp_debitnot_stock_item_id_2ffc810c_fk_ayurvedaa` FOREIGN KEY (`stock_item_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_debitnoteitem`
--

LOCK TABLES `ayurvedaapp_debitnoteitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_debitnoteitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_debitnoteitem` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_department`
--

LOCK TABLES `ayurvedaapp_department` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_department` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_department` VALUES (3,'Front Office',1),(4,'Medical Consutation',1),(5,'Therapeutic Department',1),(6,'Pharmacy',1),(8,'Admin',1),(9,'Inventory',1),(10,'lab',1),(11,'Branch Incharge',1),(12,'Front office & Pharmacy',1),(13,'Branch Incharge',1),(14,'test department',1),(15,'PHYSICIAN',1),(16,'Gynaecology',1),(17,'Paediatric',1),(18,'Surgeon',1),(19,'Orthopedic',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_designation`
--

LOCK TABLES `ayurvedaapp_designation` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_designation` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_designation` VALUES (1,'Admin'),(2,'CMO'),(3,'Associate Doctors'),(4,'Pharmacist'),(5,'Female Wellness Therapist '),(6,'Male Wellness Therapist'),(7,'CRRI'),(8,'Receptionist'),(9,'superadmin'),(10,'lab incharge'),(11,'Branch Incharge'),(12,'Front Office & Pharmacist'),(13,'Doctor'),(14,'CONSULTANT'),(15,'PHYSICIAN'),(16,'PHYSICIAN'),(17,'Nures');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_diet`
--

LOCK TABLES `ayurvedaapp_diet` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_diet` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_diet` VALUES (1,'Diabetes','','2026-06-17 08:20:46.548310','2026-06-17 08:20:46.548310');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dischargemedicationprocedure`
--

LOCK TABLES `ayurvedaapp_dischargemedicationprocedure` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dischargemedicationprocedure` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_dischargemedicationprocedure` VALUES (1,'t','t',1),(2,'tet','tt',2),(3,'NA','NA',4),(4,'dsgfhj','gfdsgsh',5),(5,'sadcsd','sadfc',6),(6,'zdv dsf','vdsfb d',7),(7,'trewrt','retert',8),(8,'bgdfg','sd',9),(9,'dsfd','sada',10),(10,'sadasdfa','safasfs',11),(11,'sgfs','sgsh',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_district`
--

LOCK TABLES `ayurvedaapp_district` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_district` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_district` VALUES (1,'testdistrict'),(2,'ERNAKULAM'),(3,'IDUKKI'),(4,'KOTTAYAM'),(5,'ALAPPUZHA'),(6,'PALAKKAD');
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
-- Table structure for table `ayurvedaapp_goodsissuenote`
--

DROP TABLE IF EXISTS `ayurvedaapp_goodsissuenote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_goodsissuenote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gin_number` varchar(50) NOT NULL,
  `gin_date` date NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `remarks` longtext,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `branch_id` bigint NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `department_id` bigint NOT NULL,
  `staff_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gin_number` (`gin_number`),
  KEY `ayurvedaapp_goodsiss_branch_id_29698578_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_goodsiss_created_by_id_3d59025b_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_goodsiss_department_id_7f48248b_fk_ayurvedaa` (`department_id`),
  KEY `ayurvedaapp_goodsiss_staff_id_b38620c1_fk_ayurvedaa` (`staff_id`),
  CONSTRAINT `ayurvedaapp_goodsiss_branch_id_29698578_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_created_by_id_3d59025b_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_department_id_7f48248b_fk_ayurvedaa` FOREIGN KEY (`department_id`) REFERENCES `ayurvedaapp_department` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_staff_id_b38620c1_fk_ayurvedaa` FOREIGN KEY (`staff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_goodsissuenote`
--

LOCK TABLES `ayurvedaapp_goodsissuenote` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_goodsissuenote` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_goodsissuenote` VALUES (3,'GIN-20260709-0001','2026-07-09','','','issued','2026-07-09 09:28:23.145453','2026-07-09 09:28:23.145453',5,1,8,1),(4,'GIN-20260709-0002','2026-07-09','INR_@()!1089221','','issued','2026-07-09 10:12:29.866915','2026-07-09 10:12:29.866915',5,1,8,1),(5,'GIN-20260709-0003','2026-07-09','','','issued','2026-07-09 10:32:24.676119','2026-07-09 10:32:24.676119',5,1,8,1),(6,'GIN-20260709-0004','2026-07-09','','','issued','2026-07-09 11:39:21.980558','2026-07-09 11:39:21.980558',5,1,8,1);
/*!40000 ALTER TABLE `ayurvedaapp_goodsissuenote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_goodsissuenoteitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_goodsissuenoteitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_goodsissuenoteitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `batch_no` varchar(500) NOT NULL,
  `quantity` int NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL,
  `manufacturer_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `company_id` bigint DEFAULT NULL,
  `gin_id` bigint NOT NULL,
  `inventory_stock_id` bigint DEFAULT NULL,
  `item_name_id` bigint NOT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `unit_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_goodsiss_company_id_93d45965_fk_ayurvedaa` (`company_id`),
  KEY `ayurvedaapp_goodsiss_gin_id_4eaf8dde_fk_ayurvedaa` (`gin_id`),
  KEY `ayurvedaapp_goodsiss_inventory_stock_id_76adb838_fk_ayurvedaa` (`inventory_stock_id`),
  KEY `ayurvedaapp_goodsiss_item_name_id_dbc56251_fk_ayurvedaa` (`item_name_id`),
  KEY `ayurvedaapp_goodsiss_supplier_id_ac4e7fd9_fk_ayurvedaa` (`supplier_id`),
  KEY `ayurvedaapp_goodsiss_unit_id_5b1baf9d_fk_ayurvedaa` (`unit_id`),
  CONSTRAINT `ayurvedaapp_goodsiss_company_id_93d45965_fk_ayurvedaa` FOREIGN KEY (`company_id`) REFERENCES `ayurvedaapp_inventorycompany` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_gin_id_4eaf8dde_fk_ayurvedaa` FOREIGN KEY (`gin_id`) REFERENCES `ayurvedaapp_goodsissuenote` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_inventory_stock_id_76adb838_fk_ayurvedaa` FOREIGN KEY (`inventory_stock_id`) REFERENCES `ayurvedaapp_inventorystockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_item_name_id_dbc56251_fk_ayurvedaa` FOREIGN KEY (`item_name_id`) REFERENCES `ayurvedaapp_inventorymaster` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_supplier_id_ac4e7fd9_fk_ayurvedaa` FOREIGN KEY (`supplier_id`) REFERENCES `ayurvedaapp_supplier` (`id`),
  CONSTRAINT `ayurvedaapp_goodsiss_unit_id_5b1baf9d_fk_ayurvedaa` FOREIGN KEY (`unit_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_goodsissuenoteitem`
--

LOCK TABLES `ayurvedaapp_goodsissuenoteitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_goodsissuenoteitem` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_goodsissuenoteitem` VALUES (1,'9876543456',1,60.00,18.00,'2026-07-09','2026-07-31',60.00,1,3,1,1,83,10),(2,'9876543456',1,60.00,18.00,'2026-07-09','2026-07-31',60.00,1,4,1,1,83,10),(3,'BAT-3990340',1,67.80,18.00,'2026-07-02','2026-08-08',67.80,2,4,2,2,83,10),(4,'BAT-!(9001',7,60.00,18.00,'2026-07-09','2026-07-31',420.00,1,5,1,1,83,10),(5,'BAT-3990340',1,67.80,18.00,'2026-07-02','2026-08-08',67.80,2,5,2,2,83,10),(6,'BAT-!(9001',1,60.00,18.00,'2026-07-09','2026-07-31',60.00,1,6,1,1,83,10),(7,'BAT-3990340',1,67.80,18.00,'2026-07-02','2026-08-08',67.80,2,6,2,2,83,10);
/*!40000 ALTER TABLE `ayurvedaapp_goodsissuenoteitem` ENABLE KEYS */;
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
  `header_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_headerdetails`
--

LOCK TABLES `ayurvedaapp_headerdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_headerdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_headerdetails` VALUES (1,'header/Screenshot_2026-06-15_103733.png','');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorycategory`
--

LOCK TABLES `ayurvedaapp_inventorycategory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorycategory` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_inventorycategory` VALUES (1,'ABC');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorycompany`
--

LOCK TABLES `ayurvedaapp_inventorycompany` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorycompany` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_inventorycompany` VALUES (1,'ABC'),(2,'BAGH');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventoryinvoicechild`
--

LOCK TABLES `ayurvedaapp_inventoryinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventoryinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_inventoryinvoicechild` VALUES (1,1,'HELLEN',60,60,'2026-07-09 00:00:00.000000','MS26/27-000001','','test','9048272638','9876543456','2026-07-09','ABC','NOS','67ggrg',18,9.15,'NOS','9.00','9.00','4.58','4.58','50.85',1,83,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventoryinvoicemaster`
--

LOCK TABLES `ayurvedaapp_inventoryinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventoryinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_inventoryinvoicemaster` VALUES (1,'Cash','MS26/27-000001','2026-07-09',60,9.15,0,60,'test','9048272638','0.0',NULL,NULL,1,'4.58','4.58','9.15','60.0','0.0','0.0',1,5,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorymaster`
--

LOCK TABLES `ayurvedaapp_inventorymaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorymaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_inventorymaster` VALUES (1,'ABC-128891','HELLEN','HELLEN','ertrew','rwgre','67ggrg',49,1,3),(2,'ITEM_0003','SONA VENTACLE','SONA VENTRA','23','asfvre','dsghyh58765',56,1,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorystockdetails`
--

LOCK TABLES `ayurvedaapp_inventorystockdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorystockdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_inventorystockdetails` VALUES (1,'2026-07-09','2026-07-31','BAT-!(9001','60.0',69,'2026-07-09',0,NULL,1,1,1,5,1,83,10),(2,'2026-07-02','2026-08-08','BAT-3990340','67.8',57,'2026-07-09',0,NULL,2,1,2,5,1,83,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_invoicechild`
--

LOCK TABLES `ayurvedaapp_invoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_invoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_invoicechild` VALUES (4,2,'AB  PHYLLINE',20,40,'2026-06-12 00:00:00.000000','INVNO202606121','','testuser','9895310696','GTG2896A','2027-08-01','DEFAULT COMPANY','TAB','null',4,196,37,'TAB',5,1.9,'2.5','2.5',NULL,NULL,NULL),(5,1,'DOLOGEL',0,0,'2026-06-12 00:00:00.000000','INVNO202606122','','testuser','9895310696','0',NULL,'DR REDDY','GEL','null',5,196,36,'GEL',5,0,'2.5','2.5',NULL,NULL,NULL),(6,1,'AB  PHYLLINE',20,20,'2026-06-12 00:00:00.000000','INVNO202606122','','testuser','9895310696','GTG2896A','2027-08-01','DEFAULT COMPANY','TAB','null',5,196,37,'TAB',5,0.95,'2.5','2.5',NULL,NULL,NULL),(7,1,'DOLO 650 TAB',2.141,3,'2026-06-12 00:00:00.000000','INVNO202606122','','testuser','9895310696','DOBS4339','2029-11-01','MICRO LAB','TAB','null',5,196,41,'TAB',5,0.1,'2.5','2.5',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_invoiceerrorlog`
--

LOCK TABLES `ayurvedaapp_invoiceerrorlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_invoiceerrorlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_invoiceerrorlog` VALUES (1,'newInvoiceChild() got unexpected keyword arguments: \'is_strip\', \'strips_deducted\', \'tablets_deducted\'','2026-06-24 11:43:13.305239','INV26/270026','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_invoicemaster`
--

LOCK TABLES `ayurvedaapp_invoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_invoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_invoicemaster` VALUES (4,'INVNO202606121','2026-06-12',0,0,0,40,'testuser','9895310696','0.0','0','0',1,5,2,196,1,'Cash',NULL,NULL,NULL,'0','0','0'),(5,'INVNO202606122','2026-06-12',0,0,0,22.14,'testuser','9895310696','0.0','0','0',1,5,2,196,1,'Cash',NULL,NULL,NULL,'0','0','0');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipbill`
--

LOCK TABLES `ayurvedaapp_ipbill` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipbill` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipbill` VALUES (1,0.00,500.00,0.00,0.00,0.00,0.00,500.00,'2026-04-09',0.00,1,1,'IPB20260409001',500.00,1),(2,111.00,0.00,0.00,0.00,0.00,0.00,222.00,'2026-04-09',111.00,NULL,1,'IPB20260409002',222.00,1),(3,400.00,20.00,712.00,0.00,0.00,0.00,1132.00,'2026-05-13',0.00,2,3,'IPB20260513001',1132.00,1),(4,400.00,20.00,712.00,0.00,0.00,0.00,1132.00,'2026-05-13',0.00,NULL,3,'IPB20260513002',1132.00,1),(5,0.00,0.00,2424.00,0.00,0.00,0.00,2424.00,'2026-06-15',0.00,3,7,'IPB20260615001',2424.00,1),(6,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'2026-06-15',0.00,NULL,7,'IPB20260615002',0.00,1),(7,20000.00,87.20,962.00,0.00,0.00,0.00,21049.20,'2026-06-22',0.00,4,4,'IPB20260622001',21049.20,1),(8,0.00,500.00,1000.00,2500.00,10.00,0.00,4790.00,'2026-06-23',800.00,5,17,'IPB20260623001',4800.00,1),(9,500.00,133.03,250.00,0.00,0.00,0.00,883.02,'2026-07-03',0.00,NULL,23,'IPB20260703001',883.02,1),(10,500.00,318.00,2500.00,0.00,0.00,0.00,3318.00,'2026-07-03',0.00,NULL,24,'IPB20260703002',3318.00,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipdailymedicine`
--

LOCK TABLES `ayurvedaapp_ipdailymedicine` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipdailymedicine` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipdailymedicine` VALUES (3,'2026-06-22','15:32','1','1',218,9,2646,652),(4,'2026-06-22','15:44','1','1',1,2,2646,652),(5,'2026-06-22','15:46','1','1',198,5,3206,217),(6,'2026-06-22','15:51','1','1',198,5,1815,120),(7,'2026-06-22','16:19','2','5',196,12,3090,72),(8,'2026-06-22','16:22','1','1',1,2,1746,77),(9,'2026-06-22','16:23','1','',219,10,1746,77),(10,'2026-06-22','16:25','1','1',212,11,3090,72),(11,'2026-06-22','16:25','1','1',212,11,1746,77),(12,'2026-06-23','10:19','1','',1,2,3204,215),(13,'2026-06-23','10:32','1','1',1,2,1746,77),(14,'2026-06-23','10:36','1','1',1,2,3169,166),(15,'2026-07-02','Morning: 0 / Noon: 0 / Night: 0','1','Before Diet',1,18,3065,40),(16,'2026-07-02','Morning: 1 / Noon: 0 / Night: 0','1','Before Diet',210,8,3065,40),(17,'2026-07-02','Morning: 1 / Noon: 0 / Night: 0','1','Before Diet',233,19,3065,40),(18,'2026-07-02','Morning: 1 / Noon: 0 / Night: 0','4','Before Diet',233,21,3065,40),(19,'2026-07-03','Morning: 1 / Noon: 0 / Night: 0','3','Before Diet',220,23,3303,332),(20,'2026-07-03','Morning: 1 / Noon: 0 / Night: 0','5','Before Diet',220,24,3065,40),(21,'2026-07-03','Morning: 1 / Noon: 0 / Night: 0','5','Before Diet',220,24,3090,72),(22,'2026-07-03','Morning: 1 / Noon: 0 / Night: 0','5','Before Diet',219,26,3116,100);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipexpandedbillmedicinedetail`
--

LOCK TABLES `ayurvedaapp_ipexpandedbillmedicinedetail` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillmedicinedetail` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipexpandedbillmedicinedetail` VALUES (1,'test item','1',NULL,'2026-05-13',20.00,20.00,4,3,12),(2,'FIBISAFE 25 TAB','3',NULL,'2026-07-03',44.34,133.03,9,23,332),(3,'AB  PHYLLINE','5',NULL,'2026-07-03',20.00,100.00,10,24,40),(4,'APCCOD SACHET','5',NULL,'2026-07-03',43.60,218.00,10,24,72);
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
  `deletedstatus` tinyint(1) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipexpandedbillroomdetail`
--

LOCK TABLES `ayurvedaapp_ipexpandedbillroomdetail` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillroomdetail` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipexpandedbillroomdetail` VALUES (1,1,400.00,400.00,NULL,'2026-05-13 09:08:17.734966',4,3,1),(2,1,500.00,500.00,NULL,'2026-07-03 04:06:48.171920',9,23,4),(3,1,500.00,500.00,NULL,'2026-07-03 04:09:45.626668',10,24,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipexpandedbilltreatmentdetail`
--

LOCK TABLES `ayurvedaapp_ipexpandedbilltreatmentdetail` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbilltreatmentdetail` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipexpandedbilltreatmentdetail` VALUES (2,'1','2026-07-03',250.00,250.00,9,23,2),(3,'1','2026-07-03',2500.00,2500.00,10,24,3);
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbilltreatmentdetail` ENABLE KEYS */;
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
  `admittedbranch_id` bigint DEFAULT NULL,
  `ipnumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ippatien_MR_Number_id_5f2ead79_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_ippatien_admittedbranch_id_927900f2_fk_ayurvedaa` (`admittedbranch_id`),
  CONSTRAINT `ayurvedaapp_ippatien_admittedbranch_id_927900f2_fk_ayurvedaa` FOREIGN KEY (`admittedbranch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_MR_Number_id_5f2ead79_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ippatientadmission`
--

LOCK TABLES `ayurvedaapp_ippatientadmission` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ippatientadmission` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ippatientadmission` VALUES (1,'Unknown','2026-04-09','23','9048272638','tt',1,0,'tt',5,NULL),(2,'Unknown','2026-04-09','22','9048272638','r',1,0,'r',5,NULL),(3,'Unknown','2026-05-12','22','9895310696','TEST',196,0,'TEST',5,NULL),(4,'Unknown','2026-05-13','22','9895310696','test',196,0,'test',5,NULL),(5,'a+','2026-06-10','25','9999999999','mj',198,1,'test',5,NULL),(6,'Unknown','2026-06-12','39','9847223855','Not specified',200,1,'palakkad',NULL,NULL),(7,'o+','2026-06-15','25','1234567890','test',210,0,'test',5,NULL),(8,'O+','2026-06-22','25','1234567890','rwetwetgw',210,1,'Kottayam',5,NULL),(9,'A+','2026-06-22','56','7854646745','Not specified',218,1,'Kottayam',5,NULL),(10,'B-','2026-06-22','50','8765432451','Not specified',219,0,'Kottayam',5,NULL),(11,'B-','2026-06-22','30','1234567890','Not specified',212,1,'Kottayam',5,NULL),(12,'AB-','2026-06-22','25','9895310696','sertewsda',196,1,'Kochi',5,NULL),(17,'A+','2026-06-23','35','8654764531','Not specified',220,0,'Kottayam',5,'IPNo20260623001'),(18,'O+','2026-07-02','22','9048272638','sdc',1,1,'Kottayam',5,'IPNo20260702001'),(19,'O+','2026-07-02','35','8765432344','dwc',233,0,'Ernakulam',5,'IPNo20260702002'),(21,'Unknown','2026-07-02','35','8765432344','Kidsdw',233,1,'Kottayam',5,'IPNo20260702003'),(23,'O+','2026-07-03','35','8654764531','GHK',220,0,'Kottayam',5,'IPNo20260703001'),(24,'O+','2026-07-03','35','8654764531','fggwer',220,0,'Kottayam',5,'IPNo20260703002'),(25,'Unknown','2026-07-03','50.0','8765432451','Kottayam',219,0,'Kottayam',5,'IPNo20260703003'),(26,'O+','2026-07-03','50.0','8765432451','retgergtr',219,0,'Kottayam ',5,'IPNo20260703004');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ippatientroombooking`
--

LOCK TABLES `ayurvedaapp_ippatientroombooking` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ippatientroombooking` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ippatientroombooking` VALUES (1,'2026-05-12','17:52:00.000000','989898989','2026-05-12',196,3,1,NULL,2,'Room',NULL,'Floor 2',2,'Premium',3,'2026-05-13',0),(2,'2026-06-01','12:19:00.000000','9999999999','2026-06-10',198,3,1,5,1,'Ward',1,'',NULL,NULL,5,'2026-06-10',0),(3,'2026-06-22','16:42:00.000000','8654866778','2026-06-22',218,3,1,NULL,2,'Room',1,'Floor 2',2,'Premium',9,'2026-07-10',0),(4,'2026-06-22','14:26:00.000000','86543234567','2026-06-22',1,3,1,5,1,'Ward',1,'',NULL,NULL,2,'2026-06-27',0),(5,'2026-06-22','14:40:00.000000','7654567876','2026-06-22',210,3,1,5,3,'Ward',3,'',NULL,NULL,8,'2026-07-11',0),(6,'2026-07-02','10:14:41.673516','9048272638','2026-07-02',1,NULL,NULL,5,1,'Ward',1,'floor 1',NULL,NULL,18,'2026-07-17',0),(7,'2026-07-02','10:28:50.958691','8765432344','2026-07-02',233,NULL,NULL,5,5,'Room',NULL,'1',5,'Premium',19,'2026-07-31',0),(8,'2026-07-02','11:28:49.739120','8765432344','2026-07-02',233,NULL,NULL,5,5,'Room',NULL,'1',5,'Premium',21,'2026-07-17',0),(9,'2026-07-01','04:00:03.056590','8654764531','2026-07-03',220,NULL,NULL,5,4,'Room',NULL,'2',4,'Single',23,'2026-07-10',0),(10,'2026-07-01','04:07:35.173754','8654764531','2026-07-03',220,NULL,NULL,5,4,'Room',NULL,'2',4,'Single',24,'2026-07-10',0),(11,'2026-07-01','04:22:37.769459','8765432451','2026-07-03',219,NULL,NULL,5,6,'Room',NULL,'3',6,'Single',25,'2026-07-10',0),(12,'2026-07-01','04:29:20.633277','8765432451','2026-07-03',219,NULL,NULL,5,6,'Room',NULL,'3',6,'Single',26,'2026-07-10',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_iptreatmentdetails`
--

LOCK TABLES `ayurvedaapp_iptreatmentdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_iptreatmentdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_iptreatmentdetails` VALUES (4,'21:57','2026-06-15','2026-06-18','','1',0,210,7,2,'4'),(5,'15:31','2026-06-22','2026-06-22','1','1',0,218,9,2,'1'),(7,'15:43','2026-06-22','2026-06-22','177','',0,1,2,2,'1'),(8,'15:46','2026-06-22','2026-06-22','1','',0,198,5,2,'1'),(9,'15:51','2026-06-22','2026-06-22','','',0,198,5,2,'1'),(10,'16:19','2026-06-22','2026-06-22','','',0,196,12,2,'1'),(11,'16:21','2026-06-22','2026-06-22','','',0,1,2,2,'1'),(12,'16:23','2026-06-22','2026-06-22','1','',0,219,10,2,'1'),(13,'16:24','2026-06-22','2026-06-22','1','',0,1,2,2,'1'),(14,'16:25','2026-06-22','2026-06-22','1','',0,212,11,2,'1'),(15,'10:11','2026-06-23','2026-06-23','1','',0,198,5,3,'1'),(16,'10:18','2026-06-23','2026-06-23','1','',0,1,2,2,'1'),(17,'10:31','2026-06-23','2026-06-23','1','',0,1,2,2,'1'),(18,'10:35','2026-06-23','2026-06-23','1','',0,1,2,3,'1'),(19,NULL,'2026-07-02','2026-07-02','','',0,1,18,2,'1'),(20,NULL,'2026-07-02','2026-07-02','','',0,210,8,2,'1'),(21,NULL,'2026-07-02','2026-07-02','','',0,233,19,2,'1'),(22,NULL,'2026-07-02','2026-07-02','','',0,233,21,2,'1'),(23,NULL,'2026-07-03','2026-07-03','','',0,220,23,2,'1'),(24,NULL,'2026-07-03','2026-07-03','','',0,220,24,3,'1'),(25,NULL,'2026-07-03','2026-07-03','','',0,219,26,2,'1');
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
  `testname` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `qty` decimal(8,2) NOT NULL,
  `rate` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `invoice_id` bigint NOT NULL,
  `test_id` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_labinvoi_invoice_id_89581001_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_labinvoi_test_id_29ff414b_fk_ayurvedaa` (`test_id`),
  KEY `ayurvedaapp_labinvoi_group_id_220182cb_fk_ayurvedaa` (`group_id`),
  CONSTRAINT `ayurvedaapp_labinvoi_group_id_220182cb_fk_ayurvedaa` FOREIGN KEY (`group_id`) REFERENCES `ayurvedaapp_labtestmaster` (`id`),
  CONSTRAINT `ayurvedaapp_labinvoi_invoice_id_89581001_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_labinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_labinvoi_test_id_29ff414b_fk_ayurvedaa` FOREIGN KEY (`test_id`) REFERENCES `ayurvedaapp_labtestchild` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labinvoicechild`
--

LOCK TABLES `ayurvedaapp_labinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labinvoicechild` VALUES (1,1,'VITAMIN B',1.00,100.00,100.00,1,NULL,NULL),(2,1,'TFT',1.00,100.00,100.00,2,1,NULL),(3,2,'VITAMIN B',1.00,100.00,100.00,2,2,NULL),(4,1,'VITAMIN B',1.00,100.00,100.00,3,2,NULL),(5,2,'TFT',1.00,100.00,100.00,3,1,NULL),(6,1,'TFT',1.00,100.00,100.00,4,1,NULL),(7,1,'COMPLETE BLOOD CELLS [CBC]',1.00,220.00,220.00,5,3,NULL),(8,1,'Total WBC Count',1.00,25.00,25.00,6,4,NULL),(9,1,'VITAMIN B',1.00,900.00,900.00,7,2,NULL),(10,2,'COMPLETE BLOOD CELLS [CBC]',1.00,220.00,220.00,7,3,NULL),(11,1,'VITAMIN B',1.00,900.00,900.00,8,2,NULL),(12,2,'COMPLETE BLOOD CELLS [CBC]',1.00,220.00,220.00,8,3,NULL),(13,1,'VITAMIN B',1.00,900.00,900.00,9,2,NULL),(14,2,'COMPLETE BLOOD CELLS [CBC]',1.00,220.00,220.00,9,3,NULL),(15,1,'COMPLETE BLOOD CELLS [CBC]',1.00,220.00,220.00,10,3,NULL),(16,1,'RANDOM BLOOD CELLS',1.00,35.00,35.00,11,5,NULL),(17,2,'Total WBC Count',1.00,25.00,25.00,11,4,NULL),(19,1,'VITAMIN B',1.00,900.00,900.00,13,2,NULL),(20,2,'COMPLETE BLOOD CELLS [CBC]',1.00,220.00,220.00,13,3,NULL),(21,1,'Total WBC Count',1.00,35.00,35.00,14,4,NULL),(22,1,'Neutrophils',1.00,250.00,250.00,15,9,NULL),(23,2,'Total WBC Count',1.00,25.00,25.00,15,4,NULL),(27,1,'? Electrolytes (4 tests)',1.00,500.00,500.00,17,59,7),(28,2,'Total WBC Count',1.00,25.00,25.00,17,4,NULL),(29,1,'? BLOOD (2 tests)',1.00,100.00,100.00,18,NULL,4),(30,2,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,18,6,NULL),(31,1,'? BLOOD (2 tests)',1.00,100.00,100.00,19,NULL,4),(32,2,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,19,6,NULL),(33,3,'Electrolytes',1.00,500.00,500.00,19,7,NULL),(34,1,'? BLOOD (2 tests)',1.00,500.00,500.00,20,NULL,4),(35,2,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,20,6,NULL),(36,1,'? BLOOD (2 tests)',1.00,500.00,500.00,21,NULL,4),(37,2,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,21,6,NULL),(38,1,'BLOOD (Group)',1.00,500.00,500.00,22,NULL,4),(39,2,'Total WBC Count',1.00,25.00,25.00,22,4,NULL),(40,3,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,22,6,NULL),(41,4,'Lymphocytes',1.00,50.00,50.00,22,10,NULL),(42,1,'BLOOD (Group)',1.00,500.00,500.00,23,NULL,4),(43,2,'Macroscopic (Group)',1.00,50.00,50.00,23,NULL,11),(44,3,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,23,6,NULL),(45,4,'Neutrophils',1.00,40.00,40.00,23,9,NULL),(46,5,'Chloride',1.00,80.00,80.00,23,59,NULL),(47,6,'CRP',1.00,400.00,400.00,23,66,NULL),(48,1,'BLOOD (Group)',1.00,500.00,500.00,24,NULL,4),(49,2,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,24,6,NULL),(50,1,'BLOOD (Group)',1.00,500.00,500.00,25,NULL,4),(51,2,'Macroscopic (Group)',1.00,50.00,50.00,25,NULL,11),(52,3,'Cholestrol',1.00,60.00,60.00,25,29,NULL),(53,4,'Pus cells',1.00,50.00,50.00,25,91,NULL),(54,5,'Stool Routine',1.00,50.00,50.00,25,84,NULL),(55,1,'Cholestrol',1.00,60.00,60.00,26,29,NULL),(56,2,'Pus cells',1.00,50.00,50.00,26,91,NULL),(57,1,'BLOOD (Group)',1.00,500.00,500.00,27,NULL,4),(58,2,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,27,6,NULL),(59,1,'COMPLETE BLOOD CELLS ',1.00,220.00,220.00,28,3,NULL),(60,2,'Total WBC Count',1.00,25.00,25.00,28,4,NULL),(61,3,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,28,6,NULL),(62,1,'VITAMIN B',1.00,900.00,900.00,29,2,NULL),(63,2,'COMPLETE BLOOD CELLS ',1.00,220.00,220.00,29,3,NULL),(64,1,'BLOOD (Group)',1.00,500.00,500.00,30,NULL,4),(65,2,'Macroscopic (Group)',1.00,50.00,50.00,30,NULL,11),(66,3,'Total WBC Count',1.00,25.00,25.00,30,4,NULL),(67,4,'CBC-COMPLETE BLOOD',1.00,220.00,220.00,30,6,NULL),(68,1,'Electrolytes (Group)',1.00,500.00,500.00,31,NULL,7),(69,2,'Total WBC Count',1.00,25.00,25.00,31,4,NULL),(70,1,'BLOOD (Group)',1.00,500.00,500.00,32,NULL,4),(71,2,'Total WBC Count',1.00,25.00,25.00,32,4,NULL),(72,1,'Alkaline phosphatase',1.00,90.00,90.00,33,46,NULL);
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
  `invoiceno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labinvoicemaster`
--

LOCK TABLES `ayurvedaapp_labinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labinvoicemaster` VALUES (1,'LAB-2026-06-0001','2026-06-08',100.00,0.00,0.00,0.00,0.00,0.00,100.00,NULL,0.00,100.00,0.00,0.00,0,'Paid','2026-06-10 10:19:16.281175',1,1,NULL,NULL),(2,'LAB-2026-06-0002','2026-06-10',200.00,0.00,0.00,0.00,0.00,0.00,200.00,1,0.00,100.00,0.00,100.00,0,'Paid','2026-06-10 10:27:44.869129',1,1,196,NULL),(3,'LAB-2026-06-0003','2026-06-11',200.00,0.00,0.00,0.00,0.00,0.00,200.00,1,0.00,200.00,0.00,0.00,0,'Paid',NULL,NULL,0,196,NULL),(4,'LAB-2026-06-0004','2026-06-11',100.00,0.00,0.00,0.00,0.00,0.00,100.00,1,0.00,100.00,0.00,0.00,0,'Paid',NULL,NULL,0,1,4),(5,'LAB-2026-06-0005','2026-06-12',220.00,0.00,0.00,0.00,0.00,0.00,220.00,1,0.00,220.00,0.00,0.00,0,'Paid',NULL,NULL,0,1,3),(6,'LAB-2026-06-0006','2026-06-12',25.00,0.00,0.00,0.00,0.00,0.00,25.00,190,0.00,25.00,0.00,0.00,0,'Paid',NULL,NULL,0,200,17),(7,'LAB-2026-06-0007','2026-06-12',1120.00,0.00,0.00,0.00,0.00,0.00,1120.00,190,1000.00,120.00,0.00,0.00,0,'Paid',NULL,NULL,0,200,6),(8,'LAB-2026-06-0008','2026-06-12',1120.00,0.00,0.00,0.00,0.00,0.00,1120.00,190,1000.00,120.00,0.00,0.00,0,'Paid','2026-06-18 04:23:10.597905',1,1,200,NULL),(9,'LAB-2026-06-0009','2026-06-12',1120.00,0.00,0.00,0.00,0.00,0.00,1120.00,190,1000.00,120.00,0.00,0.00,0,'Paid','2026-06-18 04:23:16.560992',1,1,200,NULL),(10,'LAB-2026-06-0010','2026-06-16',220.00,0.00,0.00,0.00,0.00,0.00,220.00,1,0.00,220.00,0.00,0.00,0,'Paid',NULL,NULL,0,208,18),(11,'LAB-2026-06-0011','2026-06-17',60.00,0.00,0.00,0.00,0.00,0.00,60.00,1,0.00,60.00,0.00,0.00,0,'Paid',NULL,NULL,0,196,5),(13,'LAB-2026-06-0012','2026-06-18',1120.00,0.00,0.00,0.00,0.00,0.00,1120.00,1,0.00,1120.00,0.00,0.00,0,'Paid',NULL,NULL,0,1,7),(14,'LAB-2026-06-0013','2026-06-18',35.00,0.00,0.00,0.00,0.00,0.00,35.00,1,0.00,0.00,0.00,35.00,0,'Paid',NULL,NULL,0,1,13),(15,'LAB-2026-06-0014','2026-06-22',275.00,0.00,0.00,0.00,0.00,0.00,275.00,1,0.00,275.00,0.00,0.00,0,'Paid',NULL,NULL,0,222,8),(17,'LAB-2026-07-0001','2026-07-01',525.00,0.00,0.00,0.00,0.00,0.00,525.00,1,0.00,0.00,0.00,525.00,0,'Paid',NULL,NULL,0,210,10),(18,'LAB-2026-07-0002','2026-07-01',320.00,0.00,0.00,0.00,0.00,0.00,320.00,1,0.00,0.00,0.00,320.00,0,'Paid',NULL,NULL,0,196,9),(19,'LAB-2026-07-0003','2026-07-02',820.00,0.00,0.00,0.00,0.00,0.00,820.00,1,0.00,0.00,0.00,820.00,0,'Paid','2026-07-02 05:02:01.850732',1,1,1,NULL),(20,'LAB-2026-07-0004','2026-07-02',720.00,0.00,0.00,0.00,0.00,0.00,720.00,1,0.00,720.00,0.00,0.00,0,'Paid',NULL,NULL,0,198,14),(21,'LAB-2026-07-0005','2026-07-02',720.00,0.00,0.00,0.00,0.00,0.00,720.00,1,0.00,0.00,0.00,720.00,0,'Paid','2026-07-02 11:25:31.196538',1,1,196,11),(22,'LAB-2026-07-0006','2026-07-03',795.00,0.00,0.00,0.00,0.00,0.00,795.00,1,0.00,0.00,0.00,795.00,0,'Paid',NULL,NULL,0,210,12),(23,'LAB-2026-07-0007','2026-07-03',1290.00,0.00,0.00,0.00,0.00,0.00,1290.00,1,0.00,1290.00,0.00,0.00,0,'Paid','2026-07-03 10:22:18.018280',1,1,196,NULL),(24,'LAB-2026-07-0008','2026-07-03',720.00,0.00,0.00,0.00,0.00,0.00,720.00,1,0.00,720.00,0.00,0.00,0,'Paid',NULL,NULL,0,196,15),(25,'LAB-2026-07-0009','2026-07-03',710.00,0.00,0.00,0.00,0.00,0.00,710.00,1,0.00,0.00,710.00,0.00,1,'Credit','2026-07-03 11:18:45.291517',1,1,219,NULL),(26,'LAB-2026-07-0010','2026-07-03',110.00,0.00,0.00,0.00,0.00,0.00,110.00,1,0.00,110.00,0.00,0.00,0,'Paid','2026-07-03 10:56:22.353053',1,1,219,NULL),(27,'LAB-2026-07-0011','2026-07-03',720.00,0.00,0.00,0.00,0.00,0.00,720.00,1,0.00,720.00,0.00,0.00,0,'Paid','2026-07-03 11:07:41.785749',1,1,196,NULL),(28,'LAB-2026-07-0012','2026-07-03',465.00,0.00,0.00,0.00,0.00,0.00,465.00,1,0.00,465.00,0.00,0.00,0,'Paid',NULL,NULL,0,196,16),(29,'LAB-2026-07-0013','2026-07-03',1120.00,0.00,0.00,0.00,0.00,0.00,1120.00,1,0.00,1120.00,0.00,0.00,0,'Paid',NULL,NULL,0,200,19),(30,'LAB-2026-07-0014','2026-07-03',795.00,0.00,0.00,0.00,0.00,0.00,795.00,1,0.00,795.00,0.00,0.00,0,'Paid',NULL,NULL,0,1,20),(31,'LAB-2026-07-0015','2026-07-04',525.00,0.00,0.00,0.00,0.00,0.00,525.00,1,0.00,525.00,0.00,0.00,0,'Paid',NULL,NULL,0,196,23),(32,'LAB-2026-07-0016','2026-07-04',525.00,0.00,0.00,0.00,0.00,0.00,525.00,1,0.00,525.00,0.00,0.00,0,'Paid',NULL,NULL,0,1,24),(33,'LAB-2026-07-0017','2026-07-04',90.00,0.00,0.00,0.00,0.00,0.00,90.00,1,0.00,90.00,0.00,0.00,0,'Paid',NULL,NULL,0,212,25);
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
  `requisition_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL,
  `cancelled_date` datetime(6) DEFAULT NULL,
  `cancellation_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labrequisitionmaster`
--

LOCK TABLES `ayurvedaapp_labrequisitionmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labrequisitionmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labrequisitionmaster` VALUES (1,'LABREQ202606100001',0,NULL,'','2026-06-10 10:19:59.155631','2026-06-10 10:20:43.998904','Requisition created with 2 tests',NULL,1,2,196,NULL),(2,'LABREQ202606110001',0,NULL,'','2026-06-11 17:07:08.891746','2026-06-11 17:07:50.626549','Requisition created with 2 tests',NULL,1,3,196,NULL),(3,'LABREQ202606110002',0,NULL,'','2026-06-11 19:03:25.507952','2026-06-11 19:04:20.621613','Requisition created with 1 tests',NULL,1,4,1,NULL),(4,'LABREQ202606120001',0,NULL,'','2026-06-12 11:00:35.027155','2026-06-12 11:01:25.156221','Requisition created with 1 tests',NULL,1,5,1,NULL),(5,'LABREQ202606120002',0,NULL,'','2026-06-12 11:25:54.337136','2026-06-12 11:26:57.908754','Requisition created with 1 tests',NULL,190,6,200,NULL),(12,'LABREQ202606170001',0,NULL,'','2026-06-17 07:38:40.503806','2026-06-17 07:39:05.157273','Requisition created with 2 tests',NULL,1,11,196,NULL),(13,'LABREQ202606180001',0,NULL,'','2026-06-18 04:24:13.357945','2026-06-18 04:26:14.600958','Requisition created with 2 tests',NULL,1,13,1,NULL),(14,'LABREQ202606220001',0,NULL,'','2026-06-22 10:26:26.273931','2026-06-22 10:27:55.902502','Requisition created with 2 tests',NULL,1,15,222,NULL),(20,'LABREQ202607010001',0,NULL,'','2026-07-01 08:38:40.458153','2026-07-01 12:10:07.805739','Requisition created with 5 tests',NULL,1,18,196,NULL),(32,'LABREQ202607010012',0,NULL,'','2026-07-01 10:04:14.820050','2026-07-01 11:59:24.268819','Requisition created with 5 tests (1 individual, 1 groups)',NULL,1,17,210,NULL),(34,'LABREQ202607020001',0,NULL,'','2026-07-02 05:41:10.412928','2026-07-02 05:42:38.947573','Requisition created with 3 tests (1 individual, 1 groups)',NULL,1,20,198,NULL),(35,'LABREQ202607020002',0,NULL,'','2026-07-02 11:20:13.658190','2026-07-02 11:22:33.736050','Requisition created with 4 tests (2 individual, 1 groups)',NULL,1,21,196,NULL),(36,'LABREQ202607030001',0,NULL,'','2026-07-03 04:51:57.322780','2026-07-03 04:52:43.412993','Requisition created with 5 tests (3 individual, 1 groups)',NULL,1,22,210,NULL),(37,'LABREQ202607030002',0,NULL,'','2026-07-03 10:19:51.064785','2026-07-03 10:20:55.109635','Requisition created with 6 tests (3 individual, 1 groups)',NULL,1,23,196,NULL),(38,'LABREQ202607030003',0,NULL,'','2026-07-03 10:30:15.358883','2026-07-03 10:36:25.014003','Requisition created with 6 tests (1 individual, 2 groups)',NULL,1,25,219,NULL),(39,'LABREQ202607030004',0,NULL,'','2026-07-03 11:06:34.699764','2026-07-03 11:07:18.736131','Requisition created with 3 tests (3 individual, 0 groups)',NULL,1,28,196,NULL),(40,'LABREQ202607030005',0,NULL,'','2026-07-03 11:42:58.248797','2026-07-03 11:43:47.207503','Requisition created with 7 tests (2 individual, 2 groups)',NULL,1,30,1,NULL),(41,'LABREQ202607040001',0,NULL,'','2026-07-04 06:33:05.244954','2026-07-04 06:34:09.101964','Requisition created with 5 tests (1 individual, 1 groups)',NULL,1,31,196,NULL),(42,'LABREQ202607040002',0,NULL,'','2026-07-04 07:13:47.487527','2026-07-04 07:14:17.801907','Requisition created with 3 tests (1 individual, 1 groups)',NULL,1,32,1,NULL);
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
  `result_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `completed_date` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labresultmaster`
--

LOCK TABLES `ayurvedaapp_labresultmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labresultmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labresultmaster` VALUES (1,'LABRES202606100001',1,'2026-06-10 10:21:57.721739','2026-06-10 10:21:57.715697','2026-06-10 10:21:57.721902','Results saved for invoice LAB-2026-06-0002',1,1,2,196,NULL),(2,'LABRES202606110001',1,'2026-06-11 17:08:57.221668','2026-06-11 17:08:57.207389','2026-06-11 17:08:57.221785','Results saved for invoice LAB-2026-06-0003',1,1,3,196,NULL),(3,'LABRES202606160001',1,'2026-06-16 14:55:13.543068','2026-06-16 14:55:13.535869','2026-06-16 14:55:13.543191','Results saved for invoice LAB-2026-06-0005',1,1,5,1,NULL),(4,'LABRES202606160002',1,'2026-06-16 15:05:46.522672','2026-06-16 15:05:46.520197','2026-06-16 15:05:46.522782','Results saved for invoice LAB-2026-06-0004',1,1,4,1,NULL),(5,'LABRES202606170001',1,'2026-06-17 07:45:52.684892','2026-06-17 07:45:52.673123','2026-06-17 07:45:52.684892','Results saved for invoice LAB-2026-06-0011',1,1,11,196,NULL),(6,'LABRES202606180001',1,'2026-06-18 04:20:45.684631','2026-06-18 04:20:45.671868','2026-06-18 04:20:45.684631','Results saved for invoice LAB-2026-06-0007',1,1,7,200,NULL),(7,'LABRES202606180002',1,'2026-06-18 04:27:28.800843','2026-06-18 04:27:28.791711','2026-07-04 12:28:09.408445','Results saved for invoice LAB-2026-06-0012',1,1,13,1,NULL),(8,'LABRES202606220001',1,'2026-06-22 10:28:33.309881','2026-06-22 10:28:33.292497','2026-07-04 12:28:29.561452','Results saved for invoice LAB-2026-06-0014',1,1,15,222,NULL),(9,'LABRES202607010001',1,'2026-07-01 12:30:03.597002','2026-07-01 12:30:03.569941','2026-07-01 12:30:03.597002','Results saved for invoice LAB-2026-07-0002',1,1,18,196,NULL),(10,'LABRES202607020001',1,'2026-07-02 04:24:02.170537','2026-07-02 04:24:02.141332','2026-07-02 04:24:02.170537','Results saved for invoice LAB-2026-07-0001',1,1,17,210,NULL),(11,'LABRES202607020002',1,'2026-07-02 11:24:02.287237','2026-07-02 11:24:02.272872','2026-07-02 11:24:02.288237','Results saved for invoice LAB-2026-07-0005',1,1,21,196,NULL),(12,'LABRES202607030001',1,'2026-07-03 04:53:34.431536','2026-07-03 04:53:34.412796','2026-07-03 04:53:34.431536','Results saved for invoice LAB-2026-07-0006',1,1,22,210,NULL),(13,'LABRES202607030002',1,'2026-07-03 06:01:10.252430','2026-07-03 06:01:10.228259','2026-07-03 06:01:10.252430','Results saved for invoice LAB-2026-06-0013',1,1,14,1,NULL),(14,'LABRES202607030003',1,'2026-07-03 06:03:01.994276','2026-07-03 06:03:01.975177','2026-07-03 06:03:01.994276','Results saved for invoice LAB-2026-07-0004',1,1,20,198,NULL),(15,'LABRES202607030004',1,'2026-07-03 10:24:52.672026','2026-07-03 10:24:52.652956','2026-07-06 07:21:38.786486','Results saved for invoice LAB-2026-07-0008',1,1,24,196,NULL),(16,'LABRES202607030005',1,'2026-07-03 11:08:29.016072','2026-07-03 11:08:29.001306','2026-07-03 11:08:29.016072','Results saved for invoice LAB-2026-07-0012',1,1,28,196,NULL),(17,'LABRES202607030006',1,'2026-07-03 11:30:41.747127','2026-07-03 11:30:41.743131','2026-07-03 11:30:41.747127','Results saved for invoice LAB-2026-06-0006',1,1,6,200,NULL),(18,'LABRES202607030007',1,'2026-07-03 11:31:07.814681','2026-07-03 11:31:07.808832','2026-07-03 11:31:07.814681','Results saved for invoice LAB-2026-06-0010',1,1,10,208,NULL),(19,'LABRES202607030008',1,'2026-07-03 11:33:41.657453','2026-07-03 11:33:41.643182','2026-07-03 11:33:41.657453','Results saved for invoice LAB-2026-07-0013',1,1,29,200,NULL),(20,'LABRES202607030009',1,'2026-07-03 11:45:28.046443','2026-07-03 11:45:28.016934','2026-07-03 11:45:28.046443','Results saved for invoice LAB-2026-07-0014',1,1,30,1,NULL),(23,'LABRES202607040001',1,'2026-07-04 06:58:47.586853','2026-07-04 06:58:47.568896','2026-07-04 06:58:47.586853','Results saved for invoice LAB-2026-07-0015',1,1,31,196,NULL),(24,'LABRES202607040002',1,'2026-07-04 07:20:43.893065','2026-07-04 07:20:43.881623','2026-07-06 07:19:17.628292','Results saved for invoice LAB-2026-07-0016',1,1,32,1,NULL),(25,'LABRES202607040003',1,'2026-07-04 07:24:36.219341','2026-07-04 07:24:36.215344','2026-07-06 07:18:30.784987','Results saved for invoice LAB-2026-07-0017',1,1,33,212,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labtestchild`
--

LOCK TABLES `ayurvedaapp_labtestchild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labtestchild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labtestchild` VALUES (1,0,'TFT','TFT',1,'220'),(2,0,'VITAMIN B','VITAMIN B',2,'900'),(3,1,'COMPLETE BLOOD CELLS ','CBC',4,'220'),(4,1,'Total WBC Count','WBC',5,'25'),(5,1,'RANDOM BLOOD CELLS','RBS',4,'35'),(6,1,'CBC-COMPLETE BLOOD','CBC-COMPLETE BLOOD',5,'220'),(7,1,'Hb','Hb',5,'25'),(9,1,'Neutrophils','Neutrophils',5,'0'),(10,1,'Lymphocytes','Lymphocytes',5,'0'),(11,1,'Eosinophils','Eosinophils',5,'0'),(12,1,'Monocytes','Monocytes',5,'0'),(13,1,'Basophiles','Basophiles',5,'0'),(14,1,'Platelet count','Platelet',5,'50'),(15,1,'RBC','RBC',5,'25'),(16,1,'PCV','PCV',5,'35'),(17,1,'MCV','MCV',5,'0'),(18,1,'MCH','MCH',5,'0'),(19,1,'MCHC','MCHC',5,'0'),(20,1,'Bleeding time','Bleeding',5,'50'),(21,1,'Clotting time','Clotting',5,'0'),(22,1,'Blood group-','Blood Group',5,'40'),(23,1,'Maleria Card','Maleria',5,'100'),(24,1,'AEC count','AEC',5,'50'),(25,1,'Blood Sugar FBS','FBS',6,'35'),(26,1,'Blood Sugar PPBS','PPBS',6,'35'),(27,1,'Blood Sugar Random','Random BS',6,'35'),(28,1,'Lipid profile','Lipid',6,'280'),(29,1,'Cholestrol','Cholestrol',6,'60'),(30,1,'Triglycerides','Triglycerides',6,'100'),(31,1,'HDL-cholestrol','HDL',6,'0'),(32,1,'LDL-cholestrol','LDL',6,'0'),(33,1,'VLDL','VLDL',6,'0'),(34,1,'Ratio','Ratio',6,'0'),(35,1,'RFT','RFT',6,'210'),(36,1,'Blood urea','Urea',6,'70'),(37,1,'Creatine','Creatine',6,'70'),(38,1,'Uric acid','Uric acid',6,'70'),(39,1,'Calcium','Calcium',6,'70'),(40,1,'LFT','LFT',6,'385'),(41,1,'Bilirubin total','Bilirubin T',6,'0'),(42,1,'Direct','Direct',6,'0'),(43,1,'Indirect','Indirect',6,'0'),(44,1,'SGOT','SGOT',6,'90'),(45,1,'SGPT','SGPT',6,'90'),(46,1,'Alkaline phosphatase','ALP',6,'90'),(47,1,'Total protien','Total Prot',6,'80'),(48,1,'Albumin','Albumin',6,'70'),(49,1,'Globulin','Globulin',6,'70'),(50,1,'A.G Ratio','AG Ratio',6,'170'),(51,1,'serum bilirubin','Serum Bilirubin',6,'70'),(52,1,'GTT-Fasting','GTT Fasting',6,'200'),(53,1,'GTT-2 hour blood sugar','GTT 2hr',6,'0'),(54,1,'GCT-Fbs','GCT FBS',6,'50'),(55,1,'GCT-1 hour blood sugar','GCT 1hr',6,'0'),(56,1,'Serum Electrolytes','Electrolytes',7,'250'),(57,1,'Sodium','Sodium',7,'100'),(58,1,'Pottassium','Potassium',7,'100'),(59,1,'Chloride','Chloride',7,'80'),(60,1,'FT3','FT3',8,'550'),(61,1,'FT4','FT4',8,'0'),(62,1,'TSH','TSH',8,'220'),(63,1,'Vitamin D','Vitamin D',8,'900'),(64,1,'AMH','AMH',8,'2000'),(65,1,'BHCG','BHCG',8,'600'),(66,1,'CRP','CRP',9,'400'),(67,1,'ASO','ASO',9,'170'),(68,1,'RA Factor','RA Factor',9,'0'),(69,1,'WIDAL','WIDAL',9,'90'),(70,1,'S.typhi\"O\"','Typhi O',9,'0'),(71,1,'S.typhi\"H\"','Typhi H',9,'0'),(72,1,'S.para typhi\"AH\"','Para AH',9,'0'),(73,1,'S.para typhi\"BH\"','Para BH',9,'0'),(74,1,'VDRL','VDRL',9,'90'),(75,1,'HIV','HIV',9,'220'),(76,1,'HBS Ag','HBS Ag',9,'170'),(77,1,'HCV','HCV',9,'0'),(78,1,'Trop T','Trop T',9,'600'),(79,1,'Dengue','Dengue',9,'550'),(80,1,'IGM','IGM',9,'0'),(81,1,'IGG','IGG',9,'0'),(82,1,'Spectum AFB stain','AFB',10,'100'),(83,1,'Mantox test','Mantox',10,'45'),(84,1,'Stool Routine','Stool',10,'50'),(85,1,'Urine','Urine',10,'50'),(86,1,'Reaction','Reaction',10,'0'),(87,1,'Albumin','Albumin',10,'0'),(88,1,'Sugar','Sugar',10,'0'),(89,1,'Bile pigment','Bile Pigment',10,'0'),(90,1,'Bile salt','Bile Salt',10,'0'),(91,1,'Pus cells','Pus cells',10,'0'),(92,1,'RBCS','RBCS',10,'0'),(93,1,'Epithelial cells','Epithelial',10,'0'),(94,1,'castes','Castes',10,'0'),(95,1,'Crystals','Crystals',10,'0'),(96,1,'Bacteria','Bacteria',10,'0'),(97,1,'Urine acetone','Acetone',10,'50'),(98,1,'Urine albumin','Urine Alb',10,'0'),(99,1,'urine sugar','Urine Sugar',10,'0'),(100,1,'Urine pregnancy test','UPT',10,'70'),(101,1,'Consistency','Consistency',11,'0'),(103,1,'Mucus','Mucus',11,'0'),(104,1,'Blood','Blood',11,'0'),(105,1,'Pus cells','Pus cells',12,'0'),(107,1,'E.H.','E.H.',12,'0'),(108,1,'Ova and Cyst','Ova/Cyst',12,'0'),(109,1,'Larvae','Larvae',12,'0'),(111,1,'Benedicts test','Benedicts',12,'0'),(112,1,'HbAlc-Normal','HbAlc',5,'400'),(113,1,'HbAlc-Estimated avg glucose','HbAlc Avg',5,'0');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labtestmaster`
--

LOCK TABLES `ayurvedaapp_labtestmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labtestmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labtestmaster` VALUES (1,'THYROID',0,'220'),(2,'VITAMIN',0,'900'),(3,'Heamoglobin',1,'25'),(4,'BLOOD',1,'500'),(5,'Hematology',1,'0'),(6,'Bio chemistry',1,'0'),(7,'Electrolytes',1,'500'),(8,'Hormones',1,'0'),(9,'Serology',1,'0'),(10,'Miscellaneous',1,'0'),(11,'Macroscopic',1,'0'),(12,'Microscopic',1,'0');
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
  `unit` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labunitmaster`
--

LOCK TABLES `ayurvedaapp_labunitmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labunitmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labunitmaster` VALUES (1,'mg/dL',1),(2,'%',1),(3,'cmm',1),(4,'mill/comm',1),(5,'Lakhs/cumm',1),(6,'U/L',1),(7,'g/dl',1),(8,'mmol/L',1),(9,'pmol/L',1),(10,'FL',1),(11,'PG',1),(12,'grams %',1),(13,'grams',1),(14,'ml  U/L',1),(15,'ng/mL',1),(16,'Positive/Negative',1),(17,'iU/L',1),(18,'minutes',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3789 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medicinemaster`
--

LOCK TABLES `ayurvedaapp_medicinemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medicinemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_medicinemaster` VALUES (1659,'test code','test item','','','','30049099',158,51,6),(1671,NULL,'VICKRYL NO 1 NW 2347',NULL,NULL,NULL,NULL,167,51,6),(1672,NULL,'QIZOPAN-40',NULL,NULL,NULL,NULL,167,51,6),(1673,NULL,'10 D',NULL,NULL,NULL,NULL,171,51,6),(1674,NULL,'3 WAY CONNECTION WITH TUBE',NULL,NULL,NULL,NULL,167,51,6),(1675,NULL,'3 WYA CONNECTION',NULL,NULL,NULL,NULL,174,51,6),(1676,NULL,'AARMOX 500',NULL,NULL,NULL,NULL,168,51,6),(1677,NULL,'AARVOL PLUS',NULL,NULL,NULL,NULL,168,51,6),(1678,NULL,'AB PAS N',NULL,NULL,NULL,NULL,167,51,6),(1679,NULL,'AB PHYLLINE',NULL,NULL,NULL,NULL,168,51,6),(1680,NULL,'ABDOMINAL BELT (S)',NULL,NULL,NULL,NULL,174,51,6),(1681,NULL,'ABDOMINAL BELT LARGE 1',NULL,NULL,NULL,NULL,174,51,6),(1682,NULL,'ABDOMINAL BELT MEDIUM 1',NULL,NULL,NULL,NULL,174,51,6),(1683,NULL,'ABDOMINAL BIN SMALL',NULL,NULL,NULL,NULL,175,51,6),(1684,NULL,'ABDOMINAL BIN XL',NULL,NULL,NULL,NULL,175,51,6),(1685,NULL,'ABDOMINAL COREST XL',NULL,NULL,NULL,NULL,NULL,51,6),(1686,NULL,'ABDOMINAL CORSET XXL',NULL,NULL,NULL,NULL,NULL,51,6),(1687,NULL,'ABDOMINAL HISTACTAMY KIT',NULL,NULL,NULL,NULL,176,51,6),(1688,NULL,'ABGEL',NULL,NULL,NULL,NULL,172,51,6),(1689,NULL,'ABIXIM 200mg',NULL,NULL,NULL,NULL,167,51,6),(1690,NULL,'ACEFLAM-P',NULL,NULL,NULL,NULL,167,51,6),(1691,NULL,'ACELOX P',NULL,NULL,NULL,NULL,167,51,6),(1692,NULL,'ACENEXT TH4',NULL,NULL,NULL,NULL,167,51,6),(1693,NULL,'ACETRA SP',NULL,NULL,NULL,NULL,167,51,6),(1694,NULL,'ACIMOL-SP',NULL,NULL,NULL,NULL,167,51,6),(1695,NULL,'ACIVIR 400DT',NULL,NULL,NULL,NULL,167,51,6),(1696,NULL,'ACIZER-SP',NULL,NULL,NULL,NULL,167,51,6),(1697,NULL,'ACULITE P 500ml',NULL,NULL,NULL,NULL,171,51,6),(1698,NULL,'AD-100',NULL,NULL,NULL,NULL,167,51,6),(1699,NULL,'ADRENALINE INJ AMP',NULL,NULL,NULL,NULL,170,51,6),(1700,NULL,'ADREWIN 1ml',NULL,NULL,NULL,NULL,170,51,6),(1701,NULL,'ADULT DIAPER LARGE(40)',NULL,NULL,NULL,NULL,167,51,6),(1702,NULL,'ADULT DIAPER M',NULL,NULL,NULL,NULL,167,51,6),(1703,NULL,'ADVACRYL 3.0 2437',NULL,NULL,NULL,NULL,NULL,51,6),(1704,NULL,'ADVACRYL RAPID 2-0 2777',NULL,NULL,NULL,NULL,173,51,6),(1705,NULL,'ADVAGRIP 180',NULL,NULL,NULL,NULL,173,51,6),(1706,NULL,'ADVAGRIP 180(BARB SUTURE)',NULL,NULL,NULL,NULL,173,51,6),(1707,NULL,'ADVALELE 840 70 CM',NULL,NULL,NULL,NULL,173,51,6),(1708,NULL,'ADVALON3.0 (3321)',NULL,NULL,NULL,NULL,174,51,6),(1709,NULL,'ALCIPRO IV 100ML',NULL,NULL,NULL,NULL,NULL,51,6),(1710,NULL,'ALEX LS SYP 100ML',NULL,NULL,NULL,NULL,169,51,6),(1711,NULL,'ALEX SYRUP 100ML',NULL,NULL,NULL,NULL,177,51,6),(1712,NULL,'ALFAKIM 250MG',NULL,NULL,NULL,NULL,170,51,6),(1713,NULL,'ALGEN VITAMIN-C',NULL,NULL,NULL,NULL,167,51,6),(1714,NULL,'ALKOF C/SYRUP',NULL,NULL,NULL,NULL,169,51,6),(1715,NULL,'ALLEGRA 120MG',NULL,NULL,NULL,NULL,167,51,6),(1716,NULL,'ALLEGRA 180 MG',NULL,NULL,NULL,NULL,167,51,6),(1717,NULL,'ALLERONE SYRUP',NULL,NULL,NULL,NULL,169,51,6),(1718,NULL,'ALLERONE M 60ML',NULL,NULL,NULL,NULL,179,51,6),(1719,NULL,'ALMOX 125 dry syp',NULL,NULL,NULL,NULL,169,51,6),(1720,NULL,'ALMOX 500 CAP 10 tab',NULL,NULL,NULL,NULL,168,51,6),(1721,NULL,'ALPRAX 0.25',NULL,NULL,NULL,NULL,167,51,6),(1722,NULL,'ALPRAX 0.5',NULL,NULL,NULL,NULL,167,51,6),(1723,NULL,'AMBRODIL S SYP',NULL,NULL,NULL,NULL,167,51,6),(1724,NULL,'AMLONG 5',NULL,NULL,NULL,NULL,167,51,6),(1725,NULL,'AMLONG 10MG',NULL,NULL,NULL,NULL,167,51,6),(1726,NULL,'AMLONG 2.5',NULL,NULL,NULL,NULL,167,51,6),(1727,NULL,'ANAWIN HEAVY (A)',NULL,NULL,NULL,NULL,167,51,6),(1728,NULL,'ANAWIN HEAVY 0.5%',NULL,NULL,NULL,NULL,170,51,6),(1729,NULL,'ANESTRON',NULL,NULL,NULL,NULL,167,51,6),(1730,NULL,'ANEC SP',NULL,NULL,NULL,NULL,167,51,6),(1731,NULL,'ANEC-P 10',NULL,NULL,NULL,NULL,167,51,6),(1732,NULL,'ANEKET VIAL',NULL,NULL,NULL,NULL,167,51,6),(1733,NULL,'ANEKET INJ 100MG',NULL,NULL,NULL,NULL,170,51,6),(1734,NULL,'ANKLE BINDER SMALL',NULL,NULL,NULL,NULL,175,51,6),(1735,NULL,'ANKLE BRACE L',NULL,NULL,NULL,NULL,174,51,6),(1736,NULL,'ANTI D 300MCG',NULL,NULL,NULL,NULL,170,51,6),(1737,NULL,'ANTI D 150',NULL,NULL,NULL,NULL,170,51,6),(1738,NULL,'APCOD SACHET',NULL,NULL,NULL,NULL,178,51,6),(1739,NULL,'APCOD SOFTULE',NULL,NULL,NULL,NULL,168,51,6),(1740,NULL,'APCODOBIS',NULL,NULL,NULL,NULL,178,51,6),(1741,NULL,'APLICAPS',NULL,NULL,NULL,NULL,168,51,6),(1742,NULL,'APPLEVIT EVA SOFT',NULL,NULL,NULL,NULL,172,51,6),(1743,NULL,'APRON XL 60',NULL,NULL,NULL,NULL,167,51,6),(1744,NULL,'AQSUSTEN 25',NULL,NULL,NULL,NULL,170,51,6),(1745,NULL,'AREVIK',NULL,NULL,NULL,NULL,167,51,6),(1746,NULL,'ARGIPREG SACHET',NULL,NULL,NULL,NULL,178,51,6),(1747,NULL,'ARISTOZYME',NULL,NULL,NULL,NULL,169,51,6),(1748,NULL,'ARM SLING POUCH SMALL',NULL,NULL,NULL,NULL,175,51,6),(1749,NULL,'ARTACIL 2.5',NULL,NULL,NULL,NULL,170,51,6),(1750,NULL,'ASCAZIN',NULL,NULL,NULL,NULL,167,51,6),(1751,NULL,'ASCORIL SF SYRUP',NULL,NULL,NULL,NULL,169,51,6),(1752,NULL,'ASCORIL + EXPECTORANT',NULL,NULL,NULL,NULL,169,51,6),(1753,NULL,'ASCORIL D 100',NULL,NULL,NULL,NULL,169,51,6),(1754,NULL,'ASCORIL LS DROPS',NULL,NULL,NULL,NULL,169,51,6),(1755,NULL,'ASCORIL LS EXP',NULL,NULL,NULL,NULL,169,51,6),(1756,NULL,'ASTHABON',NULL,NULL,NULL,NULL,180,51,6),(1757,NULL,'ASTHALIN SYRUP',NULL,NULL,NULL,NULL,167,51,6),(1758,NULL,'ASTHALIN 2',NULL,NULL,NULL,NULL,167,51,6),(1759,NULL,'ASTHALIN RESPULES 2.5ML',NULL,NULL,NULL,NULL,180,51,6),(1760,NULL,'ASTHALIN-4',NULL,NULL,NULL,NULL,167,51,6),(1761,NULL,'ATARAX SYP',NULL,NULL,NULL,NULL,169,51,6),(1762,NULL,'ATARAX DROPS',NULL,NULL,NULL,NULL,167,51,6),(1763,NULL,'ATARAX-10',NULL,NULL,NULL,NULL,167,51,6),(1764,NULL,'ATARAX LOTION 100ML',NULL,NULL,NULL,NULL,NULL,51,6),(1765,NULL,'ATARAX- TAB 25 MG',NULL,NULL,NULL,NULL,167,51,6),(1766,NULL,'ATEN 25',NULL,NULL,NULL,NULL,167,51,6),(1767,NULL,'ATEN 50',NULL,NULL,NULL,NULL,167,51,6),(1768,NULL,'ATOGLA CREAM 100GM',NULL,NULL,NULL,NULL,181,51,6),(1769,NULL,'ATORMED 10mg',NULL,NULL,NULL,NULL,167,51,6),(1770,NULL,'ATORNET 10 TAB',NULL,NULL,NULL,NULL,167,51,6),(1771,NULL,'ATORVA 20 TAB',NULL,NULL,NULL,NULL,167,51,6),(1772,NULL,'ATROTAS 1ml',NULL,NULL,NULL,NULL,170,51,6),(1773,NULL,'AUGMENTIN 1000MG',NULL,NULL,NULL,NULL,167,51,6),(1774,NULL,'AUGMENTIN 375TAB',NULL,NULL,NULL,NULL,167,51,6),(1775,NULL,'AUGMENTIN 625 MG',NULL,NULL,NULL,NULL,174,51,6),(1776,NULL,'AUGMENTIN DDS SYP',NULL,NULL,NULL,NULL,167,51,6),(1777,NULL,'AUGMENTIN DUO',NULL,NULL,NULL,NULL,167,51,6),(1778,NULL,'AUGPEN DROPS 10ML',NULL,NULL,NULL,NULL,182,51,6),(1779,NULL,'AUGPEN DS 457 MG',NULL,NULL,NULL,NULL,179,51,6),(1780,NULL,'AUGPEN HS',NULL,NULL,NULL,NULL,169,51,6),(1781,NULL,'AVIL 25',NULL,NULL,NULL,NULL,167,51,6),(1782,NULL,'AVIL 2ML(AMPULE)',NULL,NULL,NULL,NULL,170,51,6),(1783,NULL,'AVOMINE TAB',NULL,NULL,NULL,NULL,167,51,6),(1784,NULL,'AZEL 500',NULL,NULL,NULL,NULL,167,51,6),(1785,NULL,'AZIBACT LR 100 SYP',NULL,NULL,NULL,NULL,179,51,6),(1786,NULL,'AZIBACT LR 200 SYP 200',NULL,NULL,NULL,NULL,169,51,6),(1787,NULL,'AZIDERM 20',NULL,NULL,NULL,NULL,181,51,6),(1788,NULL,'AZIPRL 100 SUS 30 ML 100 MG',NULL,NULL,NULL,NULL,183,51,6),(1789,NULL,'AZIPRL 200',NULL,NULL,NULL,NULL,169,51,6),(1790,NULL,'AZIRIL-500',NULL,NULL,NULL,NULL,167,51,6),(1791,NULL,'AZIROX 500',NULL,NULL,NULL,NULL,167,51,6),(1792,NULL,'AZITHCIN 500',NULL,NULL,NULL,NULL,167,51,6),(1793,NULL,'AZITHRAL 250 DT',NULL,NULL,NULL,NULL,167,51,6),(1794,NULL,'AZITHRAL -500',NULL,NULL,NULL,NULL,167,51,6),(1795,NULL,'AZITHRAL 100 LIQ15ML',NULL,NULL,NULL,NULL,167,51,6),(1796,NULL,'AZITHRAL 200 LIQ 15ML',NULL,NULL,NULL,NULL,167,51,6),(1797,NULL,'AZITHRAL 250',NULL,NULL,NULL,NULL,167,51,6),(1798,NULL,'AZITHRO 500',NULL,NULL,NULL,NULL,167,51,6),(1799,NULL,'AZTOGOLD 10',NULL,NULL,NULL,NULL,167,51,6),(1800,NULL,'AZTOR 10 TAB',NULL,NULL,NULL,NULL,167,51,6),(1801,NULL,'AZTOR 20 TAB',NULL,NULL,NULL,NULL,167,51,6),(1802,NULL,'AZTOR 5MG',NULL,NULL,NULL,NULL,167,51,6),(1803,NULL,'B-BACT OINT',NULL,NULL,NULL,NULL,167,51,6),(1804,NULL,'BABY WIPES 10 S',NULL,NULL,NULL,NULL,184,51,6),(1805,NULL,'BABY EXTRACTOR',NULL,NULL,NULL,NULL,167,51,6),(1806,NULL,'BABY GIFT BOX',NULL,NULL,NULL,NULL,167,51,6),(1807,NULL,'BABY KIT (HOLIDAY)',NULL,NULL,NULL,NULL,167,51,6),(1808,NULL,'BABY KIT[CLEAN CARE]',NULL,NULL,NULL,NULL,167,51,6),(1809,NULL,'BABY MASK',NULL,NULL,NULL,NULL,167,51,6),(1810,NULL,'BABY TAG',NULL,NULL,NULL,NULL,185,51,6),(1811,NULL,'BABYDEW',NULL,NULL,NULL,NULL,186,51,6),(1812,NULL,'BACTIGRAS 10 CM CM',NULL,NULL,NULL,NULL,174,51,6),(1813,NULL,'BAND AID WASH PROOF',NULL,NULL,NULL,NULL,167,51,6),(1814,NULL,'BAND SPOT',NULL,NULL,NULL,NULL,167,51,6),(1815,NULL,'BANDAGE CLOTH 10CM',NULL,NULL,NULL,NULL,167,51,6),(1816,NULL,'BANDAGE CLOTH 15CM',NULL,NULL,NULL,NULL,167,51,6),(1817,NULL,'BANDAGE CLOTH POP10CM',NULL,NULL,NULL,NULL,187,51,6),(1818,NULL,'BANDY PLUS SYRUP',NULL,NULL,NULL,NULL,167,51,6),(1819,NULL,'BANDY PLUS TAB',NULL,NULL,NULL,NULL,167,51,6),(1820,NULL,'BANDY TAB',NULL,NULL,NULL,NULL,167,51,6),(1821,NULL,'BANOCIDE FORTE',NULL,NULL,NULL,NULL,167,51,6),(1822,NULL,'BCG VACCINE (TUBER VAC )',NULL,NULL,NULL,NULL,167,51,6),(1823,NULL,'BECOSTAR DROPS',NULL,NULL,NULL,NULL,167,51,6),(1824,NULL,'BECOSULES',NULL,NULL,NULL,NULL,167,51,6),(1825,NULL,'BECTODINE 500ml',NULL,NULL,NULL,NULL,188,51,6),(1826,NULL,'BECTODINE SOLUTION 10%',NULL,NULL,NULL,NULL,188,51,6),(1827,NULL,'BED SHEET',NULL,NULL,NULL,NULL,174,51,6),(1828,NULL,'BENALGIS 100mg',NULL,NULL,NULL,NULL,167,51,6),(1829,NULL,'BENZAC AC',NULL,NULL,NULL,NULL,172,51,6),(1830,NULL,'BERBILIFE',NULL,NULL,NULL,NULL,167,51,6),(1831,NULL,'BETADINE 100ML SOLUTION',NULL,NULL,NULL,NULL,167,51,6),(1832,NULL,'BETADINE 15G OINTMENT 15 GM',NULL,NULL,NULL,NULL,167,51,6),(1833,NULL,'BETADINE 500ML SOLU',NULL,NULL,NULL,NULL,188,51,6),(1834,NULL,'BETADINE GARGLE 50',NULL,NULL,NULL,NULL,188,51,6),(1835,NULL,'BETADINE POWDER 10GM',NULL,NULL,NULL,NULL,189,51,6),(1836,NULL,'BETASTAL 1ML',NULL,NULL,NULL,NULL,170,51,6),(1837,NULL,'BETAVERT 8 10\'S',NULL,NULL,NULL,NULL,167,51,6),(1838,NULL,'BETNESOL INJ',NULL,NULL,NULL,NULL,167,51,6),(1839,NULL,'BETNESOL',NULL,NULL,NULL,NULL,167,51,6),(1840,NULL,'BETNI INJ',NULL,NULL,NULL,NULL,170,51,6),(1841,NULL,'BETNOVATE N 20 GM',NULL,NULL,NULL,NULL,167,51,6),(1842,NULL,'BETNOVATESKIN CREAM 20GM',NULL,NULL,NULL,NULL,167,51,6),(1843,NULL,'BEVAC 0.5 ML',NULL,NULL,NULL,NULL,170,51,6),(1844,NULL,'BEVAC 1ML',NULL,NULL,NULL,NULL,170,51,6),(1845,NULL,'BEVON SYP',NULL,NULL,NULL,NULL,167,51,6),(1846,NULL,'BFOLIC-D',NULL,NULL,NULL,NULL,167,51,6),(1847,NULL,'BHROON',NULL,NULL,NULL,NULL,167,51,6),(1848,NULL,'BIFILAC',NULL,NULL,NULL,NULL,167,51,6),(1849,NULL,'BIFILAC-HP',NULL,NULL,NULL,NULL,167,51,6),(1850,NULL,'BILAGET-M 20',NULL,NULL,NULL,NULL,167,51,6),(1851,NULL,'BILAVEL-M',NULL,NULL,NULL,NULL,167,51,6),(1852,NULL,'BILAZAP M',NULL,NULL,NULL,NULL,167,51,6),(1853,NULL,'BINDER(VELCRO) L',NULL,NULL,NULL,NULL,174,51,6),(1854,NULL,'BINDER(VELCRO) M',NULL,NULL,NULL,NULL,174,51,6),(1855,NULL,'BIOPOLIO',NULL,NULL,NULL,NULL,167,51,6),(1856,NULL,'BIOPOLIO 2ml',NULL,NULL,NULL,NULL,190,51,6),(1857,NULL,'BIOTREXATE (METHOTREXATE) 50mg',NULL,NULL,NULL,NULL,170,51,6),(1858,NULL,'BIPRAZONE 1.5 MG',NULL,NULL,NULL,NULL,170,51,6),(1859,NULL,'BIZFER XT',NULL,NULL,NULL,NULL,167,51,6),(1860,NULL,'BLOOD TRANSFUSION SET',NULL,NULL,NULL,NULL,167,51,6),(1861,NULL,'BLUMOX -500',NULL,NULL,NULL,NULL,167,51,6),(1862,NULL,'BOOSTRIX',NULL,NULL,NULL,NULL,190,51,6),(1863,NULL,'BOTROCLOT SOLUTION',NULL,NULL,NULL,NULL,191,51,6),(1864,NULL,'BRANCHOCID G CAP',NULL,NULL,NULL,NULL,168,51,6),(1865,NULL,'BRIOPAN 40MG',NULL,NULL,NULL,NULL,170,51,6),(1866,NULL,'BRONKOLYTE PD 60ML',NULL,NULL,NULL,NULL,169,51,6),(1867,NULL,'BRUFEN 200',NULL,NULL,NULL,NULL,167,51,6),(1868,NULL,'BUDE CORT 0.5MG',NULL,NULL,NULL,NULL,167,51,6),(1869,NULL,'BUDECORT 200',NULL,NULL,NULL,NULL,192,51,6),(1870,NULL,'BUDECORT 100INHALER',NULL,NULL,NULL,NULL,174,51,6),(1871,NULL,'BUPRIGESIC -A',NULL,NULL,NULL,NULL,167,51,6),(1872,NULL,'BUTODOL 1MG',NULL,NULL,NULL,NULL,167,51,6),(1873,NULL,'C TRI 1.0G V',NULL,NULL,NULL,NULL,167,51,6),(1874,NULL,'C TRI 1GM',NULL,NULL,NULL,NULL,167,51,6),(1875,NULL,'C TRI 250',NULL,NULL,NULL,NULL,167,51,6),(1876,NULL,'C TRI 500',NULL,NULL,NULL,NULL,167,51,6),(1877,NULL,'CABGOLIN 0.5',NULL,NULL,NULL,NULL,167,51,6),(1878,NULL,'CAESARIAN KIT(CAREON)',NULL,NULL,NULL,NULL,193,51,6),(1879,NULL,'CALACARE 100ml',NULL,NULL,NULL,NULL,194,51,6),(1880,NULL,'CALAPURE A 50ML',NULL,NULL,NULL,NULL,194,51,6),(1881,NULL,'CALCIUM SANDOZ INJ',NULL,NULL,NULL,NULL,167,51,6),(1882,NULL,'CALDOB TAB',NULL,NULL,NULL,NULL,167,51,6),(1883,NULL,'CALMPOSE',NULL,NULL,NULL,NULL,170,51,6),(1884,NULL,'CALPOL 250 SUS',NULL,NULL,NULL,NULL,167,51,6),(1885,NULL,'CALPOL 500MG',NULL,NULL,NULL,NULL,167,51,6),(1886,NULL,'CALPOL DROPS',NULL,NULL,NULL,NULL,167,51,6),(1887,NULL,'CALPOL PAED SUSP',NULL,NULL,NULL,NULL,167,51,6),(1888,NULL,'CALXITRATE-D',NULL,NULL,NULL,NULL,167,51,6),(1889,NULL,'CANAG-B 15GM',NULL,NULL,NULL,NULL,195,51,6),(1890,NULL,'CANDID 30 GM',NULL,NULL,NULL,NULL,181,51,6),(1891,NULL,'CANDID B CREAM 20 GM',NULL,NULL,NULL,NULL,167,51,6),(1892,NULL,'CANDID CREAM 20GM',NULL,NULL,NULL,NULL,167,51,6),(1893,NULL,'CANDID LOTION 20ML',NULL,NULL,NULL,NULL,167,51,6),(1894,NULL,'CANDID MOUTH PAINT 20ML',NULL,NULL,NULL,NULL,195,51,6),(1895,NULL,'CANDID POWDER 60GM',NULL,NULL,NULL,NULL,183,51,6),(1896,NULL,'CANDID V GEL',NULL,NULL,NULL,NULL,167,51,6),(1897,NULL,'CANDID V3',NULL,NULL,NULL,NULL,167,51,6),(1898,NULL,'CANDIFORCE 200',NULL,NULL,NULL,NULL,168,51,6),(1899,NULL,'CANDIFORCE 100 CAP',NULL,NULL,NULL,NULL,167,51,6),(1900,NULL,'CANDITRAL SB 130MG CAPS',NULL,NULL,NULL,NULL,167,51,6),(1901,NULL,'CANSOFT CL SUP',NULL,NULL,NULL,NULL,167,51,6),(1902,NULL,'CAP NURSES',NULL,NULL,NULL,NULL,174,51,6),(1903,NULL,'CAP SURGEONS',NULL,NULL,NULL,NULL,174,51,6),(1904,NULL,'CARIPILL',NULL,NULL,NULL,NULL,167,51,6),(1905,NULL,'CARITEC INJ',NULL,NULL,NULL,NULL,170,51,6),(1906,NULL,'CARMICIDE (PAEDIATRIC)',NULL,NULL,NULL,NULL,NULL,51,6),(1907,NULL,'CARMICIDE ADULT',NULL,NULL,NULL,NULL,167,51,6),(1908,NULL,'CARMICIDE DROPS',NULL,NULL,NULL,NULL,167,51,6),(1909,NULL,'CARTIPAD',NULL,NULL,NULL,NULL,167,51,6),(1910,NULL,'CASTER OIL 100ML',NULL,NULL,NULL,NULL,167,51,6),(1911,NULL,'CASTRO G 100',NULL,NULL,NULL,NULL,167,51,6),(1912,NULL,'CEFTAS -100',NULL,NULL,NULL,NULL,167,51,6),(1913,NULL,'CEFTAS 200',NULL,NULL,NULL,NULL,167,51,6),(1914,NULL,'CEFTUM 250',NULL,NULL,NULL,NULL,167,51,6),(1915,NULL,'CEFTUM 500 MG',NULL,NULL,NULL,NULL,167,51,6),(1916,NULL,'CELFEE 500',NULL,NULL,NULL,NULL,167,51,6),(1917,NULL,'CENTACAL',NULL,NULL,NULL,NULL,168,51,6),(1918,NULL,'CERVECAL BRACE L',NULL,NULL,NULL,NULL,196,51,6),(1919,NULL,'CERVICAL COLLER M',NULL,NULL,NULL,NULL,167,51,6),(1920,NULL,'CERVIFEN',NULL,NULL,NULL,NULL,167,51,6),(1921,NULL,'CHESTON COLD 10',NULL,NULL,NULL,NULL,167,51,6),(1922,NULL,'CHOPE 300 SR',NULL,NULL,NULL,NULL,167,51,6),(1923,NULL,'CHROMIC - 2_0 NW4241',NULL,NULL,NULL,NULL,167,51,6),(1924,NULL,'CHROMIFEM',NULL,NULL,NULL,NULL,167,51,6),(1925,NULL,'CHYMORAL FORTE',NULL,NULL,NULL,NULL,167,51,6),(1926,NULL,'CHYMOTHAL FORTE',NULL,NULL,NULL,NULL,167,51,6),(1927,NULL,'CILACAR 10MG',NULL,NULL,NULL,NULL,167,51,6),(1928,NULL,'CILAHEART- 10',NULL,NULL,NULL,NULL,167,51,6),(1929,NULL,'CILAHEART--5',NULL,NULL,NULL,NULL,167,51,6),(1930,NULL,'CILAHEART-T',NULL,NULL,NULL,NULL,167,51,6),(1931,NULL,'CIPLADIN 125GM',NULL,NULL,NULL,NULL,195,51,6),(1932,NULL,'CIPLOX -500',NULL,NULL,NULL,NULL,167,51,6),(1933,NULL,'CIPLOX -TZ',NULL,NULL,NULL,NULL,167,51,6),(1934,NULL,'CIPLOX OZ',NULL,NULL,NULL,NULL,167,51,6),(1935,NULL,'CIPMOX 500 CAP',NULL,NULL,NULL,NULL,168,51,6),(1936,NULL,'CIPZEN FORTE',NULL,NULL,NULL,NULL,167,51,6),(1937,NULL,'CITRALKA LIQUID',NULL,NULL,NULL,NULL,169,51,6),(1938,NULL,'CLARIBID GRANULES',NULL,NULL,NULL,NULL,179,51,6),(1939,NULL,'CLARINOVA 250 TAB',NULL,NULL,NULL,NULL,167,51,6),(1940,NULL,'CLAVICLE BRACE WITH VELCRO-CH',NULL,NULL,NULL,NULL,197,51,6),(1941,NULL,'CLEAR UTI ORAL',NULL,NULL,NULL,NULL,179,51,6),(1942,NULL,'CLEARWAX',NULL,NULL,NULL,NULL,NULL,51,6),(1943,NULL,'CLIM V3',NULL,NULL,NULL,NULL,167,51,6),(1944,NULL,'CLINGEN FORTE',NULL,NULL,NULL,NULL,198,51,6),(1945,NULL,'CLIQ 100',NULL,NULL,NULL,NULL,167,51,6),(1946,NULL,'CLOPILET A 75',NULL,NULL,NULL,NULL,167,51,6),(1947,NULL,'CLOPILET TAB',NULL,NULL,NULL,NULL,167,51,6),(1948,NULL,'CLOPILET A 150MG',NULL,NULL,NULL,NULL,167,51,6),(1949,NULL,'CLOSTAF 15gm',NULL,NULL,NULL,NULL,195,51,6),(1950,NULL,'CLOTNIL EP 40 INJ',NULL,NULL,NULL,NULL,170,51,6),(1951,NULL,'COBADEX CZS',NULL,NULL,NULL,NULL,167,51,6),(1952,NULL,'COCK UP SPLINT WRIST(L)',NULL,NULL,NULL,NULL,174,51,6),(1953,NULL,'COCOK UP SPLINT WRIST(M)',NULL,NULL,NULL,NULL,174,51,6),(1954,NULL,'COD CLAMP',NULL,NULL,NULL,NULL,167,51,6),(1955,NULL,'COFLORA',NULL,NULL,NULL,NULL,168,51,6),(1956,NULL,'COLICAID DROPS',NULL,NULL,NULL,NULL,167,51,6),(1957,NULL,'COLON IBS TAB',NULL,NULL,NULL,NULL,167,51,6),(1958,NULL,'COQ 300',NULL,NULL,NULL,NULL,168,51,6),(1959,NULL,'CORECTIA M',NULL,NULL,NULL,NULL,167,51,6),(1960,NULL,'COREX DX COUGH SYP',NULL,NULL,NULL,NULL,167,51,6),(1961,NULL,'COTTON 25GM',NULL,NULL,NULL,NULL,167,51,6),(1962,NULL,'COTTON 400GM',NULL,NULL,NULL,NULL,199,51,6),(1963,NULL,'COVONIA LS 100ml',NULL,NULL,NULL,NULL,169,51,6),(1964,NULL,'CRANMED CAP',NULL,NULL,NULL,NULL,168,51,6),(1965,NULL,'CREMAFFIN SYP',NULL,NULL,NULL,NULL,167,51,6),(1966,NULL,'CRINA N C R 10MG',NULL,NULL,NULL,NULL,167,51,6),(1967,NULL,'CTD 12.5',NULL,NULL,NULL,NULL,167,51,6),(1968,NULL,'CTD 6.25',NULL,NULL,NULL,NULL,167,51,6),(1969,NULL,'CTZ-LM',NULL,NULL,NULL,NULL,167,51,6),(1970,NULL,'CYCLOPAM',NULL,NULL,NULL,NULL,167,51,6),(1971,NULL,'CYCLOPAM A (INJ)',NULL,NULL,NULL,NULL,167,51,6),(1972,NULL,'CYCLOPAM SUSP',NULL,NULL,NULL,NULL,167,51,6),(1973,NULL,'CYCLOPAM SYP',NULL,NULL,NULL,NULL,167,51,6),(1974,NULL,'CYCLOPLUS',NULL,NULL,NULL,NULL,167,51,6),(1975,NULL,'CYCLOSET SYP',NULL,NULL,NULL,NULL,167,51,6),(1976,NULL,'CYNOMYCIN CAPS 100 MG',NULL,NULL,NULL,NULL,168,51,6),(1977,NULL,'CYSTONE',NULL,NULL,NULL,NULL,167,51,6),(1978,NULL,'CYSTOVA-DN',NULL,NULL,NULL,NULL,167,51,6),(1979,NULL,'D 10',NULL,NULL,NULL,NULL,200,51,6),(1980,NULL,'D BASK 60K',NULL,NULL,NULL,NULL,183,51,6),(1981,NULL,'D25 (INJECTION)',NULL,NULL,NULL,NULL,167,51,6),(1982,NULL,'D3 MUST 60 K',NULL,NULL,NULL,NULL,167,51,6),(1983,NULL,'D3 MUST DROPS',NULL,NULL,NULL,NULL,182,51,6),(1984,NULL,'D3 SHINE 60K',NULL,NULL,NULL,NULL,201,51,6),(1985,NULL,'D5 FLUIDS',NULL,NULL,NULL,NULL,167,51,6),(1986,NULL,'DAPASIS-10',NULL,NULL,NULL,NULL,167,51,6),(1987,NULL,'DAROLAC',NULL,NULL,NULL,NULL,178,51,6),(1988,NULL,'DECAMYCIN INJ',NULL,NULL,NULL,NULL,NULL,51,6),(1989,NULL,'DECOKIT SYP 60 ML',NULL,NULL,NULL,NULL,169,51,6),(1990,NULL,'DEFCORT 6MG',NULL,NULL,NULL,NULL,167,51,6),(1991,NULL,'DEFCORT ORAL SUSP',NULL,NULL,NULL,NULL,179,51,6),(1992,NULL,'DELICES DROPS',NULL,NULL,NULL,NULL,167,51,6),(1993,NULL,'DELICES DROPS Z',NULL,NULL,NULL,NULL,174,51,6),(1994,NULL,'DEMISONE',NULL,NULL,NULL,NULL,167,51,6),(1995,NULL,'DEPOMEDROL INJ 1ML',NULL,NULL,NULL,NULL,167,51,6),(1996,NULL,'DEPOPRED INJ 2ML',NULL,NULL,NULL,NULL,167,51,6),(1997,NULL,'DERIPHYLLIN',NULL,NULL,NULL,NULL,170,51,6),(1998,NULL,'DERIPHYLLIN RETARD 150',NULL,NULL,NULL,NULL,167,51,6),(1999,NULL,'DERIVA-CMS GEL',NULL,NULL,NULL,NULL,172,51,6),(2000,NULL,'DERMADEW BABY SOAP',NULL,NULL,NULL,NULL,167,51,6),(2001,NULL,'DERMADEW ACNE SOAP',NULL,NULL,NULL,NULL,NULL,51,6),(2002,NULL,'DERMADEW ALOE LOTION',NULL,NULL,NULL,NULL,167,51,6),(2003,NULL,'DERMADEW SOAP',NULL,NULL,NULL,NULL,174,51,6),(2004,NULL,'DERMADEW ALOE CREAM',NULL,NULL,NULL,NULL,167,51,6),(2005,NULL,'DEXAVAC 4MG',NULL,NULL,NULL,NULL,167,51,6),(2006,NULL,'DEXONA INJ',NULL,NULL,NULL,NULL,167,51,6),(2007,NULL,'DEXONA TAB',NULL,NULL,NULL,NULL,167,51,6),(2008,NULL,'DEXORANGE (P) SYP',NULL,NULL,NULL,NULL,169,51,6),(2009,NULL,'DEXORANGE (SYRUP)',NULL,NULL,NULL,NULL,169,51,6),(2010,NULL,'DEXTOMID 50mg',NULL,NULL,NULL,NULL,202,51,6),(2011,NULL,'DEXTOMID 100 mg',NULL,NULL,NULL,NULL,170,51,6),(2012,NULL,'DEXTROS 10 500ML',NULL,NULL,NULL,NULL,170,51,6),(2013,NULL,'DIAPER ADULT M',NULL,NULL,NULL,NULL,167,51,6),(2014,NULL,'DICLOGESIC GEL 30G',NULL,NULL,NULL,NULL,195,51,6),(2015,NULL,'DICLOKEM AQ INJ 75 MG',NULL,NULL,NULL,NULL,202,51,6),(2016,NULL,'DICYCLOVAC INJ 2 ML',NULL,NULL,NULL,NULL,202,51,6),(2017,NULL,'DIGEBION SYRUP',NULL,NULL,NULL,NULL,169,51,6),(2018,NULL,'DIGEMIN 200ML',NULL,NULL,NULL,NULL,179,51,6),(2019,NULL,'DIGENE',NULL,NULL,NULL,NULL,167,51,6),(2020,NULL,'DIGENE GEL 170ML',NULL,NULL,NULL,NULL,167,51,6),(2021,NULL,'DIGERAFT XT 150ml',NULL,NULL,NULL,NULL,179,51,6),(2022,NULL,'DINO 2',NULL,NULL,NULL,NULL,167,51,6),(2023,NULL,'DIS MATERNITY PAD M',NULL,NULL,NULL,NULL,174,51,6),(2024,NULL,'DISPOSIBLE MATERNITY PAD LARGE',NULL,NULL,NULL,NULL,174,51,6),(2025,NULL,'DISPOSIBLE PAD FIXATOR X LARGE',NULL,NULL,NULL,NULL,174,51,6),(2026,NULL,'DISPOSIBLE PAD FIXATOR XX LARGE',NULL,NULL,NULL,NULL,174,51,6),(2027,NULL,'DNS 500ML',NULL,NULL,NULL,NULL,167,51,6),(2028,NULL,'DOIL LINIMENT 30ml',NULL,NULL,NULL,NULL,NULL,51,6),(2029,NULL,'DOIL SPRAY 50ml',NULL,NULL,NULL,NULL,NULL,51,6),(2030,NULL,'DOLO 650',NULL,NULL,NULL,NULL,167,51,6),(2031,NULL,'DOLONEX 20 INJ',NULL,NULL,NULL,NULL,167,51,6),(2032,NULL,'DOLONEX DT',NULL,NULL,NULL,NULL,167,51,6),(2033,NULL,'DOMIN 5ML',NULL,NULL,NULL,NULL,170,51,6),(2034,NULL,'DOMSTAL 10MG',NULL,NULL,NULL,NULL,167,51,6),(2035,NULL,'DOXINATE',NULL,NULL,NULL,NULL,167,51,6),(2036,NULL,'DOXT100SL',NULL,NULL,NULL,NULL,167,51,6),(2037,NULL,'DRONIS 30',NULL,NULL,NULL,NULL,167,51,6),(2038,NULL,'DROXYL -500',NULL,NULL,NULL,NULL,167,51,6),(2039,NULL,'DROXYL 250 DT',NULL,NULL,NULL,NULL,167,51,6),(2040,NULL,'DULOTIN 10MG',NULL,NULL,NULL,NULL,167,51,6),(2041,NULL,'DUOLIN RESPULES',NULL,NULL,NULL,NULL,167,51,6),(2042,NULL,'DUPAMAC 100ml',NULL,NULL,NULL,NULL,169,51,6),(2043,NULL,'DUPHALAC 100ML',NULL,NULL,NULL,NULL,167,51,6),(2044,NULL,'DUPHALAC 250ml',NULL,NULL,NULL,NULL,183,51,6),(2045,NULL,'DUPHASTONE 10 MG',NULL,NULL,NULL,NULL,167,51,6),(2046,NULL,'DUVADILAN RTARD 40',NULL,NULL,NULL,NULL,167,51,6),(2047,NULL,'DUVALDIAN',NULL,NULL,NULL,NULL,167,51,6),(2048,NULL,'DYDROFEM',NULL,NULL,NULL,NULL,167,51,6),(2049,NULL,'DYDROZON',NULL,NULL,NULL,NULL,167,51,6),(2050,NULL,'DYDROZOX',NULL,NULL,NULL,NULL,167,51,6),(2051,NULL,'DYNAGLIPT20',NULL,NULL,NULL,NULL,167,51,6),(2052,NULL,'DYNALON DN3328 3-0',NULL,NULL,NULL,NULL,NULL,51,6),(2053,NULL,'EASY FIX MIDIUM',NULL,NULL,NULL,NULL,167,51,6),(2054,NULL,'ECOFLORA',NULL,NULL,NULL,NULL,168,51,6),(2055,NULL,'ECOSPIRIN 75',NULL,NULL,NULL,NULL,167,51,6),(2056,NULL,'ECOSPRIN 150',NULL,NULL,NULL,NULL,167,51,6),(2057,NULL,'ECOSPRIN AV 75 CAP',NULL,NULL,NULL,NULL,167,51,6),(2058,NULL,'EFFERKAL D',NULL,NULL,NULL,NULL,167,51,6),(2059,NULL,'EFFON HP 75 INJ',NULL,NULL,NULL,NULL,170,51,6),(2060,NULL,'EFIPRRES INJECTION 1ML',NULL,NULL,NULL,NULL,167,51,6),(2061,NULL,'ELACAL',NULL,NULL,NULL,NULL,167,51,6),(2062,NULL,'ELACAL MOM',NULL,NULL,NULL,NULL,167,51,6),(2063,NULL,'ELDOPAR CAPS',NULL,NULL,NULL,NULL,167,51,6),(2064,NULL,'ELDOPER',NULL,NULL,NULL,NULL,167,51,6),(2065,NULL,'ELROSE',NULL,NULL,NULL,NULL,168,51,6),(2066,NULL,'EMBRYOFIX-FG 5gm',NULL,NULL,NULL,NULL,178,51,6),(2067,NULL,'EMESET 2ML A',NULL,NULL,NULL,NULL,167,51,6),(2068,NULL,'EMESET 4',NULL,NULL,NULL,NULL,167,51,6),(2069,NULL,'EMESET SYP',NULL,NULL,NULL,NULL,167,51,6),(2070,NULL,'EMILY',NULL,NULL,NULL,NULL,184,51,6),(2071,NULL,'ENCLAV-KID 30ML',NULL,NULL,NULL,NULL,179,51,6),(2072,NULL,'ENCORATE CHRONO 300MG',NULL,NULL,NULL,NULL,167,51,6),(2073,NULL,'ENCORATECHRONO 200MG 200MG',NULL,NULL,NULL,NULL,167,51,6),(2074,NULL,'ENDOGRACE M',NULL,NULL,NULL,NULL,168,51,6),(2075,NULL,'ENDOMED',NULL,NULL,NULL,NULL,174,51,6),(2076,NULL,'ENDOSIS CAP',NULL,NULL,NULL,NULL,168,51,6),(2077,NULL,'ENDOTRACHEAL TUBE 2.5',NULL,NULL,NULL,NULL,203,51,6),(2078,NULL,'ENDOTRACHEAL TUBE 6.5',NULL,NULL,NULL,NULL,NULL,51,6),(2079,NULL,'ENDOTRACHEALTUBE 7.5',NULL,NULL,NULL,NULL,167,51,6),(2080,NULL,'ENDOTRACHEALTUBE 8.0',NULL,NULL,NULL,NULL,177,51,6),(2081,NULL,'ENDOTRACHIAL TUBE NO 7',NULL,NULL,NULL,NULL,167,51,6),(2082,NULL,'ENJOYPRO-1200GM',NULL,NULL,NULL,NULL,189,51,6),(2083,NULL,'ENOXARIN 40mg',NULL,NULL,NULL,NULL,170,51,6),(2084,NULL,'ENRICAL',NULL,NULL,NULL,NULL,167,51,6),(2085,NULL,'ENTCOF',NULL,NULL,NULL,NULL,169,51,6),(2086,NULL,'ENTCOF LS 100ML',NULL,NULL,NULL,NULL,169,51,6),(2087,NULL,'ENTCOLD SYRUP',NULL,NULL,NULL,NULL,169,51,6),(2088,NULL,'ENTEROGERMINA',NULL,NULL,NULL,NULL,167,51,6),(2089,NULL,'ENUFF CAP 100',NULL,NULL,NULL,NULL,167,51,6),(2090,NULL,'ENVAS 5',NULL,NULL,NULL,NULL,167,51,6),(2091,NULL,'EPIDOSIN A',NULL,NULL,NULL,NULL,167,51,6),(2092,NULL,'EPIDURAL KIT',NULL,NULL,NULL,NULL,167,51,6),(2093,NULL,'EPTOIN INJECTION',NULL,NULL,NULL,NULL,167,51,6),(2094,NULL,'ESTROPLUS 21',NULL,NULL,NULL,NULL,167,51,6),(2095,NULL,'ETHILON 2-0 NW3336',NULL,NULL,NULL,NULL,174,51,6),(2096,NULL,'ETHILON 3-0 NW 3321',NULL,NULL,NULL,NULL,174,51,6),(2097,NULL,'ETHILON 3_0 NW3328',NULL,NULL,NULL,NULL,174,51,6),(2098,NULL,'ETHISTRONE CR 10',NULL,NULL,NULL,NULL,167,51,6),(2099,NULL,'EUSKIN 100gm',NULL,NULL,NULL,NULL,181,51,6),(2100,NULL,'EVA PREGNENCY KIT',NULL,NULL,NULL,NULL,193,51,6),(2101,NULL,'EVAC 100ML',NULL,NULL,NULL,NULL,204,51,6),(2102,NULL,'EVAC ENEMA',NULL,NULL,NULL,NULL,167,51,6),(2103,NULL,'EVAGON HP 75',NULL,NULL,NULL,NULL,205,51,6),(2104,NULL,'EVERWHITE 1200',NULL,NULL,NULL,NULL,170,51,6),(2105,NULL,'EVION -400',NULL,NULL,NULL,NULL,167,51,6),(2106,NULL,'EVION -600',NULL,NULL,NULL,NULL,167,51,6),(2107,NULL,'EVION LC',NULL,NULL,NULL,NULL,167,51,6),(2108,NULL,'FACE MASK',NULL,NULL,NULL,NULL,174,51,6),(2109,NULL,'FACEMOIST CREAM',NULL,NULL,NULL,NULL,NULL,51,6),(2110,NULL,'FACILE BATH NEW',NULL,NULL,NULL,NULL,206,51,6),(2111,NULL,'FACILE RAZER',NULL,NULL,NULL,NULL,NULL,51,6),(2112,NULL,'FAVAMIN',NULL,NULL,NULL,NULL,168,51,6),(2113,NULL,'FEBREX PLUS TAB',NULL,NULL,NULL,NULL,167,51,6),(2114,NULL,'FECHASE',NULL,NULL,NULL,NULL,167,51,6),(2115,NULL,'FEEDY 5',NULL,NULL,NULL,NULL,174,51,6),(2116,NULL,'FEEDY 6',NULL,NULL,NULL,NULL,174,51,6),(2117,NULL,'FEETGLO CREAM 25GM',NULL,NULL,NULL,NULL,181,51,6),(2118,NULL,'FEGAIN',NULL,NULL,NULL,NULL,167,51,6),(2119,NULL,'FEMGOLIX 150 10',NULL,NULL,NULL,NULL,167,51,6),(2120,NULL,'FEMILOSH 100ml',NULL,NULL,NULL,NULL,174,51,6),(2121,NULL,'FENZA 600MG',NULL,NULL,NULL,NULL,167,51,6),(2122,NULL,'FENZA CREAM',NULL,NULL,NULL,NULL,181,51,6),(2123,NULL,'FEPANIL DROPS',NULL,NULL,NULL,NULL,167,51,6),(2124,NULL,'FEPANIL 125 MG SUSP 60ML',NULL,NULL,NULL,NULL,167,51,6),(2125,NULL,'FEPANIL 250 SYP',NULL,NULL,NULL,NULL,167,51,6),(2126,NULL,'FERAZONE XT',NULL,NULL,NULL,NULL,167,51,6),(2127,NULL,'FERIGEM GOLD',NULL,NULL,NULL,NULL,167,51,6),(2128,NULL,'FERONIA - XT SUSPENSION',NULL,NULL,NULL,NULL,167,51,6),(2129,NULL,'FERONIA-XT TAB',NULL,NULL,NULL,NULL,167,51,6),(2130,NULL,'FERTIPINK',NULL,NULL,NULL,NULL,167,51,6),(2131,NULL,'FIBISAFE 25',NULL,NULL,NULL,NULL,167,51,6),(2132,NULL,'FIBROEASE 25',NULL,NULL,NULL,NULL,167,51,6),(2133,NULL,'FINFER',NULL,NULL,NULL,NULL,167,51,6),(2134,NULL,'FINGER COT',NULL,NULL,NULL,NULL,174,51,6),(2135,NULL,'FIXZER 200',NULL,NULL,NULL,NULL,167,51,6),(2136,NULL,'FLAGYL 400 MG',NULL,NULL,NULL,NULL,167,51,6),(2137,NULL,'FLAGYL 200 MG',NULL,NULL,NULL,NULL,167,51,6),(2138,NULL,'FLAGYL INJ',NULL,NULL,NULL,NULL,167,51,6),(2139,NULL,'FLAGYL SUSP 100ML',NULL,NULL,NULL,NULL,167,51,6),(2140,NULL,'FLAGYL SUSP. 60ML',NULL,NULL,NULL,NULL,167,51,6),(2141,NULL,'FLAKE OFF P SOLUTION 1',NULL,NULL,NULL,NULL,174,51,6),(2142,NULL,'FLAVOCAL SOFT GEL',NULL,NULL,NULL,NULL,167,51,6),(2143,NULL,'FLEXY MASK(ADULT) O2',NULL,NULL,NULL,NULL,207,51,6),(2144,NULL,'FLORAFY V TAB 8',NULL,NULL,NULL,NULL,168,51,6),(2145,NULL,'FLORITA LL',NULL,NULL,NULL,NULL,168,51,6),(2146,NULL,'FLOXIP IV',NULL,NULL,NULL,NULL,170,51,6),(2147,NULL,'FLOXIP-TZ',NULL,NULL,NULL,NULL,167,51,6),(2148,NULL,'FLUARIX TETRA NH STRAIN 0.5ml',NULL,NULL,NULL,NULL,NULL,51,6),(2149,NULL,'FLUCOLD AF 60ml',NULL,NULL,NULL,NULL,169,51,6),(2150,NULL,'FLUCOLD AF DROPS',NULL,NULL,NULL,NULL,182,51,6),(2151,NULL,'FLUKA 150',NULL,NULL,NULL,NULL,167,51,6),(2152,NULL,'FLUVIR 75ml',NULL,NULL,NULL,NULL,169,51,6),(2153,NULL,'FLUVIR CAP 75 MG',NULL,NULL,NULL,NULL,NULL,51,6),(2154,NULL,'FOLEO M',NULL,NULL,NULL,NULL,167,51,6),(2155,NULL,'FOLITRAX 15MG',NULL,NULL,NULL,NULL,167,51,6),(2156,NULL,'FOLLIHAIR NEW',NULL,NULL,NULL,NULL,167,51,6),(2157,NULL,'FOLVITE -5',NULL,NULL,NULL,NULL,167,51,6),(2158,NULL,'FOLYS CATHETER 14',NULL,NULL,NULL,NULL,167,51,6),(2159,NULL,'FOLYS CATHETER 16',NULL,NULL,NULL,NULL,208,51,6),(2160,NULL,'FOLYS CATHETER 18',NULL,NULL,NULL,NULL,167,51,6),(2161,NULL,'FOLYS CATHETER 12',NULL,NULL,NULL,NULL,174,51,6),(2162,NULL,'FOPYMIN ACT TAB',NULL,NULL,NULL,NULL,167,51,6),(2163,NULL,'FORACORT 200 INHALER',NULL,NULL,NULL,NULL,167,51,6),(2164,NULL,'FORCAN 150',NULL,NULL,NULL,NULL,167,51,6),(2165,NULL,'FORKET SYP 100ML',NULL,NULL,NULL,NULL,174,51,6),(2166,NULL,'FORNICANE CREAM 30gm',NULL,NULL,NULL,NULL,NULL,51,6),(2167,NULL,'FRACFAST MVT',NULL,NULL,NULL,NULL,167,51,6),(2168,NULL,'FRANCIP-D EYE/EAR',NULL,NULL,NULL,NULL,182,51,6),(2169,NULL,'FREELIV M 100ML',NULL,NULL,NULL,NULL,169,51,6),(2170,NULL,'FRISIUM 5',NULL,NULL,NULL,NULL,167,51,6),(2171,NULL,'FRNSIX 2ML',NULL,NULL,NULL,NULL,170,51,6),(2172,NULL,'FUCIBET',NULL,NULL,NULL,NULL,181,51,6),(2173,NULL,'FULFLORA 60ML',NULL,NULL,NULL,NULL,169,51,6),(2174,NULL,'FUROSEPTIM',NULL,NULL,NULL,NULL,167,51,6),(2175,NULL,'FUSIVAL OINMENT',NULL,NULL,NULL,NULL,167,51,6),(2176,NULL,'GABANTIN 100 CAP',NULL,NULL,NULL,NULL,167,51,6),(2177,NULL,'GABAWIN 50',NULL,NULL,NULL,NULL,167,51,6),(2178,NULL,'GARDASIL 0.5 ML',NULL,NULL,NULL,NULL,205,51,6),(2179,NULL,'GARDENAL SYP',NULL,NULL,NULL,NULL,167,51,6),(2180,NULL,'GAUZE 100CM',NULL,NULL,NULL,NULL,NULL,51,6),(2181,NULL,'GAUZE SWAB 10',NULL,NULL,NULL,NULL,209,51,6),(2182,NULL,'GELUSIL TAB',NULL,NULL,NULL,NULL,167,51,6),(2183,NULL,'GELUSIL MPS PET LIQ',NULL,NULL,NULL,NULL,169,51,6),(2184,NULL,'GELUSIL SYP',NULL,NULL,NULL,NULL,167,51,6),(2185,NULL,'GEMER 1',NULL,NULL,NULL,NULL,167,51,6),(2186,NULL,'GEMER 2MG',NULL,NULL,NULL,NULL,167,51,6),(2187,NULL,'GEMYCINE 250',NULL,NULL,NULL,NULL,167,51,6),(2188,NULL,'GEMYCINE 500',NULL,NULL,NULL,NULL,167,51,6),(2189,NULL,'GENEVAC B ADULT',NULL,NULL,NULL,NULL,167,51,6),(2190,NULL,'GENEVAC B',NULL,NULL,NULL,NULL,167,51,6),(2191,NULL,'GENEVAC B PED VACCINE 0.5ml',NULL,NULL,NULL,NULL,183,51,6),(2192,NULL,'GENVO PLUS',NULL,NULL,NULL,NULL,168,51,6),(2193,NULL,'GERAGENE/E DROPS',NULL,NULL,NULL,NULL,182,51,6),(2194,NULL,'GERBISA CHILD(SUPPOSITORY)',NULL,NULL,NULL,NULL,210,51,6),(2195,NULL,'GERBISA SUPPOSITORIES 10MG',NULL,NULL,NULL,NULL,210,51,6),(2196,NULL,'GERBISA TAB',NULL,NULL,NULL,NULL,167,51,6),(2197,NULL,'GESTMATE 200 TAB',NULL,NULL,NULL,NULL,167,51,6),(2198,NULL,'GESTO KIT 200',NULL,NULL,NULL,NULL,174,51,6),(2199,NULL,'GESTOFIT 300 SR 300 MG',NULL,NULL,NULL,NULL,167,51,6),(2200,NULL,'GLADSOFT MOIST 100ML',NULL,NULL,NULL,NULL,194,51,6),(2201,NULL,'GLADVERT',NULL,NULL,NULL,NULL,167,51,6),(2202,NULL,'GLIMER 1MG TAB',NULL,NULL,NULL,NULL,167,51,6),(2203,NULL,'GLIMIFIX M 2MG TAB',NULL,NULL,NULL,NULL,167,51,6),(2204,NULL,'GLIMY 1',NULL,NULL,NULL,NULL,167,51,6),(2205,NULL,'GLIMY2',NULL,NULL,NULL,NULL,167,51,6),(2206,NULL,'GLINIX M2',NULL,NULL,NULL,NULL,167,51,6),(2207,NULL,'GLINIX-M1',NULL,NULL,NULL,NULL,167,51,6),(2208,NULL,'GLOVES 6',NULL,NULL,NULL,NULL,167,51,6),(2209,NULL,'GLOVES 6.5',NULL,NULL,NULL,NULL,167,51,6),(2210,NULL,'GLOVES 7',NULL,NULL,NULL,NULL,167,51,6),(2211,NULL,'GLOVES 7.5',NULL,NULL,NULL,NULL,167,51,6),(2212,NULL,'GLOVES 6 POWDWE FREE',NULL,NULL,NULL,NULL,189,51,6),(2213,NULL,'GLOVES 6.5 POWDER FREE (SURGICARE)',NULL,NULL,NULL,NULL,174,51,6),(2214,NULL,'GLUCOSE 75MG',NULL,NULL,NULL,NULL,167,51,6),(2215,NULL,'GLUCOSTIC D 100GM',NULL,NULL,NULL,NULL,NULL,51,6),(2216,NULL,'GLYCIPHAGE',NULL,NULL,NULL,NULL,167,51,6),(2217,NULL,'GLYCIPHAGE SR',NULL,NULL,NULL,NULL,167,51,6),(2218,NULL,'GOLPENT-NT',NULL,NULL,NULL,NULL,167,51,6),(2219,NULL,'GOODAY',NULL,NULL,NULL,NULL,167,51,6),(2220,NULL,'GYNEMIX 200ML',NULL,NULL,NULL,NULL,169,51,6),(2221,NULL,'GYPSONA 10CM',NULL,NULL,NULL,NULL,NULL,51,6),(2222,NULL,'GYPSONA 15CM',NULL,NULL,NULL,NULL,NULL,51,6),(2223,NULL,'HAEMACEEL INFUSION',NULL,NULL,NULL,NULL,167,51,6),(2224,NULL,'HALCET 100ml',NULL,NULL,NULL,NULL,211,51,6),(2225,NULL,'HALOTHANE 250ML',NULL,NULL,NULL,NULL,174,51,6),(2226,NULL,'HAND SANITIZER 500ml',NULL,NULL,NULL,NULL,NULL,51,6),(2227,NULL,'HAPLOID M',NULL,NULL,NULL,NULL,167,51,6),(2228,NULL,'HAPPY NAP',NULL,NULL,NULL,NULL,181,51,6),(2229,NULL,'HAVRIX',NULL,NULL,NULL,NULL,170,51,6),(2230,NULL,'HBCOM SACHETS',NULL,NULL,NULL,NULL,178,51,6),(2231,NULL,'HBSAG KIT DCH IVE',NULL,NULL,NULL,NULL,193,51,6),(2232,NULL,'HCQS 300',NULL,NULL,NULL,NULL,167,51,6),(2233,NULL,'HERMIN INJ',NULL,NULL,NULL,NULL,167,51,6),(2234,NULL,'HERPERAX 400',NULL,NULL,NULL,NULL,167,51,6),(2235,NULL,'HERPERAX 800TAB',NULL,NULL,NULL,NULL,167,51,6),(2236,NULL,'HERPEREX OINT',NULL,NULL,NULL,NULL,167,51,6),(2237,NULL,'HERPEX 400 MG',NULL,NULL,NULL,NULL,167,51,6),(2238,NULL,'HETRAZAN 100',NULL,NULL,NULL,NULL,167,51,6),(2239,NULL,'HEXASIL PFS',NULL,NULL,NULL,NULL,205,51,6),(2240,NULL,'HH AZI 250',NULL,NULL,NULL,NULL,167,51,6),(2241,NULL,'HHAMCLAV D/SYRUP',NULL,NULL,NULL,NULL,169,51,6),(2242,NULL,'HHAMCLAV DS DRY 457',NULL,NULL,NULL,NULL,169,51,6),(2243,NULL,'HHCEFI DRY 50',NULL,NULL,NULL,NULL,169,51,6),(2244,NULL,'HHCEFPOD/SYRUP 100',NULL,NULL,NULL,NULL,169,51,6),(2245,NULL,'HHCEPO 200',NULL,NULL,NULL,NULL,167,51,6),(2246,NULL,'HHCEPO DRY',NULL,NULL,NULL,NULL,169,51,6),(2247,NULL,'HHLEVO',NULL,NULL,NULL,NULL,167,51,6),(2248,NULL,'HHLEVO M KID',NULL,NULL,NULL,NULL,169,51,6),(2249,NULL,'HHLEVO- M KID',NULL,NULL,NULL,NULL,167,51,6),(2250,NULL,'HHLEVO-M',NULL,NULL,NULL,NULL,167,51,6),(2251,NULL,'HHLINCTUS SYP',NULL,NULL,NULL,NULL,169,51,6),(2252,NULL,'HHSONE',NULL,NULL,NULL,NULL,181,51,6),(2253,NULL,'HIMALAYA RASH FREECREAM',NULL,NULL,NULL,NULL,181,51,6),(2254,NULL,'HOMISURE PLUS',NULL,NULL,NULL,NULL,170,51,6),(2255,NULL,'HOMISURE TAB',NULL,NULL,NULL,NULL,167,51,6),(2256,NULL,'HOT WATER BAG',NULL,NULL,NULL,NULL,167,51,6),(2257,NULL,'HUMINSULIN 30/70',NULL,NULL,NULL,NULL,167,51,6),(2258,NULL,'HYDROCORT - 100 INJ',NULL,NULL,NULL,NULL,170,51,6),(2259,NULL,'HYDROGEN PEROXIDE 100ML',NULL,NULL,NULL,NULL,167,51,6),(2260,NULL,'HYDROGEN PEROXIDE 450ML',NULL,NULL,NULL,NULL,183,51,6),(2261,NULL,'HYSIN 16',NULL,NULL,NULL,NULL,167,51,6),(2262,NULL,'IBUGESIC PLUS SUS',NULL,NULL,NULL,NULL,167,51,6),(2263,NULL,'IBUGESIC PLUS SUS 60ML',NULL,NULL,NULL,NULL,NULL,51,6),(2264,NULL,'ILATAB 150',NULL,NULL,NULL,NULL,167,51,6),(2265,NULL,'INFANRIX HEXA',NULL,NULL,NULL,NULL,190,51,6),(2266,NULL,'INSUGEN INJ',NULL,NULL,NULL,NULL,170,51,6),(2267,NULL,'INSULIN SYRINGE',NULL,NULL,NULL,NULL,167,51,6),(2268,NULL,'INTRAZONE-S 1.5GM 25',NULL,NULL,NULL,NULL,170,51,6),(2269,NULL,'IROMITS XT TAB',NULL,NULL,NULL,NULL,167,51,6),(2270,NULL,'ISIBRO',NULL,NULL,NULL,NULL,167,51,6),(2271,NULL,'ISIVIT',NULL,NULL,NULL,NULL,167,51,6),(2272,NULL,'ITOR 40',NULL,NULL,NULL,NULL,167,51,6),(2273,NULL,'ITOR 10MG',NULL,NULL,NULL,NULL,167,51,6),(2274,NULL,'ITRAGEL 15GM',NULL,NULL,NULL,NULL,172,51,6),(2275,NULL,'IV CANILA (BLUE) 22',NULL,NULL,NULL,NULL,167,51,6),(2276,NULL,'IV CANILA (GREEN) 18',NULL,NULL,NULL,NULL,167,51,6),(2277,NULL,'IV CANILA (ROSE) 20',NULL,NULL,NULL,NULL,167,51,6),(2278,NULL,'IV CANNULA 18 (GREEN) 2',NULL,NULL,NULL,NULL,NULL,51,6),(2279,NULL,'IV CANNULA 20(ROSE) 2',NULL,NULL,NULL,NULL,NULL,51,6),(2280,NULL,'IV CANNULA 22(BLUE) 2',NULL,NULL,NULL,NULL,NULL,51,6),(2281,NULL,'IV CANNULA YELLOW 24',NULL,NULL,NULL,NULL,167,51,6),(2282,NULL,'IV SET',NULL,NULL,NULL,NULL,174,51,6),(2283,NULL,'IVEPRED 8MG',NULL,NULL,NULL,NULL,167,51,6),(2284,NULL,'IVREA SHAMPOO',NULL,NULL,NULL,NULL,NULL,51,6),(2285,NULL,'JONAC SUPP',NULL,NULL,NULL,NULL,167,51,6),(2286,NULL,'JUNIOR LANZOL 15 15',NULL,NULL,NULL,NULL,167,51,6),(2287,NULL,'K MAC UTI SY 100ML',NULL,NULL,NULL,NULL,169,51,6),(2288,NULL,'KAINOCET 10MG',NULL,NULL,NULL,NULL,167,51,6),(2289,NULL,'KARVOL PLUS',NULL,NULL,NULL,NULL,167,51,6),(2290,NULL,'KEFPOD 100 DT',NULL,NULL,NULL,NULL,167,51,6),(2291,NULL,'KEFPOD 200',NULL,NULL,NULL,NULL,167,51,6),(2292,NULL,'KEFPOD ORANGE SUS 30ML',NULL,NULL,NULL,NULL,179,51,6),(2293,NULL,'KEFPOD100 ORANGE SUS 30ML',NULL,NULL,NULL,NULL,183,51,6),(2294,NULL,'KELAC',NULL,NULL,NULL,NULL,167,51,6),(2295,NULL,'KELAC INJ',NULL,NULL,NULL,NULL,170,51,6),(2296,NULL,'KEMOBET INJ',NULL,NULL,NULL,NULL,170,51,6),(2297,NULL,'KENACORT 10',NULL,NULL,NULL,NULL,170,51,6),(2298,NULL,'KENACORT 40 INJ',NULL,NULL,NULL,NULL,174,51,6),(2299,NULL,'KENADION INJ',NULL,NULL,NULL,NULL,167,51,6),(2300,NULL,'KETANOV INJ',NULL,NULL,NULL,NULL,NULL,51,6),(2301,NULL,'KETOROL A',NULL,NULL,NULL,NULL,170,51,6),(2302,NULL,'KETOROL-TAB',NULL,NULL,NULL,NULL,167,51,6),(2303,NULL,'KETOSTAR 50GM',NULL,NULL,NULL,NULL,186,51,6),(2304,NULL,'KETOSTAR 50ML DANDRUFF',NULL,NULL,NULL,NULL,194,51,6),(2305,NULL,'KINMOL IV 100ML',NULL,NULL,NULL,NULL,170,51,6),(2306,NULL,'KIRSCHNER WIRE 6\'\'LONG 1.5CM',NULL,NULL,NULL,NULL,212,51,6),(2307,NULL,'KIRSCHNER WIRE 6\'\'LONG 1.8MM',NULL,NULL,NULL,NULL,212,51,6),(2308,NULL,'KIRSCHNER WIRE 6\'\'LONG 2MM',NULL,NULL,NULL,NULL,212,51,6),(2309,NULL,'KIWI CUP COMPLEATE VACCUM SYSTEM',NULL,NULL,NULL,NULL,NULL,51,6),(2310,NULL,'WITH PUMP',NULL,NULL,NULL,NULL,174,51,6),(2311,NULL,'KNEE CAP SMALL',NULL,NULL,NULL,NULL,167,51,6),(2312,NULL,'KNEE CAP LARGE',NULL,NULL,NULL,NULL,167,51,6),(2313,NULL,'KNEE IMMOBLISER Medium',NULL,NULL,NULL,NULL,NULL,51,6),(2314,NULL,'KNEE IMMOBLISER XL',NULL,NULL,NULL,NULL,NULL,51,6),(2315,NULL,'KNEE SUPPORT PLAIN (L)',NULL,NULL,NULL,NULL,168,51,6),(2316,NULL,'KRIMSON 35',NULL,NULL,NULL,NULL,167,51,6),(2317,NULL,'KUFRIL LS',NULL,NULL,NULL,NULL,169,51,6),(2318,NULL,'L S CORSET ELNOVA( S )DYNA',NULL,NULL,NULL,NULL,197,51,6),(2319,NULL,'L-MEACT',NULL,NULL,NULL,NULL,167,51,6),(2320,NULL,'LABEBET 100',NULL,NULL,NULL,NULL,167,51,6),(2321,NULL,'LABEBET INJ',NULL,NULL,NULL,NULL,170,51,6),(2322,NULL,'LABLOL',NULL,NULL,NULL,NULL,170,51,6),(2323,NULL,'LACTACYD 100ml',NULL,NULL,NULL,NULL,198,51,6),(2324,NULL,'LACTARE',NULL,NULL,NULL,NULL,167,51,6),(2325,NULL,'LACTARE GRANUELS',NULL,NULL,NULL,NULL,167,51,6),(2326,NULL,'LACTODEX 1STARTER 500GM',NULL,NULL,NULL,NULL,167,51,6),(2327,NULL,'LALDOX-LB',NULL,NULL,NULL,NULL,NULL,51,6),(2328,NULL,'LAPROSCOPY KIT',NULL,NULL,NULL,NULL,NULL,51,6),(2329,NULL,'LARIFINAC TH4',NULL,NULL,NULL,NULL,167,51,6),(2330,NULL,'LASIX 2ML(AMPULE)',NULL,NULL,NULL,NULL,167,51,6),(2331,NULL,'LASIX TAB',NULL,NULL,NULL,NULL,167,51,6),(2332,NULL,'LATEX EXAM GLOVES',NULL,NULL,NULL,NULL,193,51,6),(2333,NULL,'LATEX EXAM GLOVES LARGE',NULL,NULL,NULL,NULL,213,51,6),(2334,NULL,'LECAL D3 NANO SHOT',NULL,NULL,NULL,NULL,188,51,6),(2335,NULL,'LECAL FORTE',NULL,NULL,NULL,NULL,167,51,6),(2336,NULL,'LEGGINSE',NULL,NULL,NULL,NULL,174,51,6),(2337,NULL,'LETFEM 2.5',NULL,NULL,NULL,NULL,167,51,6),(2338,NULL,'LETSURE 5',NULL,NULL,NULL,NULL,167,51,6),(2339,NULL,'LETWELL',NULL,NULL,NULL,NULL,167,51,6),(2340,NULL,'LETZOVA',NULL,NULL,NULL,NULL,167,51,6),(2341,NULL,'LEUKOPOR 1INC',NULL,NULL,NULL,NULL,167,51,6),(2342,NULL,'LEUKOPOR TRANSPARANT',NULL,NULL,NULL,NULL,167,51,6),(2343,NULL,'LEVACETAM 500',NULL,NULL,NULL,NULL,167,51,6),(2344,NULL,'LEVESAM 250',NULL,NULL,NULL,NULL,167,51,6),(2345,NULL,'LEVOCET TAB',NULL,NULL,NULL,NULL,167,51,6),(2346,NULL,'LEVOFLOX 500',NULL,NULL,NULL,NULL,167,51,6),(2347,NULL,'LEVOLI.63 RESP 2.5ML',NULL,NULL,NULL,NULL,180,51,6),(2348,NULL,'LEVOLIN 1',NULL,NULL,NULL,NULL,167,51,6),(2349,NULL,'LEVOLIN 2',NULL,NULL,NULL,NULL,167,51,6),(2350,NULL,'LEVOLIN INHALER',NULL,NULL,NULL,NULL,167,51,6),(2351,NULL,'LEVOLIN RES 0.31',NULL,NULL,NULL,NULL,NULL,51,6),(2352,NULL,'LEVOLIN SYRUP',NULL,NULL,NULL,NULL,169,51,6),(2353,NULL,'LEVOSOS',NULL,NULL,NULL,NULL,169,51,6),(2354,NULL,'LEZEST M',NULL,NULL,NULL,NULL,169,51,6),(2355,NULL,'LIBIDUP',NULL,NULL,NULL,NULL,168,51,6),(2356,NULL,'LIGNOCAINE 30ml',NULL,NULL,NULL,NULL,170,51,6),(2357,NULL,'LIGNOX 2% INJ 30ML',NULL,NULL,NULL,NULL,NULL,51,6),(2358,NULL,'LIMCEE 500MG',NULL,NULL,NULL,NULL,167,51,6),(2359,NULL,'LINOWIN 600',NULL,NULL,NULL,NULL,167,51,6),(2360,NULL,'LIOFEN 10 MG',NULL,NULL,NULL,NULL,167,51,6),(2361,NULL,'LIV 52',NULL,NULL,NULL,NULL,167,51,6),(2362,NULL,'LIV 52 100ML',NULL,NULL,NULL,NULL,169,51,6),(2363,NULL,'LIVITZCAP',NULL,NULL,NULL,NULL,167,51,6),(2364,NULL,'LIVOGEN',NULL,NULL,NULL,NULL,167,51,6),(2365,NULL,'LIVOGEN XT',NULL,NULL,NULL,NULL,167,51,6),(2366,NULL,'LIVOGEN Z',NULL,NULL,NULL,NULL,167,51,6),(2367,NULL,'LMA SUPREME 3-0',NULL,NULL,NULL,NULL,NULL,51,6),(2368,NULL,'LOBATE GM',NULL,NULL,NULL,NULL,167,51,6),(2369,NULL,'LOMOFEN TAB',NULL,NULL,NULL,NULL,167,51,6),(2370,NULL,'LONAZEP 0.5',NULL,NULL,NULL,NULL,167,51,6),(2371,NULL,'LONOPIN MD CATRIDGE',NULL,NULL,NULL,NULL,170,51,6),(2372,NULL,'LOPEZ INJ',NULL,NULL,NULL,NULL,170,51,6),(2373,NULL,'LOPRA',NULL,NULL,NULL,NULL,167,51,6),(2374,NULL,'LORI INJ (DIAZEPAM)',NULL,NULL,NULL,NULL,170,51,6),(2375,NULL,'LORVAS',NULL,NULL,NULL,NULL,NULL,51,6),(2376,NULL,'LOSAR 50',NULL,NULL,NULL,NULL,167,51,6),(2377,NULL,'LOTOVIT',NULL,NULL,NULL,NULL,168,51,6),(2378,NULL,'LOX 2% INJECTION',NULL,NULL,NULL,NULL,167,51,6),(2379,NULL,'LOX 2% JELLY',NULL,NULL,NULL,NULL,167,51,6),(2380,NULL,'LOX 10 SPRAY 50ML',NULL,NULL,NULL,NULL,NULL,51,6),(2381,NULL,'LOX 2%WITH ADRENALENE',NULL,NULL,NULL,NULL,170,51,6),(2382,NULL,'LOXICARD 50ml',NULL,NULL,NULL,NULL,170,51,6),(2383,NULL,'LOZIVATE MF OINMENT',NULL,NULL,NULL,NULL,NULL,51,6),(2384,NULL,'LUBIC 20GM',NULL,NULL,NULL,NULL,167,51,6),(2385,NULL,'LYCOTEX',NULL,NULL,NULL,NULL,168,51,6),(2386,NULL,'LYMPEDIM',NULL,NULL,NULL,NULL,167,51,6),(2387,NULL,'LYSER D TAB',NULL,NULL,NULL,NULL,167,51,6),(2388,NULL,'LYSER FORTE',NULL,NULL,NULL,NULL,167,51,6),(2389,NULL,'M CARE CU 375 375',NULL,NULL,NULL,NULL,174,51,6),(2390,NULL,'M TORR 800',NULL,NULL,NULL,NULL,168,51,6),(2391,NULL,'MACBERY 100ml',NULL,NULL,NULL,NULL,169,51,6),(2392,NULL,'MACPROT VANILA',NULL,NULL,NULL,NULL,189,51,6),(2393,NULL,'MAGIC POD DT 100',NULL,NULL,NULL,NULL,167,51,6),(2394,NULL,'MAGNEON INJ',NULL,NULL,NULL,NULL,167,51,6),(2395,NULL,'MAGNESIUM SULPHATE 100gm',NULL,NULL,NULL,NULL,214,51,6),(2396,NULL,'MAGNESIUM SULPHATE PAST 15GM',NULL,NULL,NULL,NULL,NULL,51,6),(2397,NULL,'MAGNICARE',NULL,NULL,NULL,NULL,167,51,6),(2398,NULL,'MAMAFOL',NULL,NULL,NULL,NULL,167,51,6),(2399,NULL,'MANDROGEN PLUS',NULL,NULL,NULL,NULL,167,51,6),(2400,NULL,'MAXBLIZ',NULL,NULL,NULL,NULL,167,51,6),(2401,NULL,'MAXOZA L 5GM',NULL,NULL,NULL,NULL,178,51,6),(2402,NULL,'MAXTRA DROPS 15ML',NULL,NULL,NULL,NULL,167,51,6),(2403,NULL,'MAXTRA GARGLE 120ML',NULL,NULL,NULL,NULL,188,51,6),(2404,NULL,'MAXTRA SYRUP',NULL,NULL,NULL,NULL,167,51,6),(2405,NULL,'MAYO OSMO',NULL,NULL,NULL,NULL,167,51,6),(2406,NULL,'MDC-HOPE',NULL,NULL,NULL,NULL,167,51,6),(2407,NULL,'MEASURMENT SET (PEDIA-DRIP)',NULL,NULL,NULL,NULL,167,51,6),(2408,NULL,'MECOBLEND',NULL,NULL,NULL,NULL,167,51,6),(2409,NULL,'MEDCASTIN',NULL,NULL,NULL,NULL,167,51,6),(2410,NULL,'MEDI - GRIP 2.5',NULL,NULL,NULL,NULL,174,51,6),(2411,NULL,'MEDOMOL 300MG',NULL,NULL,NULL,NULL,167,51,6),(2412,NULL,'MEDOMOL DROPS',NULL,NULL,NULL,NULL,167,51,6),(2413,NULL,'MEFENTOD SYP 60ml',NULL,NULL,NULL,NULL,NULL,51,6),(2414,NULL,'MEFENTOD-P 60ML',NULL,NULL,NULL,NULL,179,51,6),(2415,NULL,'MEFTAGESIC P SUS 60ML',NULL,NULL,NULL,NULL,179,51,6),(2416,NULL,'MEFTAGESIC DS 60ML',NULL,NULL,NULL,NULL,169,51,6),(2417,NULL,'MEFTAL 250',NULL,NULL,NULL,NULL,167,51,6),(2418,NULL,'MEFTAL 500',NULL,NULL,NULL,NULL,167,51,6),(2419,NULL,'MEFTAL FORT TAB',NULL,NULL,NULL,NULL,167,51,6),(2420,NULL,'MEFTAL P SUSPENSION',NULL,NULL,NULL,NULL,167,51,6),(2421,NULL,'MEFTAL_P',NULL,NULL,NULL,NULL,167,51,6),(2422,NULL,'MEFTAL_SPAS',NULL,NULL,NULL,NULL,167,51,6),(2423,NULL,'MEGAHEAL 15GM',NULL,NULL,NULL,NULL,195,51,6),(2424,NULL,'MENOACTIVE',NULL,NULL,NULL,NULL,167,51,6),(2425,NULL,'MENONOK SOFTGEL',NULL,NULL,NULL,NULL,168,51,6),(2426,NULL,'MEPRATE',NULL,NULL,NULL,NULL,167,51,6),(2427,NULL,'MERO INJ',NULL,NULL,NULL,NULL,170,51,6),(2428,NULL,'METHERGIN (AMPULE)',NULL,NULL,NULL,NULL,167,51,6),(2429,NULL,'METHERGIN',NULL,NULL,NULL,NULL,167,51,6),(2430,NULL,'METOCARD XL 25',NULL,NULL,NULL,NULL,167,51,6),(2431,NULL,'METOSARTAN 25MG',NULL,NULL,NULL,NULL,167,51,6),(2432,NULL,'METRO IV 100ML',NULL,NULL,NULL,NULL,167,51,6),(2433,NULL,'METROGYL 200 TAB',NULL,NULL,NULL,NULL,167,51,6),(2434,NULL,'METROGYL DG GEL',NULL,NULL,NULL,NULL,172,51,6),(2435,NULL,'METROGYL M',NULL,NULL,NULL,NULL,195,51,6),(2436,NULL,'METRON IV',NULL,NULL,NULL,NULL,167,51,6),(2437,NULL,'MEZOLAM INJ',NULL,NULL,NULL,NULL,167,51,6),(2438,NULL,'MICHELLE AQ',NULL,NULL,NULL,NULL,170,51,6),(2439,NULL,'MICRO DRIP SET',NULL,NULL,NULL,NULL,167,51,6),(2440,NULL,'MICRODOX LBX CAP',NULL,NULL,NULL,NULL,168,51,6),(2441,NULL,'MICROSHIELD 100ML',NULL,NULL,NULL,NULL,188,51,6),(2442,NULL,'MICROSHIELD M4 500ML',NULL,NULL,NULL,NULL,NULL,51,6),(2443,NULL,'MICROSHIELD PVPS 500ML',NULL,NULL,NULL,NULL,183,51,6),(2444,NULL,'MICROSHILED HR 500ML',NULL,NULL,NULL,NULL,NULL,51,6),(2445,NULL,'MIFEGEST',NULL,NULL,NULL,NULL,167,51,6),(2446,NULL,'MIFEGEST KIT',NULL,NULL,NULL,NULL,167,51,6),(2447,NULL,'MIGRANIL EC',NULL,NULL,NULL,NULL,167,51,6),(2448,NULL,'MIKACIN 100',NULL,NULL,NULL,NULL,167,51,6),(2449,NULL,'MIKACIN 250MG INJ',NULL,NULL,NULL,NULL,167,51,6),(2450,NULL,'MIKACIN 500',NULL,NULL,NULL,NULL,170,51,6),(2451,NULL,'MILKYZON D',NULL,NULL,NULL,NULL,167,51,6),(2452,NULL,'MINOLAST KID TAB',NULL,NULL,NULL,NULL,167,51,6),(2453,NULL,'MIRENA',NULL,NULL,NULL,NULL,NULL,51,6),(2454,NULL,'MISOPROST 25 TAB',NULL,NULL,NULL,NULL,167,51,6),(2455,NULL,'MOB GEL',NULL,NULL,NULL,NULL,172,51,6),(2456,NULL,'MONOBACT 1.5GM',NULL,NULL,NULL,NULL,167,51,6),(2457,NULL,'MONOBACT 375 V',NULL,NULL,NULL,NULL,167,51,6),(2458,NULL,'MONOBACT 750 V',NULL,NULL,NULL,NULL,167,51,6),(2459,NULL,'MONOCEF SB 1gm',NULL,NULL,NULL,NULL,170,51,6),(2460,NULL,'MONOCRYL 3-0 NW1326',NULL,NULL,NULL,NULL,NULL,51,6),(2461,NULL,'MONTAIR 10MG',NULL,NULL,NULL,NULL,167,51,6),(2462,NULL,'MONTAIR-4',NULL,NULL,NULL,NULL,167,51,6),(2463,NULL,'MONTAIR-5',NULL,NULL,NULL,NULL,167,51,6),(2464,NULL,'MONTAS FX',NULL,NULL,NULL,NULL,167,51,6),(2465,NULL,'MONTEK LC',NULL,NULL,NULL,NULL,167,51,6),(2466,NULL,'MONTEK FX',NULL,NULL,NULL,NULL,167,51,6),(2467,NULL,'MONTEK LC KID',NULL,NULL,NULL,NULL,167,51,6),(2468,NULL,'MONTELEO',NULL,NULL,NULL,NULL,167,51,6),(2469,NULL,'MONTEMAC L KID',NULL,NULL,NULL,NULL,167,51,6),(2470,NULL,'MONTEPRL 4MG',NULL,NULL,NULL,NULL,167,51,6),(2471,NULL,'MONTEPRL 5mg',NULL,NULL,NULL,NULL,167,51,6),(2472,NULL,'MOOPING PAD',NULL,NULL,NULL,NULL,NULL,51,6),(2473,NULL,'MOTINORM DT',NULL,NULL,NULL,NULL,167,51,6),(2474,NULL,'MOX 250 DRY SYRUP',NULL,NULL,NULL,NULL,167,51,6),(2475,NULL,'MOX 500MG CAP',NULL,NULL,NULL,NULL,167,51,6),(2476,NULL,'MOX KID 250 TAB',NULL,NULL,NULL,NULL,167,51,6),(2477,NULL,'MOXIKIND CV 625',NULL,NULL,NULL,NULL,167,51,6),(2478,NULL,'MOXINTA 500',NULL,NULL,NULL,NULL,168,51,6),(2479,NULL,'MOXITOR LB 625',NULL,NULL,NULL,NULL,167,51,6),(2480,NULL,'MUCAINE GEL 200ML',NULL,NULL,NULL,NULL,167,51,6),(2481,NULL,'MUCINAC 600',NULL,NULL,NULL,NULL,167,51,6),(2482,NULL,'MULTI VITAMIN SY(GROWMAX)',NULL,NULL,NULL,NULL,169,51,6),(2483,NULL,'MULTIVISTA SOFTGEL 100',NULL,NULL,NULL,NULL,174,51,6),(2484,NULL,'MUMFER-MAX',NULL,NULL,NULL,NULL,167,51,6),(2485,NULL,'MUPIZEO OIN 10GM',NULL,NULL,NULL,NULL,NULL,51,6),(2486,NULL,'MYKETO 20GM',NULL,NULL,NULL,NULL,181,51,6),(2487,NULL,'MYO PYROLYTE INJ 5ml',NULL,NULL,NULL,NULL,174,51,6),(2488,NULL,'MYOLINK DS',NULL,NULL,NULL,NULL,167,51,6),(2489,NULL,'MYOQUEEN',NULL,NULL,NULL,NULL,167,51,6),(2490,NULL,'MYORIL 4',NULL,NULL,NULL,NULL,168,51,6),(2491,NULL,'MYOSAFE',NULL,NULL,NULL,NULL,167,51,6),(2492,NULL,'MYOSPAS',NULL,NULL,NULL,NULL,167,51,6),(2493,NULL,'MYOSPAZ - TAB',NULL,NULL,NULL,NULL,167,51,6),(2494,NULL,'MYOSTIGMIN A',NULL,NULL,NULL,NULL,167,51,6),(2495,NULL,'MYPAR INJ',NULL,NULL,NULL,NULL,170,51,6),(2496,NULL,'MYZONE SL INJ',NULL,NULL,NULL,NULL,170,51,6),(2497,NULL,'N 95 MASK',NULL,NULL,NULL,NULL,NULL,51,6),(2498,NULL,'NACPHIN 10',NULL,NULL,NULL,NULL,170,51,6),(2499,NULL,'NACPHIN 10MG',NULL,NULL,NULL,NULL,170,51,6),(2500,NULL,'NANO C PLUS',NULL,NULL,NULL,NULL,167,51,6),(2501,NULL,'NAP PV IODINE 500 ml',NULL,NULL,NULL,NULL,188,51,6),(2502,NULL,'NAPROSYN D 500',NULL,NULL,NULL,NULL,167,51,6),(2503,NULL,'NASIVION CLASSIC NASAL SPRAY',NULL,NULL,NULL,NULL,NULL,51,6),(2504,NULL,'NASIVION PAED 10ML',NULL,NULL,NULL,NULL,167,51,6),(2505,NULL,'NASIVIONS SALINE 10ML',NULL,NULL,NULL,NULL,183,51,6),(2506,NULL,'NASOLINE',NULL,NULL,NULL,NULL,NULL,51,6),(2507,NULL,'NATRISE 15 MG',NULL,NULL,NULL,NULL,167,51,6),(2508,NULL,'NAXDOM 250',NULL,NULL,NULL,NULL,167,51,6),(2509,NULL,'NAXDOM 500',NULL,NULL,NULL,NULL,168,51,6),(2510,NULL,'NEBICARD 5MG',NULL,NULL,NULL,NULL,167,51,6),(2511,NULL,'NEBULIZER KIT ADULT',NULL,NULL,NULL,NULL,193,51,6),(2512,NULL,'NEBULIZER KIT CHILD',NULL,NULL,NULL,NULL,193,51,6),(2513,NULL,'NEEDLE 16',NULL,NULL,NULL,NULL,177,51,6),(2514,NULL,'NEEDLE 20',NULL,NULL,NULL,NULL,NULL,51,6),(2515,NULL,'NEEDLE 23',NULL,NULL,NULL,NULL,167,51,6),(2516,NULL,'NEEDLE 26',NULL,NULL,NULL,NULL,167,51,6),(2517,NULL,'NEEDLE 18',NULL,NULL,NULL,NULL,NULL,51,6),(2518,NULL,'NEFROSAVE',NULL,NULL,NULL,NULL,168,51,6),(2519,NULL,'NEL CATH 12',NULL,NULL,NULL,NULL,174,51,6),(2520,NULL,'NEL-CATH 10',NULL,NULL,NULL,NULL,NULL,51,6),(2521,NULL,'NEL-CATH 16 B',NULL,NULL,NULL,NULL,NULL,51,6),(2522,NULL,'NELCATH 14',NULL,NULL,NULL,NULL,208,51,6),(2523,NULL,'NEO HCG 5000',NULL,NULL,NULL,NULL,170,51,6),(2524,NULL,'NEOCURON INJ 2ML',NULL,NULL,NULL,NULL,167,51,6),(2525,NULL,'NEOFOST 2ml',NULL,NULL,NULL,NULL,170,51,6),(2526,NULL,'NEOMIT 2 ML INJ 4 MG',NULL,NULL,NULL,NULL,202,51,6),(2527,NULL,'NEOMIZ 200 TAB',NULL,NULL,NULL,NULL,NULL,51,6),(2528,NULL,'NEOMIZ 25',NULL,NULL,NULL,NULL,167,51,6),(2529,NULL,'NEOMOL 250 SUPP',NULL,NULL,NULL,NULL,210,51,6),(2530,NULL,'NEOMOL 80 SUPP 80',NULL,NULL,NULL,NULL,210,51,6),(2531,NULL,'NEOPAN',NULL,NULL,NULL,NULL,167,51,6),(2532,NULL,'NEOPEPTINE DROPS',NULL,NULL,NULL,NULL,167,51,6),(2533,NULL,'NEOREF 10ML',NULL,NULL,NULL,NULL,167,51,6),(2534,NULL,'NEURAY N.T 10',NULL,NULL,NULL,NULL,167,51,6),(2535,NULL,'NEUROBION FORT A (INJ)',NULL,NULL,NULL,NULL,167,51,6),(2536,NULL,'NEUROBION FORTE',NULL,NULL,NULL,NULL,167,51,6),(2537,NULL,'NEUROLIZ 75',NULL,NULL,NULL,NULL,167,51,6),(2538,NULL,'NEUROLIZ-M',NULL,NULL,NULL,NULL,167,51,6),(2539,NULL,'NEVRALGIE',NULL,NULL,NULL,NULL,167,51,6),(2540,NULL,'NEW MUMFER MAX',NULL,NULL,NULL,NULL,167,51,6),(2541,NULL,'NEWMOM FIXATOR -L',NULL,NULL,NULL,NULL,NULL,51,6),(2542,NULL,'NEX-D3 MAX',NULL,NULL,NULL,NULL,167,51,6),(2543,NULL,'NEXIPOX VACCINE(CHICKENPOX VAC)',NULL,NULL,NULL,NULL,190,51,6),(2544,NULL,'VAC',NULL,NULL,NULL,NULL,NULL,51,6),(2545,NULL,'NEXITO 5MG',NULL,NULL,NULL,NULL,167,51,6),(2546,NULL,'NEXPRO RD 40',NULL,NULL,NULL,NULL,167,51,6),(2547,NULL,'NICARDIA RETARD 20',NULL,NULL,NULL,NULL,167,51,6),(2548,NULL,'NICARDIA 10 CAP',NULL,NULL,NULL,NULL,167,51,6),(2549,NULL,'NICARDIA 5',NULL,NULL,NULL,NULL,167,51,6),(2550,NULL,'NICARDIA RETARD 10MG',NULL,NULL,NULL,NULL,167,51,6),(2551,NULL,'NICOACE-TH4',NULL,NULL,NULL,NULL,167,51,6),(2552,NULL,'NICODOL PLUS',NULL,NULL,NULL,NULL,167,51,6),(2553,NULL,'NIFTAS 100MG',NULL,NULL,NULL,NULL,167,51,6),(2554,NULL,'NIPCARE',NULL,NULL,NULL,NULL,167,51,6),(2555,NULL,'NIPPLE SHELD',NULL,NULL,NULL,NULL,167,51,6),(2556,NULL,'NIRLYTE P 500ML 1A80427',NULL,NULL,NULL,NULL,NULL,51,6),(2557,NULL,'NITRIGA GEL',NULL,NULL,NULL,NULL,172,51,6),(2558,NULL,'NITROBACT-100',NULL,NULL,NULL,NULL,168,51,6),(2559,NULL,'NKACIN 500',NULL,NULL,NULL,NULL,170,51,6),(2560,NULL,'NORBLU 400',NULL,NULL,NULL,NULL,167,51,6),(2561,NULL,'NORFLOX 200',NULL,NULL,NULL,NULL,167,51,6),(2562,NULL,'NORFLOX 400 MG',NULL,NULL,NULL,NULL,167,51,6),(2563,NULL,'NORMAL KIT (CAERON)',NULL,NULL,NULL,NULL,193,51,6),(2564,NULL,'NORMAXIN',NULL,NULL,NULL,NULL,167,51,6),(2565,NULL,'NORMOFLORA-UTI',NULL,NULL,NULL,NULL,167,51,6),(2566,NULL,'NORMOZ',NULL,NULL,NULL,NULL,167,51,6),(2567,NULL,'NOSIC OD',NULL,NULL,NULL,NULL,167,51,6),(2568,NULL,'NOVAMOX 250 SYP',NULL,NULL,NULL,NULL,167,51,6),(2569,NULL,'NOVELON',NULL,NULL,NULL,NULL,167,51,6),(2570,NULL,'NOVEX DS',NULL,NULL,NULL,NULL,167,51,6),(2571,NULL,'NOVIUM D3 PLUS',NULL,NULL,NULL,NULL,167,51,6),(2572,NULL,'NOVOTEL 20MG',NULL,NULL,NULL,NULL,167,51,6),(2573,NULL,'NOVOTEL 40 TAB',NULL,NULL,NULL,NULL,167,51,6),(2574,NULL,'NOVOTEL AM',NULL,NULL,NULL,NULL,167,51,6),(2575,NULL,'NOVOTEL-40H',NULL,NULL,NULL,NULL,167,51,6),(2576,NULL,'NS 500ML (INJECTION)',NULL,NULL,NULL,NULL,167,51,6),(2577,NULL,'NS 1000ML (INJECTION)',NULL,NULL,NULL,NULL,167,51,6),(2578,NULL,'NS 100ML INJ',NULL,NULL,NULL,NULL,167,51,6),(2579,NULL,'NS 10ML',NULL,NULL,NULL,NULL,182,51,6),(2580,NULL,'NT SPAS',NULL,NULL,NULL,NULL,170,51,6),(2581,NULL,'NUROKIND G',NULL,NULL,NULL,NULL,167,51,6),(2582,NULL,'NURORISE',NULL,NULL,NULL,NULL,167,51,6),(2583,NULL,'NURORISE-P',NULL,NULL,NULL,NULL,167,51,6),(2584,NULL,'NUTROLIN B PLUS',NULL,NULL,NULL,NULL,168,51,6),(2585,NULL,'NUTROLIN B SYRUP',NULL,NULL,NULL,NULL,169,51,6),(2586,NULL,'OFLOMAC 200TAB',NULL,NULL,NULL,NULL,167,51,6),(2587,NULL,'OFLOMAC OZ',NULL,NULL,NULL,NULL,167,51,6),(2588,NULL,'OFLOX 50 SUS',NULL,NULL,NULL,NULL,179,51,6),(2589,NULL,'OFLOX 200',NULL,NULL,NULL,NULL,167,51,6),(2590,NULL,'OFLOX 400',NULL,NULL,NULL,NULL,167,51,6),(2591,NULL,'OFLOX INFUSION',NULL,NULL,NULL,NULL,167,51,6),(2592,NULL,'OFLOX OZ TAB',NULL,NULL,NULL,NULL,167,51,6),(2593,NULL,'OJEN -200',NULL,NULL,NULL,NULL,167,51,6),(2594,NULL,'OKACET',NULL,NULL,NULL,NULL,167,51,6),(2595,NULL,'OKACET COLD',NULL,NULL,NULL,NULL,167,51,6),(2596,NULL,'OLZITH 500',NULL,NULL,NULL,NULL,167,51,6),(2597,NULL,'OMEGA 3 GEMS',NULL,NULL,NULL,NULL,NULL,51,6),(2598,NULL,'OMEGAPURE',NULL,NULL,NULL,NULL,168,51,6),(2599,NULL,'OMEZ 20',NULL,NULL,NULL,NULL,167,51,6),(2600,NULL,'OMEZ INSTA POWDER',NULL,NULL,NULL,NULL,167,51,6),(2601,NULL,'ONDEM INJ',NULL,NULL,NULL,NULL,167,51,6),(2602,NULL,'ONDEM MD 4',NULL,NULL,NULL,NULL,167,51,6),(2603,NULL,'ONDEM SYP 30ML',NULL,NULL,NULL,NULL,167,51,6),(2604,NULL,'ONDET',NULL,NULL,NULL,NULL,170,51,6),(2605,NULL,'ONDET 4',NULL,NULL,NULL,NULL,167,51,6),(2606,NULL,'ONLAC Z',NULL,NULL,NULL,NULL,189,51,6),(2607,NULL,'ONOFF 200',NULL,NULL,NULL,NULL,167,51,6),(2608,NULL,'ORNI-O',NULL,NULL,NULL,NULL,167,51,6),(2609,NULL,'OROFER FCM INJ 10ML',NULL,NULL,NULL,NULL,170,51,6),(2610,NULL,'OROFER S 200 INJ 10ML',NULL,NULL,NULL,NULL,170,51,6),(2611,NULL,'OROFER S INJ',NULL,NULL,NULL,NULL,167,51,6),(2612,NULL,'OROTATE 3D TAB',NULL,NULL,NULL,NULL,167,51,6),(2613,NULL,'ORS ORANGE LIQUID',NULL,NULL,NULL,NULL,NULL,51,6),(2614,NULL,'ORS APPLE LIQD 200ML',NULL,NULL,NULL,NULL,215,51,6),(2615,NULL,'ORS LEMON 21GM',NULL,NULL,NULL,NULL,178,51,6),(2616,NULL,'ORTHO STOKINETE 50 MM',NULL,NULL,NULL,NULL,184,51,6),(2617,NULL,'ORTHO STOKINETE 75MM',NULL,NULL,NULL,NULL,184,51,6),(2618,NULL,'ORUL GEL 10ml',NULL,NULL,NULL,NULL,172,51,6),(2619,NULL,'OSTOLIME',NULL,NULL,NULL,NULL,167,51,6),(2620,NULL,'OTOGESIC DROPS 5ML',NULL,NULL,NULL,NULL,182,51,6),(2621,NULL,'OTRIVIN OXY FAST RELIEF 10ML',NULL,NULL,NULL,NULL,NULL,51,6),(2622,NULL,'OVASHIEILD DS',NULL,NULL,NULL,NULL,167,51,6),(2623,NULL,'OXY SET ADULT (OXYGEN SET)',NULL,NULL,NULL,NULL,NULL,51,6),(2624,NULL,'OXYGEN MASK',NULL,NULL,NULL,NULL,NULL,51,6),(2625,NULL,'OXYGN MASK',NULL,NULL,NULL,NULL,207,51,6),(2626,NULL,'P 750 TAB',NULL,NULL,NULL,NULL,167,51,6),(2627,NULL,'PAEDIATRIC URINE BAG',NULL,NULL,NULL,NULL,193,51,6),(2628,NULL,'PAMPERS (NEW BABY)',NULL,NULL,NULL,NULL,184,51,6),(2629,NULL,'PAMPERS PANTS LG 2\'S',NULL,NULL,NULL,NULL,167,51,6),(2630,NULL,'PAMPERS PANTS MD 2\'S',NULL,NULL,NULL,NULL,167,51,6),(2631,NULL,'PAMPERS PANTS SMALL 2S',NULL,NULL,NULL,NULL,174,51,6),(2632,NULL,'PAMPERS PANTS2SFSD180',NULL,NULL,NULL,NULL,174,51,6),(2633,NULL,'PAN 20 TAB',NULL,NULL,NULL,NULL,167,51,6),(2634,NULL,'PAN 40TAB',NULL,NULL,NULL,NULL,167,51,6),(2635,NULL,'PAN D CAPS',NULL,NULL,NULL,NULL,167,51,6),(2636,NULL,'PANGLEM',NULL,NULL,NULL,NULL,167,51,6),(2637,NULL,'PANTAKIND INJ',NULL,NULL,NULL,NULL,167,51,6),(2638,NULL,'PANTAS 40',NULL,NULL,NULL,NULL,167,51,6),(2639,NULL,'PANTOCID L TAB 40',NULL,NULL,NULL,NULL,167,51,6),(2640,NULL,'PANWEL DSR',NULL,NULL,NULL,NULL,167,51,6),(2641,NULL,'PANZOLIC 40',NULL,NULL,NULL,NULL,167,51,6),(2642,NULL,'PARACAN SUPPOSITORY 170',NULL,NULL,NULL,NULL,NULL,51,6),(2643,NULL,'PARACAN SUPPOSITORY 250',NULL,NULL,NULL,NULL,NULL,51,6),(2644,NULL,'PARACAN SUPPOSITORIES 80',NULL,NULL,NULL,NULL,210,51,6),(2645,NULL,'PARACIP 100ML',NULL,NULL,NULL,NULL,211,51,6),(2646,NULL,'PARAFORCE IV',NULL,NULL,NULL,NULL,170,51,6),(2647,NULL,'PATIENT GOWN FEMALE WITH DRA',NULL,NULL,NULL,NULL,193,51,6),(2648,NULL,'PCM INJ 2ML',NULL,NULL,NULL,NULL,170,51,6),(2649,NULL,'PEDIA DRIP SET',NULL,NULL,NULL,NULL,NULL,51,6),(2650,NULL,'PEGFIBER',NULL,NULL,NULL,NULL,189,51,6),(2651,NULL,'PENTASUN-20',NULL,NULL,NULL,NULL,167,51,6),(2652,NULL,'PERIFIX 401 (18G)',NULL,NULL,NULL,NULL,170,51,6),(2653,NULL,'PERINORM TAB',NULL,NULL,NULL,NULL,167,51,6),(2654,NULL,'PERINORM 2ML A',NULL,NULL,NULL,NULL,167,51,6),(2655,NULL,'PERISET INJ 2ML',NULL,NULL,NULL,NULL,170,51,6),(2656,NULL,'PHENERGAN INJ',NULL,NULL,NULL,NULL,167,51,6),(2657,NULL,'PHENPRES 1ML',NULL,NULL,NULL,NULL,170,51,6),(2658,NULL,'PHEXIN 500',NULL,NULL,NULL,NULL,167,51,6),(2659,NULL,'PHEXIN REDY 250 SYP 60ML',NULL,NULL,NULL,NULL,167,51,6),(2660,NULL,'PICOZER',NULL,NULL,NULL,NULL,179,51,6),(2661,NULL,'PILEUM TAB',NULL,NULL,NULL,NULL,167,51,6),(2662,NULL,'PILEX 30G',NULL,NULL,NULL,NULL,167,51,6),(2663,NULL,'PILORUTE EP',NULL,NULL,NULL,NULL,167,51,6),(2664,NULL,'PIRITON EXP',NULL,NULL,NULL,NULL,167,51,6),(2665,NULL,'PITOCIN INJ 10ML',NULL,NULL,NULL,NULL,167,51,6),(2666,NULL,'PIVIDINE 500ml',NULL,NULL,NULL,NULL,188,51,6),(2667,NULL,'PLACENTREX 2ML',NULL,NULL,NULL,NULL,167,51,6),(2668,NULL,'PLACIFLOW',NULL,NULL,NULL,NULL,178,51,6),(2669,NULL,'PLETOZ 100MG',NULL,NULL,NULL,NULL,167,51,6),(2670,NULL,'PNEUMOSIL PFS',NULL,NULL,NULL,NULL,170,51,6),(2671,NULL,'POLYBION A',NULL,NULL,NULL,NULL,170,51,6),(2672,NULL,'POP 10CM*3M',NULL,NULL,NULL,NULL,167,51,6),(2673,NULL,'POTTASSIUM CHOLORIDE ( STRONG',NULL,NULL,NULL,NULL,167,51,6),(2674,NULL,'POVIKEM 100ml',NULL,NULL,NULL,NULL,NULL,51,6),(2675,NULL,'POVIKEM 500',NULL,NULL,NULL,NULL,188,51,6),(2676,NULL,'PPE KIT',NULL,NULL,NULL,NULL,193,51,6),(2677,NULL,'PPG 0.2',NULL,NULL,NULL,NULL,NULL,51,6),(2678,NULL,'PPH',NULL,NULL,NULL,NULL,167,51,6),(2679,NULL,'PRACTIN SYP',NULL,NULL,NULL,NULL,167,51,6),(2680,NULL,'PRAZOPRESS XL 2.5',NULL,NULL,NULL,NULL,167,51,6),(2681,NULL,'PREGASTAR 75',NULL,NULL,NULL,NULL,168,51,6),(2682,NULL,'PREGNA',NULL,NULL,NULL,NULL,181,51,6),(2683,NULL,'PREGNACARE',NULL,NULL,NULL,NULL,167,51,6),(2684,NULL,'PREGNANCY TEST',NULL,NULL,NULL,NULL,167,51,6),(2685,NULL,'PRELICA 30GM',NULL,NULL,NULL,NULL,172,51,6),(2686,NULL,'PREVENAR -13',NULL,NULL,NULL,NULL,170,51,6),(2687,NULL,'PRIMOLUT N',NULL,NULL,NULL,NULL,167,51,6),(2688,NULL,'PROCITIL 1ML',NULL,NULL,NULL,NULL,170,51,6),(2689,NULL,'PROGENIX',NULL,NULL,NULL,NULL,167,51,6),(2690,NULL,'PROGYNOVA 2MG',NULL,NULL,NULL,NULL,167,51,6),(2691,NULL,'PROLENE -1- NW840',NULL,NULL,NULL,NULL,NULL,51,6),(2692,NULL,'PROLENE -2-0-NW844',NULL,NULL,NULL,NULL,NULL,51,6),(2693,NULL,'PROLENE-1843',NULL,NULL,NULL,NULL,173,51,6),(2694,NULL,'PROLENE 4-0 NW849',NULL,NULL,NULL,NULL,NULL,51,6),(2695,NULL,'PROLOMET XL 25',NULL,NULL,NULL,NULL,174,51,6),(2696,NULL,'PROLUTON DEPOT V 500MG/2ML',NULL,NULL,NULL,NULL,167,51,6),(2697,NULL,'PROSTODIN 250MCG',NULL,NULL,NULL,NULL,170,51,6),(2698,NULL,'PROXTL 100 MG TAB',NULL,NULL,NULL,NULL,167,51,6),(2699,NULL,'PROXTL 200',NULL,NULL,NULL,NULL,167,51,6),(2700,NULL,'PROXTL 50 DRY SYRUP',NULL,NULL,NULL,NULL,169,51,6),(2701,NULL,'PROXTL SYP',NULL,NULL,NULL,NULL,167,51,6),(2702,NULL,'PUBERAL F',NULL,NULL,NULL,NULL,167,51,6),(2703,NULL,'PULMOCLEAR',NULL,NULL,NULL,NULL,167,51,6),(2704,NULL,'PULMOCLEAR 100ML',NULL,NULL,NULL,NULL,169,51,6),(2705,NULL,'PYROLATE (A)',NULL,NULL,NULL,NULL,167,51,6),(2706,NULL,'QUROZYME',NULL,NULL,NULL,NULL,167,51,6),(2707,NULL,'R-VIT K 1ML',NULL,NULL,NULL,NULL,170,51,6),(2708,NULL,'RABBY 20',NULL,NULL,NULL,NULL,167,51,6),(2709,NULL,'RABEMAC 20 TAB',NULL,NULL,NULL,NULL,167,51,6),(2710,NULL,'RABEMAC-DSR',NULL,NULL,NULL,NULL,167,51,6),(2711,NULL,'RABIROSE 20',NULL,NULL,NULL,NULL,167,51,6),(2712,NULL,'RABIVAX INJ',NULL,NULL,NULL,NULL,167,51,6),(2713,NULL,'RABIVORK',NULL,NULL,NULL,NULL,167,51,6),(2714,NULL,'RANBIOTIC (GENTAMYSIN ING)',NULL,NULL,NULL,NULL,NULL,51,6),(2715,NULL,'RANITIN 2',NULL,NULL,NULL,NULL,170,51,6),(2716,NULL,'RANTAC SYRUP',NULL,NULL,NULL,NULL,169,51,6),(2717,NULL,'RANTAC (R) A',NULL,NULL,NULL,NULL,167,51,6),(2718,NULL,'RANTAC 150',NULL,NULL,NULL,NULL,167,51,6),(2719,NULL,'RAPO 20mg',NULL,NULL,NULL,NULL,167,51,6),(2720,NULL,'RAPO DSR CAP',NULL,NULL,NULL,NULL,167,51,6),(2721,NULL,'REACTIN',NULL,NULL,NULL,NULL,167,51,6),(2722,NULL,'RECTOL 170',NULL,NULL,NULL,NULL,NULL,51,6),(2723,NULL,'RECTOL 250',NULL,NULL,NULL,NULL,NULL,51,6),(2724,NULL,'RECTOL 80',NULL,NULL,NULL,NULL,NULL,51,6),(2725,NULL,'REDIAL',NULL,NULL,NULL,NULL,167,51,6),(2726,NULL,'REDUX',NULL,NULL,NULL,NULL,167,51,6),(2727,NULL,'REGESTRONE TAB 5MG',NULL,NULL,NULL,NULL,167,51,6),(2728,NULL,'RENERVE BT',NULL,NULL,NULL,NULL,168,51,6),(2729,NULL,'REVEL',NULL,NULL,NULL,NULL,168,51,6),(2730,NULL,'REVICI E 250',NULL,NULL,NULL,NULL,167,51,6),(2731,NULL,'REVITAL CAL 500',NULL,NULL,NULL,NULL,167,51,6),(2732,NULL,'RHINAM M SYP 30 ML',NULL,NULL,NULL,NULL,169,51,6),(2733,NULL,'RHINAM SYP 60 ML',NULL,NULL,NULL,NULL,169,51,6),(2734,NULL,'RIBOVIN 10mg',NULL,NULL,NULL,NULL,167,51,6),(2735,NULL,'RICHAR CR',NULL,NULL,NULL,NULL,167,51,6),(2736,NULL,'RICHGUT',NULL,NULL,NULL,NULL,178,51,6),(2737,NULL,'RIFAGUT',NULL,NULL,NULL,NULL,167,51,6),(2738,NULL,'RIFAGUT 400 TAB',NULL,NULL,NULL,NULL,167,51,6),(2739,NULL,'RIGIN PLUS SACHETS',NULL,NULL,NULL,NULL,NULL,51,6),(2740,NULL,'RILIGOL',NULL,NULL,NULL,NULL,170,51,6),(2741,NULL,'RING PESSARY 3.1',NULL,NULL,NULL,NULL,NULL,51,6),(2742,NULL,'RING PESSARY 2.5',NULL,NULL,NULL,NULL,NULL,51,6),(2743,NULL,'RL 500ML',NULL,NULL,NULL,NULL,167,51,6),(2744,NULL,'ROGON HP INJ',NULL,NULL,NULL,NULL,167,51,6),(2745,NULL,'ROMOVAC SET FG14',NULL,NULL,NULL,NULL,167,51,6),(2746,NULL,'ROMOVAC SET FG 16',NULL,NULL,NULL,NULL,167,51,6),(2747,NULL,'RONEMOX 500',NULL,NULL,NULL,NULL,168,51,6),(2748,NULL,'ROSCILLIN 500MG',NULL,NULL,NULL,NULL,170,51,6),(2749,NULL,'ROTASIL LIQUID',NULL,NULL,NULL,NULL,NULL,51,6),(2750,NULL,'ROTATEQ 2ML',NULL,NULL,NULL,NULL,190,51,6),(2751,NULL,'ROZAVEL 40',NULL,NULL,NULL,NULL,167,51,6),(2752,NULL,'ROZITOR 5',NULL,NULL,NULL,NULL,167,51,6),(2753,NULL,'RUTOZER SPO',NULL,NULL,NULL,NULL,195,51,6),(2754,NULL,'RUTOZER-H',NULL,NULL,NULL,NULL,167,51,6),(2755,NULL,'RYLE\'S TUBE 14',NULL,NULL,NULL,NULL,167,51,6),(2756,NULL,'RYLES TUBE 16ML',NULL,NULL,NULL,NULL,167,51,6),(2757,NULL,'RYLES TUBE 12',NULL,NULL,NULL,NULL,167,51,6),(2758,NULL,'SALISIA KT SHAMPOO',NULL,NULL,NULL,NULL,NULL,51,6),(2759,NULL,'SANITIZER (SPRAY) 100ml',NULL,NULL,NULL,NULL,NULL,51,6),(2760,NULL,'SCOFA -1000 E',NULL,NULL,NULL,NULL,168,51,6),(2761,NULL,'SEPTARAB',NULL,NULL,NULL,NULL,167,51,6),(2762,NULL,'SERAPEP D',NULL,NULL,NULL,NULL,167,51,6),(2763,NULL,'SERAX FORTE',NULL,NULL,NULL,NULL,167,51,6),(2764,NULL,'SERFIX-200',NULL,NULL,NULL,NULL,167,51,6),(2765,NULL,'SERLUKAST-L',NULL,NULL,NULL,NULL,167,51,6),(2766,NULL,'SEROFLO 250 (INHALER)',NULL,NULL,NULL,NULL,167,51,6),(2767,NULL,'SERTIDASE',NULL,NULL,NULL,NULL,167,51,6),(2768,NULL,'SEVURA 250ML',NULL,NULL,NULL,NULL,NULL,51,6),(2769,NULL,'SHELARC',NULL,NULL,NULL,NULL,167,51,6),(2770,NULL,'SHELCAL -500',NULL,NULL,NULL,NULL,167,51,6),(2771,NULL,'SHELCAL SUS 200ML',NULL,NULL,NULL,NULL,NULL,51,6),(2772,NULL,'SHINEROSE E',NULL,NULL,NULL,NULL,168,51,6),(2773,NULL,'SIBELIUM 10MG',NULL,NULL,NULL,NULL,167,51,6),(2774,NULL,'SIBELIUM 5MG',NULL,NULL,NULL,NULL,167,51,6),(2775,NULL,'SIBOLONE',NULL,NULL,NULL,NULL,167,51,6),(2776,NULL,'SILFOG NASAL SPRAY',NULL,NULL,NULL,NULL,NULL,51,6),(2777,NULL,'SILICONE TUBAL RING',NULL,NULL,NULL,NULL,NULL,51,6),(2778,NULL,'SILODAL 8 mg',NULL,NULL,NULL,NULL,168,51,6),(2779,NULL,'SILVEREX CREM 10GM',NULL,NULL,NULL,NULL,167,51,6),(2780,NULL,'SILVEREX IONIC 20GM',NULL,NULL,NULL,NULL,167,51,6),(2781,NULL,'SILYBON 70MG',NULL,NULL,NULL,NULL,167,51,6),(2782,NULL,'SILYBON SUS 100ML',NULL,NULL,NULL,NULL,167,51,6),(2783,NULL,'SIPHENE 50',NULL,NULL,NULL,NULL,167,51,6),(2784,NULL,'SITAPAZ M 50/500',NULL,NULL,NULL,NULL,167,51,6),(2785,NULL,'SKIN STAPLER',NULL,NULL,NULL,NULL,NULL,51,6),(2786,NULL,'SKRAMP 1',NULL,NULL,NULL,NULL,167,51,6),(2787,NULL,'SMUTH CREM',NULL,NULL,NULL,NULL,181,51,6),(2788,NULL,'SMUTH SUSPENSION',NULL,NULL,NULL,NULL,167,51,6),(2789,NULL,'SNEEZAREST',NULL,NULL,NULL,NULL,167,51,6),(2790,NULL,'SODAC 25ml',NULL,NULL,NULL,NULL,170,51,6),(2791,NULL,'SODIUM BICARBONATE INJECTION',NULL,NULL,NULL,NULL,167,51,6),(2792,NULL,'SODIUM CHLORIDE (INJECTION) 3%',NULL,NULL,NULL,NULL,170,51,6),(2793,NULL,'SODIUM PHOSPHATE ENEMA',NULL,NULL,NULL,NULL,167,51,6),(2794,NULL,'SOFF ROLL 15CM',NULL,NULL,NULL,NULL,167,51,6),(2795,NULL,'SOMPRAZ 20 TAB',NULL,NULL,NULL,NULL,167,51,6),(2796,NULL,'SOMPRAZ 40 MG',NULL,NULL,NULL,NULL,167,51,6),(2797,NULL,'SOMPRAZ D 40TAB',NULL,NULL,NULL,NULL,167,51,6),(2798,NULL,'SOMPRAZ IT',NULL,NULL,NULL,NULL,NULL,51,6),(2799,NULL,'SOMPRAZ IV INJ',NULL,NULL,NULL,NULL,NULL,51,6),(2800,NULL,'SORBITRATE 5',NULL,NULL,NULL,NULL,167,51,6),(2801,NULL,'SOREGEL 10MG',NULL,NULL,NULL,NULL,172,51,6),(2802,NULL,'SOVENTUS SYP',NULL,NULL,NULL,NULL,167,51,6),(2803,NULL,'SPA TAB',NULL,NULL,NULL,NULL,167,51,6),(2804,NULL,'SPASMODALE',NULL,NULL,NULL,NULL,167,51,6),(2805,NULL,'SPECTRALAX 100ML',NULL,NULL,NULL,NULL,169,51,6),(2806,NULL,'SPESEMEN SACHET',NULL,NULL,NULL,NULL,NULL,51,6),(2807,NULL,'SPINAL NEEDLE 25',NULL,NULL,NULL,NULL,167,51,6),(2808,NULL,'SPINAL NEEDLE 26-BD',NULL,NULL,NULL,NULL,167,51,6),(2809,NULL,'SPINALNEEDLE23',NULL,NULL,NULL,NULL,167,51,6),(2810,NULL,'SPOOK FB 200',NULL,NULL,NULL,NULL,192,51,6),(2811,NULL,'STEMETIL INJ',NULL,NULL,NULL,NULL,167,51,6),(2812,NULL,'STERILE WATER 10MG',NULL,NULL,NULL,NULL,167,51,6),(2813,NULL,'STERIZONE ST 80',NULL,NULL,NULL,NULL,NULL,51,6),(2814,NULL,'STERIZONE ST 91',NULL,NULL,NULL,NULL,NULL,51,6),(2815,NULL,'AEROFOAM',NULL,NULL,NULL,NULL,NULL,51,6),(2816,NULL,'STERIZONE ST82',NULL,NULL,NULL,NULL,174,51,6),(2817,NULL,'STERIZONE ST86',NULL,NULL,NULL,NULL,174,51,6),(2818,NULL,'STERWIN',NULL,NULL,NULL,NULL,170,51,6),(2819,NULL,'STON 1B6',NULL,NULL,NULL,NULL,167,51,6),(2820,NULL,'STUGERON 25',NULL,NULL,NULL,NULL,167,51,6),(2821,NULL,'SUCOL 10ML',NULL,NULL,NULL,NULL,167,51,6),(2822,NULL,'SUCRAFIL O',NULL,NULL,NULL,NULL,172,51,6),(2823,NULL,'SUCRAFIL SUSPEN',NULL,NULL,NULL,NULL,179,51,6),(2824,NULL,'SUCRALOCK O',NULL,NULL,NULL,NULL,179,51,6),(2825,NULL,'SUCRATE O SUSP',NULL,NULL,NULL,NULL,183,51,6),(2826,NULL,'SUCTION CATHETER 10',NULL,NULL,NULL,NULL,174,51,6),(2827,NULL,'SUCTION CATHETER 12',NULL,NULL,NULL,NULL,167,51,6),(2828,NULL,'SUCTION CATHETER 14',NULL,NULL,NULL,NULL,167,51,6),(2829,NULL,'SUCTION CATHETER 16',NULL,NULL,NULL,NULL,167,51,6),(2830,NULL,'SUCTION SET',NULL,NULL,NULL,NULL,167,51,6),(2831,NULL,'SUNPORE 5cm',NULL,NULL,NULL,NULL,NULL,51,6),(2832,NULL,'SUPACEF 1.5MG',NULL,NULL,NULL,NULL,167,51,6),(2833,NULL,'SUPACEF 750MG',NULL,NULL,NULL,NULL,167,51,6),(2834,NULL,'SUPIROCIN B PLUS',NULL,NULL,NULL,NULL,195,51,6),(2835,NULL,'SURBEX GOLD',NULL,NULL,NULL,NULL,168,51,6),(2836,NULL,'SURFAZ SN CREAM 10GM',NULL,NULL,NULL,NULL,167,51,6),(2837,NULL,'SURGEON GOWN',NULL,NULL,NULL,NULL,NULL,51,6),(2838,NULL,'SURGI KIT ( CESARIAN )',NULL,NULL,NULL,NULL,193,51,6),(2839,NULL,'SURGICAL BLADE 15',NULL,NULL,NULL,NULL,174,51,6),(2840,NULL,'SURGICAL BLADE 20',NULL,NULL,NULL,NULL,216,51,6),(2841,NULL,'SURGICAL BLADE 22',NULL,NULL,NULL,NULL,167,51,6),(2842,NULL,'SURGICAL BLADE 23',NULL,NULL,NULL,NULL,216,51,6),(2843,NULL,'SURGICAL BLADE LISTER 11',NULL,NULL,NULL,NULL,167,51,6),(2844,NULL,'SUSTEN 200',NULL,NULL,NULL,NULL,167,51,6),(2845,NULL,'SUTUPAK 1SW215',NULL,NULL,NULL,NULL,174,51,6),(2846,NULL,'SV SET',NULL,NULL,NULL,NULL,174,51,6),(2847,NULL,'SYNGALIN MNT',NULL,NULL,NULL,NULL,167,51,6),(2848,NULL,'SYR 2.5ML',NULL,NULL,NULL,NULL,NULL,51,6),(2849,NULL,'SYRINGE 10 ML',NULL,NULL,NULL,NULL,167,51,6),(2850,NULL,'SYRINGE 5ML',NULL,NULL,NULL,NULL,167,51,6),(2851,NULL,'SYRINGE 1ML',NULL,NULL,NULL,NULL,NULL,51,6),(2852,NULL,'SYRINGE 20 ML',NULL,NULL,NULL,NULL,167,51,6),(2853,NULL,'T-BACT OINT 5G',NULL,NULL,NULL,NULL,167,51,6),(2854,NULL,'T.T VAC',NULL,NULL,NULL,NULL,170,51,6),(2855,NULL,'TAMEGUT 40',NULL,NULL,NULL,NULL,167,51,6),(2856,NULL,'TAXIM INJ 125 MG',NULL,NULL,NULL,NULL,167,51,6),(2857,NULL,'TAXIM - O 200',NULL,NULL,NULL,NULL,167,51,6),(2858,NULL,'TAXIM 1.GM V',NULL,NULL,NULL,NULL,167,51,6),(2859,NULL,'TAXIM 250 MG V',NULL,NULL,NULL,NULL,167,51,6),(2860,NULL,'TAXIM 500 V',NULL,NULL,NULL,NULL,167,51,6),(2861,NULL,'TAXIM O 100 MG',NULL,NULL,NULL,NULL,167,51,6),(2862,NULL,'TAXIM O DROPS',NULL,NULL,NULL,NULL,167,51,6),(2863,NULL,'TAXIM O DRY SYRUP',NULL,NULL,NULL,NULL,167,51,6),(2864,NULL,'TAXIM O FORTE D/SY',NULL,NULL,NULL,NULL,169,51,6),(2865,NULL,'TAZOMAC 4.5 INJ',NULL,NULL,NULL,NULL,170,51,6),(2866,NULL,'TBN EYE 10ML',NULL,NULL,NULL,NULL,182,51,6),(2867,NULL,'TD VAC',NULL,NULL,NULL,NULL,167,51,6),(2868,NULL,'TEAR DROPS 5ML',NULL,NULL,NULL,NULL,167,51,6),(2869,NULL,'TEBINA',NULL,NULL,NULL,NULL,181,51,6),(2870,NULL,'TEDI BAR',NULL,NULL,NULL,NULL,186,51,6),(2871,NULL,'TELMA AM',NULL,NULL,NULL,NULL,167,51,6),(2872,NULL,'TELMA TAB 20MG',NULL,NULL,NULL,NULL,167,51,6),(2873,NULL,'TELMA 40 TAB',NULL,NULL,NULL,NULL,167,51,6),(2874,NULL,'TELMA H TAB',NULL,NULL,NULL,NULL,167,51,6),(2875,NULL,'TELMAKIND 40',NULL,NULL,NULL,NULL,167,51,6),(2876,NULL,'TELMAKIND 20',NULL,NULL,NULL,NULL,167,51,6),(2877,NULL,'TELMAKIND 40 (DUPE)',NULL,NULL,NULL,NULL,167,51,6),(2878,NULL,'TEMP 15ML',NULL,NULL,NULL,NULL,182,51,6),(2879,NULL,'TEMP SYP 250',NULL,NULL,NULL,NULL,NULL,51,6),(2880,NULL,'TERMIN INJECTION',NULL,NULL,NULL,NULL,167,51,6),(2881,NULL,'TESTOVIRON DEPOT INJ 250mg',NULL,NULL,NULL,NULL,170,51,6),(2882,NULL,'TEXCLAV 625',NULL,NULL,NULL,NULL,167,51,6),(2883,NULL,'THERMOMETER',NULL,NULL,NULL,NULL,217,51,6),(2884,NULL,'THIAMIN',NULL,NULL,NULL,NULL,167,51,6),(2885,NULL,'THIAMIN 2ML',NULL,NULL,NULL,NULL,170,51,6),(2886,NULL,'THROBINAC P',NULL,NULL,NULL,NULL,167,51,6),(2887,NULL,'THROBINAC SP',NULL,NULL,NULL,NULL,167,51,6),(2888,NULL,'THROMBINAC TH',NULL,NULL,NULL,NULL,167,51,6),(2889,NULL,'THROMBOPHOB OINT',NULL,NULL,NULL,NULL,167,51,6),(2890,NULL,'THUMB SPICA SPLINT',NULL,NULL,NULL,NULL,174,51,6),(2891,NULL,'THYRONORM 88',NULL,NULL,NULL,NULL,NULL,51,6),(2892,NULL,'THYRONORM 12.5 TAB',NULL,NULL,NULL,NULL,167,51,6),(2893,NULL,'THYRONORM 125MG',NULL,NULL,NULL,NULL,167,51,6),(2894,NULL,'THYRONORM 150 TAB',NULL,NULL,NULL,NULL,167,51,6),(2895,NULL,'THYRONORM 25MG',NULL,NULL,NULL,NULL,167,51,6),(2896,NULL,'THYRONORM 37.5',NULL,NULL,NULL,NULL,167,51,6),(2897,NULL,'THYRONORM 50MG',NULL,NULL,NULL,NULL,167,51,6),(2898,NULL,'THYRONORM 75 TAB',NULL,NULL,NULL,NULL,167,51,6),(2899,NULL,'THYRONORM62.5 62.5',NULL,NULL,NULL,NULL,174,51,6),(2900,NULL,'TIGLOFER XT',NULL,NULL,NULL,NULL,168,51,6),(2901,NULL,'TOBA 0.3% EYE DROPS 5 ML',NULL,NULL,NULL,NULL,167,51,6),(2902,NULL,'TOBA DM5ML',NULL,NULL,NULL,NULL,167,51,6),(2903,NULL,'TOBACIN EYE DROPS 5ML',NULL,NULL,NULL,NULL,167,51,6),(2904,NULL,'TONOFERON DROPS',NULL,NULL,NULL,NULL,167,51,6),(2905,NULL,'TONOFERON PAED SYP',NULL,NULL,NULL,NULL,167,51,6),(2906,NULL,'TOP BAN 10CM ORTHO BANDAGE',NULL,NULL,NULL,NULL,NULL,51,6),(2907,NULL,'TOP BAN ORTHO BANDAGE 15CM',NULL,NULL,NULL,NULL,NULL,51,6),(2908,NULL,'TOP CREPE 10 CM',NULL,NULL,NULL,NULL,167,51,6),(2909,NULL,'TOP CREPE 15CM',NULL,NULL,NULL,NULL,167,51,6),(2910,NULL,'TOP O PLAST 10CM',NULL,NULL,NULL,NULL,167,51,6),(2911,NULL,'TOTALIS CAP',NULL,NULL,NULL,NULL,168,51,6),(2912,NULL,'TRAMAZAC INJ',NULL,NULL,NULL,NULL,167,51,6),(2913,NULL,'TRAMEF 2ml',NULL,NULL,NULL,NULL,170,51,6),(2914,NULL,'TRAMOSUN 2ml',NULL,NULL,NULL,NULL,170,51,6),(2915,NULL,'TRAPIC MF',NULL,NULL,NULL,NULL,167,51,6),(2916,NULL,'TRAPIC 650',NULL,NULL,NULL,NULL,167,51,6),(2917,NULL,'TRAPIC INJ 5ML',NULL,NULL,NULL,NULL,174,51,6),(2918,NULL,'TRAPIC TAB 500 10',NULL,NULL,NULL,NULL,NULL,51,6),(2919,NULL,'TRESIVAC (MMR)INJ',NULL,NULL,NULL,NULL,167,51,6),(2920,NULL,'TREVUP9THIAMIN)2ML 1',NULL,NULL,NULL,NULL,202,51,6),(2921,NULL,'TRIMOL',NULL,NULL,NULL,NULL,167,51,6),(2922,NULL,'TRIPZER PLUS',NULL,NULL,NULL,NULL,167,51,6),(2923,NULL,'TROPINE INJ 1ML',NULL,NULL,NULL,NULL,167,51,6),(2924,NULL,'TRUBOND TN622',NULL,NULL,NULL,NULL,173,51,6),(2925,NULL,'TRUGLYDE 1SN 2347 A 20CM',NULL,NULL,NULL,NULL,175,51,6),(2926,NULL,'TRUGLYDE FAST2-0 SN2762 90CM',NULL,NULL,NULL,NULL,NULL,51,6),(2927,NULL,'NEEDLE (B11)',NULL,NULL,NULL,NULL,NULL,51,6),(2928,NULL,'TRUGLYDE FAST2-0 SN2777 140CM',NULL,NULL,NULL,NULL,NULL,51,6),(2929,NULL,'AEROFOAM (B11)',NULL,NULL,NULL,NULL,NULL,51,6),(2930,NULL,'TRUGUT 2-0 ( 3.5 METRIC ) 4241',NULL,NULL,NULL,NULL,167,51,6),(2931,NULL,'TRUSYNTH 1TS2347 90CM',NULL,NULL,NULL,NULL,175,51,6),(2932,NULL,'TUBERVAC INJ',NULL,NULL,NULL,NULL,170,51,6),(2933,NULL,'TURBOCLAV 625',NULL,NULL,NULL,NULL,167,51,6),(2934,NULL,'TYPBAR TCV VACCINE',NULL,NULL,NULL,NULL,190,51,6),(2935,NULL,'TYPLIN - C',NULL,NULL,NULL,NULL,167,51,6),(2936,NULL,'TYPLIN 10',NULL,NULL,NULL,NULL,167,51,6),(2937,NULL,'TYPLIN 25',NULL,NULL,NULL,NULL,167,51,6),(2938,NULL,'UBICAR',NULL,NULL,NULL,NULL,167,51,6),(2939,NULL,'UBICAR WOMEN',NULL,NULL,NULL,NULL,168,51,6),(2940,NULL,'UBIQNOR',NULL,NULL,NULL,NULL,167,51,6),(2941,NULL,'UDILIV 150',NULL,NULL,NULL,NULL,167,51,6),(2942,NULL,'UDILIV 300',NULL,NULL,NULL,NULL,167,51,6),(2943,NULL,'UGICLEAN 1000',NULL,NULL,NULL,NULL,167,51,6),(2944,NULL,'ULTRACET',NULL,NULL,NULL,NULL,167,51,6),(2945,NULL,'ULTRASUN',NULL,NULL,NULL,NULL,167,51,6),(2946,NULL,'UNDERPAD-PROCARE',NULL,NULL,NULL,NULL,NULL,51,6),(2947,NULL,'UNITREXATE 50',NULL,NULL,NULL,NULL,170,51,6),(2948,NULL,'UNWANTED KIT',NULL,NULL,NULL,NULL,167,51,6),(2949,NULL,'URIKIND TAB',NULL,NULL,NULL,NULL,167,51,6),(2950,NULL,'URIX',NULL,NULL,NULL,NULL,170,51,6),(2951,NULL,'URO BAG (UROLINK)2000ML',NULL,NULL,NULL,NULL,167,51,6),(2952,NULL,'UT JOY 100 ML',NULL,NULL,NULL,NULL,179,51,6),(2953,NULL,'UTI FLUSH SACHET',NULL,NULL,NULL,NULL,NULL,51,6),(2954,NULL,'UV DOUX SUNSCREEN GEL',NULL,NULL,NULL,NULL,172,51,6),(2955,NULL,'VAGINAL HYSTERCTOMY KIT',NULL,NULL,NULL,NULL,193,51,6),(2956,NULL,'VALCIVIR 1000',NULL,NULL,NULL,NULL,167,51,6),(2957,NULL,'VALIUM 5MG',NULL,NULL,NULL,NULL,167,51,6),(2958,NULL,'VASOCONA',NULL,NULL,NULL,NULL,167,51,6),(2959,NULL,'VB7 HAIR',NULL,NULL,NULL,NULL,167,51,6),(2960,NULL,'VCET-LM TAB',NULL,NULL,NULL,NULL,167,51,6),(2961,NULL,'VECET MT',NULL,NULL,NULL,NULL,167,51,6),(2962,NULL,'VEGLISAP 50',NULL,NULL,NULL,NULL,167,51,6),(2963,NULL,'VEHYCAL XT',NULL,NULL,NULL,NULL,167,51,6),(2964,NULL,'VEIN-O-LINE 100cm',NULL,NULL,NULL,NULL,NULL,51,6),(2965,NULL,'VEINWIN',NULL,NULL,NULL,NULL,167,51,6),(2966,NULL,'VELTAM 0.4',NULL,NULL,NULL,NULL,167,51,6),(2967,NULL,'VELTAM-0.2',NULL,NULL,NULL,NULL,167,51,6),(2968,NULL,'VENOUS NERVE',NULL,NULL,NULL,NULL,167,51,6),(2969,NULL,'VENUSIA MAX LOTION',NULL,NULL,NULL,NULL,NULL,51,6),(2970,NULL,'VERTIN 16',NULL,NULL,NULL,NULL,167,51,6),(2971,NULL,'VERTIN 8',NULL,NULL,NULL,NULL,167,51,6),(2972,NULL,'VIBLIZ M',NULL,NULL,NULL,NULL,167,51,6),(2973,NULL,'VICARE I-',NULL,NULL,NULL,NULL,181,51,6),(2974,NULL,'VICKS 10G',NULL,NULL,NULL,NULL,167,51,6),(2975,NULL,'VICKS 5G',NULL,NULL,NULL,NULL,167,51,6),(2976,NULL,'VICKS BABY RUB',NULL,NULL,NULL,NULL,NULL,51,6),(2977,NULL,'VICKS INHALER',NULL,NULL,NULL,NULL,167,51,6),(2978,NULL,'VICRYL 1',NULL,NULL,NULL,NULL,174,51,6),(2979,NULL,'VICRYL 2_0NW2317',NULL,NULL,NULL,NULL,167,51,6),(2980,NULL,'VICRYL 3-0 NW2328',NULL,NULL,NULL,NULL,174,51,6),(2981,NULL,'VICRYL 3_0 NW 2437',NULL,NULL,NULL,NULL,174,51,6),(2982,NULL,'VICRYL NO 1NW2347',NULL,NULL,NULL,NULL,167,51,6),(2983,NULL,'VICRYL PLUS 3-0 VP 2328',NULL,NULL,NULL,NULL,175,51,6),(2984,NULL,'VICRYL RAPIDE 2_0 NW2777',NULL,NULL,NULL,NULL,174,51,6),(2985,NULL,'VICTORY 200',NULL,NULL,NULL,NULL,167,51,6),(2986,NULL,'VISTALAC',NULL,NULL,NULL,NULL,168,51,6),(2987,NULL,'VITAFLOW 5GM',NULL,NULL,NULL,NULL,178,51,6),(2988,NULL,'VITANOVA D3',NULL,NULL,NULL,NULL,178,51,6),(2989,NULL,'VITARGIN 1000MG',NULL,NULL,NULL,NULL,167,51,6),(2990,NULL,'VITASURGE 200ml',NULL,NULL,NULL,NULL,169,51,6),(2991,NULL,'VIZYLAC',NULL,NULL,NULL,NULL,167,51,6),(2992,NULL,'VIZYLAC SYP',NULL,NULL,NULL,NULL,167,51,6),(2993,NULL,'VOGLET 0.3',NULL,NULL,NULL,NULL,167,51,6),(2994,NULL,'VOGLET 0.2',NULL,NULL,NULL,NULL,167,51,6),(2995,NULL,'VOGLET-M.03 1',NULL,NULL,NULL,NULL,167,51,6),(2996,NULL,'VOLDASE DP-10',NULL,NULL,NULL,NULL,167,51,6),(2997,NULL,'VOLRAB 20 INJ',NULL,NULL,NULL,NULL,NULL,51,6),(2998,NULL,'VOLRAB 20MG',NULL,NULL,NULL,NULL,167,51,6),(2999,NULL,'VOMIKIND INJ',NULL,NULL,NULL,NULL,167,51,6),(3000,NULL,'VOMIKIND SYP',NULL,NULL,NULL,NULL,167,51,6),(3001,NULL,'VOVERAN 50',NULL,NULL,NULL,NULL,167,51,6),(3002,NULL,'VOVERAN INJECTIONS',NULL,NULL,NULL,NULL,167,51,6),(3003,NULL,'VOVERAN PLUS TAB',NULL,NULL,NULL,NULL,167,51,6),(3004,NULL,'VOVIDASE DP',NULL,NULL,NULL,NULL,167,51,6),(3005,NULL,'VOXIMOX CL 625',NULL,NULL,NULL,NULL,167,51,6),(3006,NULL,'VAL D3 PLUS DROPS 5ml',NULL,NULL,NULL,NULL,183,51,6),(3007,NULL,'VALYTE ORANGE',NULL,NULL,NULL,NULL,215,51,6),(3008,NULL,'VELDASE D',NULL,NULL,NULL,NULL,167,51,6),(3009,NULL,'WELLNOR 10',NULL,NULL,NULL,NULL,167,51,6),(3010,NULL,'WELSET INJ',NULL,NULL,NULL,NULL,170,51,6),(3011,NULL,'WELTEN-M',NULL,NULL,NULL,NULL,167,51,6),(3012,NULL,'WHISPER CHOICE ONXXL6S',NULL,NULL,NULL,NULL,NULL,51,6),(3013,NULL,'WHISPER CHOICE ULTRA 6S',NULL,NULL,NULL,NULL,167,51,6),(3014,NULL,'WHISPER CHOICE XL 6s',NULL,NULL,NULL,NULL,NULL,51,6),(3015,NULL,'WHITEFIELD OINTMENT',NULL,NULL,NULL,NULL,167,51,6),(3016,NULL,'WINKAST-FX',NULL,NULL,NULL,NULL,167,51,6),(3017,NULL,'VOXICEF SL 1.5mg',NULL,NULL,NULL,NULL,170,51,6),(3018,NULL,'WRIST SPLINT L LEFT',NULL,NULL,NULL,NULL,NULL,51,6),(3019,NULL,'WRIST SPLINT MEDIUM LEFT DYNA',NULL,NULL,NULL,NULL,NULL,51,6),(3020,NULL,'WRIST SPLINT RIGHT MEDIUM',NULL,NULL,NULL,NULL,NULL,51,6),(3021,NULL,'WRIST SPLINTLARGE RIGHT DYNA',NULL,NULL,NULL,NULL,NULL,51,6),(3022,NULL,'VYSOLONE-10',NULL,NULL,NULL,NULL,167,51,6),(3023,NULL,'VYSOLONE-5',NULL,NULL,NULL,NULL,167,51,6),(3024,NULL,'X-POD 200',NULL,NULL,NULL,NULL,167,51,6),(3025,NULL,'XONE IGM INJ',NULL,NULL,NULL,NULL,167,51,6),(3026,NULL,'XYMEX DROPS',NULL,NULL,NULL,NULL,167,51,6),(3027,NULL,'XYZAL 5MG',NULL,NULL,NULL,NULL,167,51,6),(3028,NULL,'XYZAL SYP',NULL,NULL,NULL,NULL,169,51,6),(3029,NULL,'XYZAL TAB',NULL,NULL,NULL,NULL,167,51,6),(3030,NULL,'Z BERRY 100ML',NULL,NULL,NULL,NULL,169,51,6),(3031,NULL,'ZEKACIN 100 MG',NULL,NULL,NULL,NULL,NULL,51,6),(3032,NULL,'ZENTEL',NULL,NULL,NULL,NULL,167,51,6),(3033,NULL,'ZENTEL SYP',NULL,NULL,NULL,NULL,179,51,6),(3034,NULL,'ZERODOL SP',NULL,NULL,NULL,NULL,167,51,6),(3035,NULL,'ZERODOL (TAB)',NULL,NULL,NULL,NULL,167,51,6),(3036,NULL,'ZERODOL S TAB',NULL,NULL,NULL,NULL,167,51,6),(3037,NULL,'ZERODOL SPAS 100MG',NULL,NULL,NULL,NULL,167,51,6),(3038,NULL,'ZERODOL TH',NULL,NULL,NULL,NULL,167,51,6),(3039,NULL,'ZEROSTAT VT SPACER',NULL,NULL,NULL,NULL,167,51,6),(3040,NULL,'ZINCO-MN SYRUP',NULL,NULL,NULL,NULL,169,51,6),(3041,NULL,'ZINCOA TAB',NULL,NULL,NULL,NULL,167,51,6),(3042,NULL,'ZINCOVIT SYRUP',NULL,NULL,NULL,NULL,167,51,6),(3043,NULL,'ZINCOVIT',NULL,NULL,NULL,NULL,167,51,6),(3044,NULL,'ZINCOVIT DROPS 15ML',NULL,NULL,NULL,NULL,167,51,6),(3045,NULL,'ZITBLOW 20MG',NULL,NULL,NULL,NULL,168,51,6),(3046,NULL,'ZITHROLECT',NULL,NULL,NULL,NULL,167,51,6),(3047,NULL,'ZITOTEC 200',NULL,NULL,NULL,NULL,167,51,6),(3048,NULL,'ZIX MR',NULL,NULL,NULL,NULL,167,51,6),(3049,NULL,'ZOLFRESH 10MG',NULL,NULL,NULL,NULL,167,51,6),(3050,NULL,'ZOLFRESH 5',NULL,NULL,NULL,NULL,167,51,6),(3051,NULL,'ZONORAB D',NULL,NULL,NULL,NULL,167,51,6),(3052,NULL,'ZORBERRY DROPS 30 ML',NULL,NULL,NULL,NULL,182,51,6),(3053,NULL,'ZORBERRY SUS 200 ML',NULL,NULL,NULL,NULL,179,51,6),(3054,NULL,'ZORVIN KID SYRUP 100ML',NULL,NULL,NULL,NULL,169,51,6),(3055,NULL,'ZOVIRAX 200 TAB',NULL,NULL,NULL,NULL,167,51,6),(3056,NULL,'ZOVIRAX 800 800',NULL,NULL,NULL,NULL,167,51,6),(3057,NULL,'ZUVISTON TAB',NULL,NULL,NULL,NULL,167,51,6),(3058,NULL,'ZYLD 300',NULL,NULL,NULL,NULL,167,51,6),(3059,NULL,'ZYLYTE ORS POWDER 1',NULL,NULL,NULL,NULL,189,51,6),(3060,NULL,'ZYOXIN',NULL,NULL,NULL,NULL,167,51,6),(3061,NULL,'ZYRTEC SYP 60 ML',NULL,NULL,NULL,NULL,167,51,6),(3062,NULL,'ZYSET INJ 2.ML',NULL,NULL,NULL,NULL,NULL,51,6),(3063,NULL,'ZYTEE GEL 10 ML',NULL,NULL,NULL,NULL,172,51,6),(3065,NULL,'AB  PHYLLINE',NULL,NULL,NULL,NULL,NULL,57,6),(3066,NULL,'AB GEL',NULL,NULL,NULL,NULL,NULL,58,6),(3067,NULL,'ABD BINDER large (velcro)',NULL,NULL,NULL,NULL,NULL,59,6),(3068,NULL,'ABD BINDER medium(velcro)',NULL,NULL,NULL,NULL,NULL,59,6),(3069,NULL,'ABDOMINAL HYSTROCTOMY KIT',NULL,NULL,NULL,NULL,NULL,60,6),(3070,NULL,'ACCURATE PREGNANCY KIT',NULL,NULL,NULL,NULL,NULL,61,6),(3071,NULL,'ACIZER SP',NULL,NULL,NULL,NULL,NULL,57,6),(3072,NULL,'ACULYTE P',NULL,NULL,NULL,NULL,NULL,62,6),(3073,NULL,'ADVACAT 3 0 4237 CHROMIC 76 CM',NULL,NULL,NULL,NULL,NULL,60,6),(3074,NULL,'ADVACRYL 2437 70 CM',NULL,NULL,NULL,NULL,NULL,60,6),(3075,NULL,'ADVAGRIP 180 BARB',NULL,NULL,NULL,NULL,NULL,60,6),(3076,NULL,'ALCIFLOX EYE  AND EAR DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3077,NULL,'ALCIPRO  IV INFUSION',NULL,NULL,NULL,NULL,NULL,62,6),(3078,NULL,'ALLEGRA 120',NULL,NULL,NULL,NULL,NULL,57,6),(3079,NULL,'ALLERONE M SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3080,NULL,'ALPRAX0.5',NULL,NULL,NULL,NULL,NULL,57,6),(3081,NULL,'AMIKAMAC 250 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3082,NULL,'AMLONG 10 MG',NULL,NULL,NULL,NULL,NULL,57,6),(3083,NULL,'AMLONG 5 MG',NULL,NULL,NULL,NULL,NULL,57,6),(3084,NULL,'ANAWIN .5% INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3085,NULL,'ANAWIN HEAVY INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3086,NULL,'ANEC P',NULL,NULL,NULL,NULL,NULL,57,6),(3087,NULL,'ANEKET INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3088,NULL,'ANTI D 150 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3089,NULL,'ANTI D300 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3090,NULL,'APCCOD SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3091,NULL,'APCOD  OBIS SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3092,NULL,'APLICALP',NULL,NULL,NULL,NULL,NULL,66,6),(3093,NULL,'APPLEVIT EVA SOSFT GEL',NULL,NULL,NULL,NULL,NULL,66,6),(3094,NULL,'APPLEVIT SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3095,NULL,'ARTACIL INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3096,NULL,'ARTACIL INJ2.5',NULL,NULL,NULL,NULL,NULL,63,6),(3097,NULL,'ASCORIL D PLUS SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3098,NULL,'ASCORIL LS SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3099,NULL,'ASCORIL SF SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3100,NULL,'ASCORIL+EXPECTORANT',NULL,NULL,NULL,NULL,NULL,62,6),(3101,NULL,'ASTHALIN 2 MG',NULL,NULL,NULL,NULL,NULL,57,6),(3102,NULL,'ASTHALIN RESPULES',NULL,NULL,NULL,NULL,NULL,67,6),(3103,NULL,'ATAREX 10MG TAB',NULL,NULL,NULL,NULL,NULL,62,6),(3104,NULL,'ATAREX ANTI ITCH LOTION',NULL,NULL,NULL,NULL,NULL,62,6),(3105,NULL,'ATAREX SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3106,NULL,'ATEN 25 MG TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3107,NULL,'ATEN 50MG TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3108,NULL,'ATOGLA LOTION',NULL,NULL,NULL,NULL,NULL,62,6),(3109,NULL,'ATORNET 10MG',NULL,NULL,NULL,NULL,NULL,57,6),(3110,NULL,'ATROMED INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3111,NULL,'AUGMANTHIN 1000MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3112,NULL,'AUGMENTIN 375 TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3113,NULL,'AUGMENTIN 625 TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3114,NULL,'AUGPEN DS 457 SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3115,NULL,'AUGPEN HS SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3116,NULL,'AVIL 25 TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3117,NULL,'AVIL INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3118,NULL,'AZIBACT LR 100  SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3119,NULL,'AZIBACT LR 200 SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3120,NULL,'AZIPRIL  200 SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3121,NULL,'AZITHRAL 100 MG LIQUID',NULL,NULL,NULL,NULL,NULL,62,6),(3122,NULL,'AZITHRAL 500 MG TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3123,NULL,'AZITHRAL250 TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3124,NULL,'AZTOR 10 TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3125,NULL,'AZTOR 20 TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3126,NULL,'AZTOR 5 TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3127,NULL,'BABY  DEW SOAP',NULL,NULL,NULL,NULL,NULL,68,6),(3128,NULL,'BABY KIT',NULL,NULL,NULL,NULL,NULL,60,6),(3129,NULL,'BACTIGRAS',NULL,NULL,NULL,NULL,NULL,60,6),(3130,NULL,'BAND AID',NULL,NULL,NULL,NULL,NULL,60,6),(3131,NULL,'BANDAGECLOTH 15CM',NULL,NULL,NULL,NULL,NULL,60,6),(3132,NULL,'BANDY PLUS SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3133,NULL,'BANDY PLUS TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3134,NULL,'BECOSULES CAPSULES',NULL,NULL,NULL,NULL,NULL,66,6),(3135,NULL,'BENZAC AC GEL2.5%',NULL,NULL,NULL,NULL,NULL,63,6),(3136,NULL,'BETADIN10% 20G OINTMENT',NULL,NULL,NULL,NULL,NULL,70,6),(3137,NULL,'BETADINE 5% 125 OINTMENT',NULL,NULL,NULL,NULL,NULL,70,6),(3138,NULL,'BETADINE GERMICIDE GARGLE 2%',NULL,NULL,NULL,NULL,NULL,71,6),(3139,NULL,'BEVAC .5ML INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3140,NULL,'BEVAC B 1ML INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3141,NULL,'BEVON SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3142,NULL,'BIFILAC CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3143,NULL,'BIFILAC HP CAP',NULL,NULL,NULL,NULL,NULL,57,6),(3144,NULL,'BILAVEL M  TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3145,NULL,'BINDER TIE',NULL,NULL,NULL,NULL,NULL,60,6),(3146,NULL,'BIOPOLIO VACCINE',NULL,NULL,NULL,NULL,NULL,72,6),(3147,NULL,'BIOTREXATE INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3148,NULL,'BIPRAZONE 1.5 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3149,NULL,'BIZFER XT TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3150,NULL,'BOOSTRIX INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3151,NULL,'BRANCHOCID G',NULL,NULL,NULL,NULL,NULL,57,6),(3152,NULL,'BRIOPAN 40 MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3153,NULL,'BUDECORT 0.5MG RESPULES',NULL,NULL,NULL,NULL,NULL,67,6),(3154,NULL,'BUDECORT 100 MCG INHELER',NULL,NULL,NULL,NULL,NULL,73,6),(3155,NULL,'BUPRIGESIC INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3156,NULL,'BUTEDOL I',NULL,NULL,NULL,NULL,NULL,63,6),(3157,NULL,'C HOPE 300 SR TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3158,NULL,'C TRI  500MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3159,NULL,'C TRI 1 GM INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3160,NULL,'C TRI 250MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3161,NULL,'CABGOLIN  0.5MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3162,NULL,'CALAPURE A LOTION',NULL,NULL,NULL,NULL,NULL,62,6),(3163,NULL,'CALPOL 120 PED SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3164,NULL,'CALPOL 250 SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3165,NULL,'CALPOL 500 MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3166,NULL,'CANDID 30G CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3167,NULL,'CANDID B CREAM 20GM',NULL,NULL,NULL,NULL,NULL,58,6),(3168,NULL,'CANDID DUSTING POWDER',NULL,NULL,NULL,NULL,NULL,74,6),(3169,NULL,'CANDID MOUTH PAINT',NULL,NULL,NULL,NULL,NULL,62,6),(3170,NULL,'CANDIFORCE 100 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3171,NULL,'CANSOFT CL VAG SUPPOSITARY',NULL,NULL,NULL,NULL,NULL,76,6),(3172,NULL,'CARMICIDE ADULT SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3173,NULL,'CARMICIDE PEADIATRIC SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3174,NULL,'CASTRO G 100 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3175,NULL,'CEFTAS 100 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3176,NULL,'CEFTAS 200 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3177,NULL,'CEFTUM 250 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3178,NULL,'CEFTUM 500 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3179,NULL,'CELFEE 500 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3180,NULL,'CERVIFEN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3181,NULL,'CHESTON COLD TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3182,NULL,'CHROMIFEM TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3183,NULL,'CHYMORAL FORTE TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3184,NULL,'CILACAR 10 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3185,NULL,'CILAHEART  T',NULL,NULL,NULL,NULL,NULL,57,6),(3186,NULL,'CILAHEART 10 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3187,NULL,'CILAHEART 5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3188,NULL,'CIPLOX 500 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3189,NULL,'CIPLOX TZ TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3190,NULL,'CIPZEN FORTE 10 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3191,NULL,'CLEAR UTI SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3192,NULL,'CLIM V3 CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3193,NULL,'CLIQ 100 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3194,NULL,'CLOPILET 75 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3195,NULL,'COBADEX CZS TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3196,NULL,'COLICAID SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3197,NULL,'COQ 300 CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3198,NULL,'COTTON 25',NULL,NULL,NULL,NULL,NULL,60,6),(3199,NULL,'COTTON 400',NULL,NULL,NULL,NULL,NULL,60,6),(3200,NULL,'CREMAFFIN  PLUS SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3201,NULL,'CRINA NCR 10',NULL,NULL,NULL,NULL,NULL,57,6),(3202,NULL,'CTD 12.5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3203,NULL,'CTD 6.25 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3204,NULL,'CYCLOPAM INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3205,NULL,'CYCLOPAM SUSP 60ML',NULL,NULL,NULL,NULL,NULL,62,6),(3206,NULL,'CYCLOPAM SUSPENSION 30ML',NULL,NULL,NULL,NULL,NULL,62,6),(3207,NULL,'CYCLOPAM TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3208,NULL,'D 10% INJECTION (IV)',NULL,NULL,NULL,NULL,NULL,63,6),(3209,NULL,'D 25% INJECTION (IV)',NULL,NULL,NULL,NULL,NULL,63,6),(3210,NULL,'D 5% INJECTION (IV)',NULL,NULL,NULL,NULL,NULL,63,6),(3211,NULL,'D BASK NANO SHOT',NULL,NULL,NULL,NULL,NULL,62,6),(3212,NULL,'D3 MUST 60K TAB',NULL,NULL,NULL,NULL,NULL,62,6),(3213,NULL,'DAPASIS 10MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3214,NULL,'DAROLAC SACHET 2GM',NULL,NULL,NULL,NULL,NULL,65,6),(3215,NULL,'DEBRIN 15GM CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3216,NULL,'DEFCORT 6MG TABLET',NULL,NULL,NULL,NULL,NULL,57,6),(3217,NULL,'DELICES Z DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3218,NULL,'DERIPHYLLIN INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3219,NULL,'DERIPHYLLIN RETARD150 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3220,NULL,'DERIVA CMS GEL',NULL,NULL,NULL,NULL,NULL,75,6),(3221,NULL,'DERMADEW CALOE PLUSLOTION',NULL,NULL,NULL,NULL,NULL,62,6),(3222,NULL,'DEXONA INJECTON',NULL,NULL,NULL,NULL,NULL,63,6),(3223,NULL,'DEXONATAB',NULL,NULL,NULL,NULL,NULL,57,6),(3224,NULL,'DEXORANGE SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3225,NULL,'DEXTOMID 100',NULL,NULL,NULL,NULL,NULL,57,6),(3226,NULL,'DEXTOMID 50',NULL,NULL,NULL,NULL,NULL,57,6),(3227,NULL,'DIAPPER ADULT',NULL,NULL,NULL,NULL,NULL,77,6),(3228,NULL,'DIGEMIN SYRUP 200ML',NULL,NULL,NULL,NULL,NULL,62,6),(3229,NULL,'DINO 2MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3230,NULL,'DINOSTAR 2MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3231,NULL,'DIS NEW MOM FIXATOR L',NULL,NULL,NULL,NULL,NULL,78,6),(3232,NULL,'DIS NEW MOM FIXATORXXL',NULL,NULL,NULL,NULL,NULL,78,6),(3233,NULL,'DIS NEWMOM FIXATOR XL',NULL,NULL,NULL,NULL,NULL,78,6),(3234,NULL,'DIS NEWMOM PAD',NULL,NULL,NULL,NULL,NULL,79,6),(3235,NULL,'DNS 500ML INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3236,NULL,'DOIL LINIMENT',NULL,NULL,NULL,NULL,NULL,62,6),(3237,NULL,'DOLO 650 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3238,NULL,'DOLOGEL',NULL,NULL,NULL,NULL,NULL,75,6),(3239,NULL,'DOLONEX INJ 20',NULL,NULL,NULL,NULL,NULL,63,6),(3240,NULL,'DOMIN INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3241,NULL,'DREMADEW BABY LOTION',NULL,NULL,NULL,NULL,NULL,62,6),(3242,NULL,'DRONIS 30 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3243,NULL,'DROXYL 250DT',NULL,NULL,NULL,NULL,NULL,57,6),(3244,NULL,'DUPHALAC SOLUTION 250ML',NULL,NULL,NULL,NULL,NULL,62,6),(3245,NULL,'DUPHASTON 10MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3246,NULL,'DUVADILAN 10 MG',NULL,NULL,NULL,NULL,NULL,57,6),(3247,NULL,'DUVADILAN RETARD 40MG',NULL,NULL,NULL,NULL,NULL,66,6),(3248,NULL,'DYDROFEM-10MG',NULL,NULL,NULL,NULL,NULL,57,6),(3249,NULL,'DYDROZON 10MG',NULL,NULL,NULL,NULL,NULL,57,6),(3250,NULL,'DYDROZOX-10MG',NULL,NULL,NULL,NULL,NULL,57,6),(3251,NULL,'DYNAGLIPT 20MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3252,NULL,'EASY FIX  M',NULL,NULL,NULL,NULL,NULL,60,6),(3253,NULL,'ECOFLORA CAP',NULL,NULL,NULL,NULL,NULL,62,6),(3254,NULL,'ECOSPRIN 150 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3255,NULL,'ECOSPRIN 75 MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3256,NULL,'EFFERCAL D TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3257,NULL,'EFFON HP 75 IU',NULL,NULL,NULL,NULL,NULL,63,6),(3258,NULL,'EFIPRES INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3259,NULL,'ELROSE CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3260,NULL,'EMBRYOFIX FG SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3261,NULL,'EMESET 4 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3262,NULL,'EMESET INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3263,NULL,'EMESET SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3264,NULL,'ENCORATE CHRONO 300',NULL,NULL,NULL,NULL,NULL,80,6),(3265,NULL,'ENDOGRACE M CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3266,NULL,'ENDOSIS 2MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3267,NULL,'ENDOTRACHEAL TUBE 6',NULL,NULL,NULL,NULL,NULL,60,6),(3268,NULL,'ENDOTRACHEAL TUBE 7',NULL,NULL,NULL,NULL,NULL,60,6),(3269,NULL,'ENDOTRACHEAL TUBE 7.5',NULL,NULL,NULL,NULL,NULL,60,6),(3270,NULL,'ENDOTRACHEAL TUBE 8',NULL,NULL,NULL,NULL,NULL,60,6),(3271,NULL,'ENDOTRACHEAL TUBE2.5',NULL,NULL,NULL,NULL,NULL,60,6),(3272,NULL,'ENDOTRACHEALTUBE6.5',NULL,NULL,NULL,NULL,NULL,60,6),(3273,NULL,'ENJOY PRO',NULL,NULL,NULL,NULL,NULL,62,6),(3274,NULL,'ENRICAL TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3275,NULL,'ENTCOF LS SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3276,NULL,'ENTCOF SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3277,NULL,'ENTCOLD  SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3278,NULL,'ENTEROGERMINA RESPULE',NULL,NULL,NULL,NULL,NULL,67,6),(3279,NULL,'ENUFF CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3280,NULL,'EPIDOSIN INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3281,NULL,'EPTOIN INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3282,NULL,'ETHILON 2-0 3336',NULL,NULL,NULL,NULL,NULL,60,6),(3283,NULL,'ETHILON 3-0 3321',NULL,NULL,NULL,NULL,NULL,60,6),(3284,NULL,'ETHILON 3-0 3328',NULL,NULL,NULL,NULL,NULL,60,6),(3285,NULL,'EVAGON HP 75 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3286,NULL,'EVER WHITE 1200 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3287,NULL,'EVION',NULL,NULL,NULL,NULL,NULL,57,6),(3288,NULL,'EVION 600 CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3289,NULL,'EVION LC TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3290,NULL,'FACEMASK',NULL,NULL,NULL,NULL,NULL,60,6),(3291,NULL,'FACILE BABY WIPES',NULL,NULL,NULL,NULL,NULL,60,6),(3292,NULL,'FACILE BATH WIPES',NULL,NULL,NULL,NULL,NULL,60,6),(3293,NULL,'FACILE RAIZER',NULL,NULL,NULL,NULL,NULL,60,6),(3294,NULL,'FEBREX PLUS',NULL,NULL,NULL,NULL,NULL,57,6),(3295,NULL,'FEMILOSH VAG WASH',NULL,NULL,NULL,NULL,NULL,62,6),(3296,NULL,'FENZA 600',NULL,NULL,NULL,NULL,NULL,66,6),(3297,NULL,'FEPANIL 125 SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3298,NULL,'FEPANIL 250 SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3299,NULL,'FERAZON XT TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3300,NULL,'FERIGEM GOLD TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3301,NULL,'FERONIA  XT SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3302,NULL,'FERONIA XT TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3303,NULL,'FIBISAFE 25 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3304,NULL,'FIXZER 200 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3305,NULL,'FLAGYL  IV',NULL,NULL,NULL,NULL,NULL,62,6),(3306,NULL,'FLAGYL 200 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3307,NULL,'FLAGYL 400 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3308,NULL,'FLAGYL SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3309,NULL,'FLAVOCAL CAPSULE',NULL,NULL,NULL,NULL,NULL,66,6),(3310,NULL,'FLAVOSPAS TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3311,NULL,'FLORITA LL CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3312,NULL,'FLUVIR 75 CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3313,NULL,'FLUVIR SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3314,NULL,'FOLLIHAIR',NULL,NULL,NULL,NULL,NULL,57,6),(3315,NULL,'FOLVITE  5',NULL,NULL,NULL,NULL,NULL,57,6),(3316,NULL,'FORCAN 150 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3317,NULL,'FREELIV M SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3318,NULL,'FRISIUM 5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3319,NULL,'FUCIBET CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3320,NULL,'FULFLORA DRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3321,NULL,'GARDASIL',NULL,NULL,NULL,NULL,NULL,72,6),(3322,NULL,'GARDENAL SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3323,NULL,'GELUSIL',NULL,NULL,NULL,NULL,NULL,57,6),(3324,NULL,'GELUSIL MPS',NULL,NULL,NULL,NULL,NULL,62,6),(3325,NULL,'GEMYCINE 500MG',NULL,NULL,NULL,NULL,NULL,57,6),(3326,NULL,'GERBISA',NULL,NULL,NULL,NULL,NULL,57,6),(3327,NULL,'GERBISA 10MG SUPPOSITORY(ADULT)',NULL,NULL,NULL,NULL,NULL,76,6),(3328,NULL,'GERBISA 5MG SUPPOSITORY (CHILD)',NULL,NULL,NULL,NULL,NULL,76,6),(3329,NULL,'GESTIMATE 200MG SOFT GEL CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3330,NULL,'GESTOFIT 300MG SR',NULL,NULL,NULL,NULL,NULL,57,6),(3331,NULL,'GLADSOFT  LOTION',NULL,NULL,NULL,NULL,NULL,62,6),(3332,NULL,'GLCIPHAGE SR 500MG',NULL,NULL,NULL,NULL,NULL,57,6),(3333,NULL,'GLIMER 1MG',NULL,NULL,NULL,NULL,NULL,57,6),(3334,NULL,'GLIMER 2MG',NULL,NULL,NULL,NULL,NULL,57,6),(3335,NULL,'GLIMY 1MG',NULL,NULL,NULL,NULL,NULL,57,6),(3336,NULL,'GLINIX M1',NULL,NULL,NULL,NULL,NULL,57,6),(3337,NULL,'GLOVES 6 POWDER FREE',NULL,NULL,NULL,NULL,NULL,60,6),(3338,NULL,'GLOVES 6.5 POWDER FREE',NULL,NULL,NULL,NULL,NULL,60,6),(3339,NULL,'GLUCOSE POWDER 75 GM',NULL,NULL,NULL,NULL,NULL,74,6),(3340,NULL,'GLYCIPHAGE 500MG',NULL,NULL,NULL,NULL,NULL,57,6),(3341,NULL,'GOLPENT  NT',NULL,NULL,NULL,NULL,NULL,57,6),(3342,NULL,'GOODDAY',NULL,NULL,NULL,NULL,NULL,57,6),(3343,NULL,'GYNEMIX SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3344,NULL,'HAEMACCEL INFUSION',NULL,NULL,NULL,NULL,NULL,62,6),(3345,NULL,'HALCET IV',NULL,NULL,NULL,NULL,NULL,62,6),(3346,NULL,'HAPPYNAP 30GM CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3347,NULL,'HBCOM SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3348,NULL,'HERMIN INFUSION',NULL,NULL,NULL,NULL,NULL,62,6),(3349,NULL,'HERPERAX 400MG',NULL,NULL,NULL,NULL,NULL,57,6),(3350,NULL,'HERPERAX 800MG',NULL,NULL,NULL,NULL,NULL,81,6),(3351,NULL,'HERPERAX OINTMENT',NULL,NULL,NULL,NULL,NULL,70,6),(3352,NULL,'HHAMCLAV 228.5MG DRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3353,NULL,'HHAMCLAV DS 457MG  DRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3354,NULL,'HHAZI 250MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3355,NULL,'HHCEFI 100MG DRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3356,NULL,'HHCEFI 50MG DRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3357,NULL,'HHCEPO 100MG DRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3358,NULL,'HHCEPO 200MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3359,NULL,'HHCEPO 50MG DRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3360,NULL,'HHLEVO M KID SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3361,NULL,'HHLEVO M KID TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3362,NULL,'HHLEVO M TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3363,NULL,'HHLINCTUS EX SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3364,NULL,'HHLINCTUS LS SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3365,NULL,'HHLINCTUS SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3366,NULL,'HHSONE CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3367,NULL,'HIMALAYA BABY RASHFREE COW GHEE CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3368,NULL,'HOMISURE PLUS INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3369,NULL,'HUMAN ACTRAPID 40 INSULIN',NULL,NULL,NULL,NULL,NULL,63,6),(3370,NULL,'HUMAN MIXTARD 30/70 INSULIN',NULL,NULL,NULL,NULL,NULL,63,6),(3371,NULL,'HYDROCORT 100MG INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3372,NULL,'HYDROGEN PEROXIDE',NULL,NULL,NULL,NULL,NULL,82,6),(3373,NULL,'IBUGESIC PLUS SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3374,NULL,'ILATAB 150 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3375,NULL,'INFANRIX HEXA VACCINE',NULL,NULL,NULL,NULL,NULL,72,6),(3376,NULL,'isivit tab',NULL,NULL,NULL,NULL,NULL,57,6),(3377,NULL,'itragel',NULL,NULL,NULL,NULL,NULL,58,6),(3378,NULL,'iv cannula blue 22',NULL,NULL,NULL,NULL,NULL,60,6),(3379,NULL,'iv cannula blue 22(2)',NULL,NULL,NULL,NULL,NULL,60,6),(3380,NULL,'iv cannula green 18',NULL,NULL,NULL,NULL,NULL,60,6),(3381,NULL,'iv cannula green 18 (2)',NULL,NULL,NULL,NULL,NULL,60,6),(3382,NULL,'iv cannula rose 20 (2)',NULL,NULL,NULL,NULL,NULL,60,6),(3383,NULL,'jonac suppositories',NULL,NULL,NULL,NULL,NULL,76,6),(3384,NULL,'junior lanzol 15',NULL,NULL,NULL,NULL,NULL,57,6),(3385,NULL,'kefpod dt 100',NULL,NULL,NULL,NULL,NULL,57,6),(3386,NULL,'kelac injection',NULL,NULL,NULL,NULL,NULL,63,6),(3387,NULL,'kenadion injection',NULL,NULL,NULL,NULL,NULL,63,6),(3388,NULL,'ketostar anti dandruff lotion',NULL,NULL,NULL,NULL,NULL,62,6),(3389,NULL,'ketostar soap',NULL,NULL,NULL,NULL,NULL,68,6),(3390,NULL,'kinmol infusion',NULL,NULL,NULL,NULL,NULL,62,6),(3391,NULL,'kiwi cup',NULL,NULL,NULL,NULL,NULL,60,6),(3392,NULL,'krampfix',NULL,NULL,NULL,NULL,NULL,57,6),(3393,NULL,'labebet injection',NULL,NULL,NULL,NULL,NULL,63,6),(3394,NULL,'lactacyd wash',NULL,NULL,NULL,NULL,NULL,62,6),(3395,NULL,'lactare cap',NULL,NULL,NULL,NULL,NULL,66,6),(3396,NULL,'lactodex 1 starter formula',NULL,NULL,NULL,NULL,NULL,62,6),(3397,NULL,'lasix 40mg',NULL,NULL,NULL,NULL,NULL,57,6),(3398,NULL,'lasix inj 2ml',NULL,NULL,NULL,NULL,NULL,63,6),(3399,NULL,'Laxolite liqiud',NULL,NULL,NULL,NULL,NULL,62,6),(3400,NULL,'LBDOX',NULL,NULL,NULL,NULL,NULL,57,6),(3401,NULL,'Lecal forte t',NULL,NULL,NULL,NULL,NULL,57,6),(3402,NULL,'LECAL NANO 60K IU',NULL,NULL,NULL,NULL,NULL,62,6),(3403,NULL,'LEGGINGS',NULL,NULL,NULL,NULL,NULL,60,6),(3404,NULL,'LETSURE 5MG',NULL,NULL,NULL,NULL,NULL,57,6),(3405,NULL,'LETWELL 2.5MG',NULL,NULL,NULL,NULL,NULL,57,6),(3406,NULL,'LETZOVA 2.5',NULL,NULL,NULL,NULL,NULL,57,6),(3407,NULL,'LEUKOPORE 1 INCH',NULL,NULL,NULL,NULL,NULL,60,6),(3408,NULL,'LEUKOPORE TRANSPORE',NULL,NULL,NULL,NULL,NULL,60,6),(3409,NULL,'LEVOFLOX 500 MG',NULL,NULL,NULL,NULL,NULL,57,6),(3410,NULL,'LEVOLIN 2MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3411,NULL,'LEVOLIN RESPULES 0.31',NULL,NULL,NULL,NULL,NULL,67,6),(3412,NULL,'LEVOLIN RESPULES 0.63',NULL,NULL,NULL,NULL,NULL,67,6),(3413,NULL,'LEVOSOS SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3414,NULL,'LEZEST-M SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3415,NULL,'LIGNOX 2% INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3416,NULL,'LINOWIN 600MG',NULL,NULL,NULL,NULL,NULL,57,6),(3417,NULL,'LIOFEN 10MG',NULL,NULL,NULL,NULL,NULL,57,6),(3418,NULL,'LIV 52 SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3419,NULL,'LIVOGEN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3420,NULL,'LOMOFEN 2MS TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3421,NULL,'LONAZEP .5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3422,NULL,'LONOPIN CATRIDGE',NULL,NULL,NULL,NULL,NULL,63,6),(3423,NULL,'LORI INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3424,NULL,'LOSAR 50MG TAN',NULL,NULL,NULL,NULL,NULL,57,6),(3425,NULL,'LOX 10% SPRAY',NULL,NULL,NULL,NULL,NULL,62,6),(3426,NULL,'LOX 2%ADRENALINE 30ML INJ',NULL,NULL,NULL,NULL,NULL,62,6),(3427,NULL,'LOX 2%INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3428,NULL,'LOX 2%JELLY',NULL,NULL,NULL,NULL,NULL,62,6),(3429,NULL,'LOXICARD 2% 50ML INJ',NULL,NULL,NULL,NULL,NULL,62,6),(3430,NULL,'LUBIC JELLY',NULL,NULL,NULL,NULL,NULL,58,6),(3431,NULL,'LYMPEDIM TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3432,NULL,'LYSER D',NULL,NULL,NULL,NULL,NULL,57,6),(3433,NULL,'MACBERY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3434,NULL,'MACPROT POWDER',NULL,NULL,NULL,NULL,NULL,62,6),(3435,NULL,'MAGICPOD 100 DT',NULL,NULL,NULL,NULL,NULL,57,6),(3436,NULL,'MAGNEON INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3437,NULL,'MAGNESIUM SULPHATE PASTE 15GM',NULL,NULL,NULL,NULL,NULL,58,6),(3438,NULL,'MAGNESIUM SUPHATE PASTE 100GM',NULL,NULL,NULL,NULL,NULL,58,6),(3439,NULL,'MAGNESIUM SUPHATE PASTE 400GM',NULL,NULL,NULL,NULL,NULL,58,6),(3440,NULL,'MAGNICAR E',NULL,NULL,NULL,NULL,NULL,57,6),(3441,NULL,'MAXOZA L SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3442,NULL,'MAXTRA  DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3443,NULL,'MAXTRA  DROPS 15ML',NULL,NULL,NULL,NULL,NULL,62,6),(3444,NULL,'MAXTRA GARGLE',NULL,NULL,NULL,NULL,NULL,62,6),(3445,NULL,'MAXTRA SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3446,NULL,'MCARE CU 375',NULL,NULL,NULL,NULL,NULL,60,6),(3447,NULL,'MDC -HOPE',NULL,NULL,NULL,NULL,NULL,57,6),(3448,NULL,'MEBEX TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3449,NULL,'MECOBLEND TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3450,NULL,'MEDOMOL 300 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3451,NULL,'MEFAL FORTE',NULL,NULL,NULL,NULL,NULL,57,6),(3452,NULL,'MEFENTOD SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3453,NULL,'MEFTAGESIC DS SUSP',NULL,NULL,NULL,NULL,NULL,62,6),(3454,NULL,'MEFTAGESIC P SUSP',NULL,NULL,NULL,NULL,NULL,62,6),(3455,NULL,'MEFTAL 250 DT',NULL,NULL,NULL,NULL,NULL,57,6),(3456,NULL,'MEFTAL 500 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3457,NULL,'MEFTAL P DT',NULL,NULL,NULL,NULL,NULL,57,6),(3458,NULL,'MEFTAL SPAS TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3459,NULL,'MEGAHEAL OINT',NULL,NULL,NULL,NULL,NULL,70,6),(3460,NULL,'MENO ACTIVE TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3461,NULL,'MENONOK CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3462,NULL,'MEPERATETAB',NULL,NULL,NULL,NULL,NULL,57,6),(3463,NULL,'MERO 1 GM',NULL,NULL,NULL,NULL,NULL,63,6),(3464,NULL,'METHERGIN INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3465,NULL,'METHERGIN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3466,NULL,'METOCARD XL TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3467,NULL,'METROGYL M 5 GM OINT',NULL,NULL,NULL,NULL,NULL,70,6),(3468,NULL,'MEZOMLAM 5ML INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3469,NULL,'MICHELLE AQ INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3470,NULL,'MICROSHIELD',NULL,NULL,NULL,NULL,NULL,60,6),(3471,NULL,'MICROSHIELD HR 500',NULL,NULL,NULL,NULL,NULL,64,6),(3472,NULL,'MIFEGEST 200TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3473,NULL,'MIKACIN  100 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3474,NULL,'MIKACIN 250 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3475,NULL,'MONOBACT 1.5 INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3476,NULL,'MONOBACT 375 INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3477,NULL,'MONOBACT 750 INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3478,NULL,'MONOCRYL 3 0 1326 SUTURE',NULL,NULL,NULL,NULL,NULL,60,6),(3479,NULL,'MONTAIR 10 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3480,NULL,'MONTAIR 4 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3481,NULL,'MONTAIR 5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3482,NULL,'MONTEK LC KID TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3483,NULL,'MONTEK LC TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3484,NULL,'MONTELEO TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3485,NULL,'MONTEPRL 4 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3486,NULL,'MONTEPRL 5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3487,NULL,'MOPPING PAD',NULL,NULL,NULL,NULL,NULL,60,6),(3488,NULL,'MOX 500 CAPSULE',NULL,NULL,NULL,NULL,NULL,66,6),(3489,NULL,'MOX REDIMIX 250 MG SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3490,NULL,'MOXITOR LB 625 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3491,NULL,'MUCAINE GEL SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3492,NULL,'MUCINAC 600 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3493,NULL,'MUPIZEO OINMENT',NULL,NULL,NULL,NULL,NULL,70,6),(3494,NULL,'MYKETO CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3495,NULL,'MYKETO SOAP',NULL,NULL,NULL,NULL,NULL,68,6),(3496,NULL,'MYO PYROLATE INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3497,NULL,'MYOQUEEN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3498,NULL,'MYOSPAS TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3499,NULL,'MYZONE SL 1.5 G INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3500,NULL,'NACPHIN INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3501,NULL,'NAP PV IODINE 10%',NULL,NULL,NULL,NULL,NULL,62,6),(3502,NULL,'NASIVION PEAD NASAL DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3503,NULL,'NAXDOM 500 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3504,NULL,'NEBICARD-5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3505,NULL,'NEBULIZER MASK ADULT',NULL,NULL,NULL,NULL,NULL,60,6),(3506,NULL,'NEBULIZER MASK CHILD',NULL,NULL,NULL,NULL,NULL,60,6),(3507,NULL,'NEL CATH 14',NULL,NULL,NULL,NULL,NULL,60,6),(3508,NULL,'NEOMIZ 25 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3509,NULL,'NEOMOL 170 SUPPOSITORIES',NULL,NULL,NULL,NULL,NULL,76,6),(3510,NULL,'NEOMOL 250 SUPPOSITORIES',NULL,NULL,NULL,NULL,NULL,76,6),(3511,NULL,'NEOPEPTINE  DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3512,NULL,'NEOROF INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3513,NULL,'NEUROBION FORTE INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3514,NULL,'NEUROBION FORTE TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3515,NULL,'NEW MUMFER MAX TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3516,NULL,'NEXITO 5MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3517,NULL,'NICARDIA 5MG CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3518,NULL,'NICARDIA RETARD 10MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3519,NULL,'NICARDIA RETARD 20MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3520,NULL,'NIPCARE CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3521,NULL,'NIPPLE SHIELD',NULL,NULL,NULL,NULL,NULL,60,6),(3522,NULL,'NITROBACT 100MG CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3523,NULL,'NORFLOX 400MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3524,NULL,'NORMAXIN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3525,NULL,'NORMOZ TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3526,NULL,'NOSIC OD TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3527,NULL,'NOVELON TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3528,NULL,'NS 100ML',NULL,NULL,NULL,NULL,NULL,63,6),(3529,NULL,'NS 500ML',NULL,NULL,NULL,NULL,NULL,63,6),(3530,NULL,'NS NASAL DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3531,NULL,'NUTOLIN B PLUS',NULL,NULL,NULL,NULL,NULL,66,6),(3532,NULL,'NUTROLIN B POWDER D/SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3533,NULL,'OFLOKEM EYE/EAR DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3534,NULL,'OFLOMAC 200MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3535,NULL,'OFLOMAC OZ TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3536,NULL,'OFLOX 200MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3537,NULL,'OFLOX 50 REDIUSE',NULL,NULL,NULL,NULL,NULL,62,6),(3538,NULL,'OFLOX IV',NULL,NULL,NULL,NULL,NULL,63,6),(3539,NULL,'OFOFER FCM INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3540,NULL,'OKACET TAB',NULL,NULL,NULL,NULL,NULL,64,6),(3541,NULL,'OLMED',NULL,NULL,NULL,NULL,NULL,64,6),(3542,NULL,'OMEGAPURE LIQUICAPS',NULL,NULL,NULL,NULL,NULL,66,6),(3543,NULL,'OMEZ 20 CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3544,NULL,'OMEZ TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3545,NULL,'ONLAC Z GRANULES',NULL,NULL,NULL,NULL,NULL,62,6),(3546,NULL,'OROFER S 100MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3547,NULL,'OROFER S 200MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3548,NULL,'ORS DRINK ORANGE',NULL,NULL,NULL,NULL,NULL,62,6),(3549,NULL,'ORS SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3550,NULL,'ORUL GEL',NULL,NULL,NULL,NULL,NULL,75,6),(3551,NULL,'OSTOLIME CC',NULL,NULL,NULL,NULL,NULL,57,6),(3552,NULL,'OTOGESIC EAR DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3553,NULL,'OVAA SHIELD DS CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3554,NULL,'OXY SET',NULL,NULL,NULL,NULL,NULL,60,6),(3555,NULL,'OXYGEN MASK(ADULT)',NULL,NULL,NULL,NULL,NULL,60,6),(3556,NULL,'OXYGEN MASK(CHILD)',NULL,NULL,NULL,NULL,NULL,60,6),(3557,NULL,'PAEDIATRIC URINE COLLECTING BAG',NULL,NULL,NULL,NULL,NULL,60,6),(3558,NULL,'PAMPERS 2S LARGE',NULL,NULL,NULL,NULL,NULL,77,6),(3559,NULL,'PAMPERS 2S MEDIUM',NULL,NULL,NULL,NULL,NULL,77,6),(3560,NULL,'PAMPERS 2S SMALL',NULL,NULL,NULL,NULL,NULL,77,6),(3561,NULL,'PAMPERS(NEW BORN BABY YELLOW )',NULL,NULL,NULL,NULL,NULL,77,6),(3562,NULL,'PAN 40MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3563,NULL,'PANGLEAM TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3564,NULL,'PANWEL DSR CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3565,NULL,'PATIENT GOWN',NULL,NULL,NULL,NULL,NULL,60,6),(3566,NULL,'PEG FIBER GANULES',NULL,NULL,NULL,NULL,NULL,62,6),(3567,NULL,'PERINORM INJ',NULL,NULL,NULL,NULL,NULL,57,6),(3568,NULL,'PHENPRES INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3569,NULL,'PICOZER 170ML SUSP',NULL,NULL,NULL,NULL,NULL,62,6),(3570,NULL,'PILEX TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3571,NULL,'PILORUTE EP TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3572,NULL,'PIRITON EXPECTORANT',NULL,NULL,NULL,NULL,NULL,62,6),(3573,NULL,'PITOCIN INJ .5ML',NULL,NULL,NULL,NULL,NULL,63,6),(3574,NULL,'PLACENTREX INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3575,NULL,'PLACIFLOW SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3576,NULL,'POLYBION  A INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3577,NULL,'POLYBION INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3578,NULL,'PPH 60O MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3579,NULL,'PPS KIT',NULL,NULL,NULL,NULL,NULL,60,6),(3580,NULL,'PRAZOPRESS XL 2.5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3581,NULL,'PREGASTAR 75 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3582,NULL,'PREGNACARE TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3583,NULL,'PREGNACREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3584,NULL,'PROGENIX TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3585,NULL,'PROLUTON DEPOT 500MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3586,NULL,'PROSTODIN 250 MCG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3587,NULL,'PROXTIL 100DT',NULL,NULL,NULL,NULL,NULL,57,6),(3588,NULL,'PUBERAL F TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3589,NULL,'PULMOCLEAR TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3590,NULL,'PYROLYTE INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3591,NULL,'QUROZYME TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3592,NULL,'RABIVAX S',NULL,NULL,NULL,NULL,NULL,72,6),(3593,NULL,'RANBIOTIC (GENTAMICIN)INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3594,NULL,'RAPO DSR CAPSULE',NULL,NULL,NULL,NULL,NULL,66,6),(3595,NULL,'RAPO IV',NULL,NULL,NULL,NULL,NULL,63,6),(3596,NULL,'REDIAL TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3597,NULL,'REGESTRONE 5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3598,NULL,'RENERVE BT CAPSULES',NULL,NULL,NULL,NULL,NULL,66,6),(3599,NULL,'REVITAL 500 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3600,NULL,'RICHAR CR TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3601,NULL,'RIGIN PLUS SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3602,NULL,'RING PESSARY 2.50 SIZE',NULL,NULL,NULL,NULL,NULL,60,6),(3603,NULL,'RING PESSARY 3 SIZE',NULL,NULL,NULL,NULL,NULL,60,6),(3604,NULL,'RL',NULL,NULL,NULL,NULL,NULL,63,6),(3605,NULL,'ROGON HP 5000 INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3606,NULL,'ROMOVAC SET 14',NULL,NULL,NULL,NULL,NULL,60,6),(3607,NULL,'ROMOVAC SET 16',NULL,NULL,NULL,NULL,NULL,60,6),(3608,NULL,'ROSCILLIN 500 INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3609,NULL,'ROTASIIL VACCINE',NULL,NULL,NULL,NULL,NULL,72,6),(3610,NULL,'ROZAVEL 40 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3611,NULL,'RUTOZER H TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3612,NULL,'RUTOZER SPO OINMENT',NULL,NULL,NULL,NULL,NULL,70,6),(3613,NULL,'RYLES TUBE 16',NULL,NULL,NULL,NULL,NULL,60,6),(3614,NULL,'SCOFA 1000 CAPSULE',NULL,NULL,NULL,NULL,NULL,66,6),(3615,NULL,'SEMI PROTECTION(APRON)',NULL,NULL,NULL,NULL,NULL,60,6),(3616,NULL,'SEPTARAB CAPSULE',NULL,NULL,NULL,NULL,NULL,66,6),(3617,NULL,'SERFIX 200 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3618,NULL,'SEROFLO 250 INHALER',NULL,NULL,NULL,NULL,NULL,73,6),(3619,NULL,'SEVURA',NULL,NULL,NULL,NULL,NULL,62,6),(3620,NULL,'SHELARC TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3621,NULL,'SHELCAL 500TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3622,NULL,'SHELCAL SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3623,NULL,'SIBELLIUM 10',NULL,NULL,NULL,NULL,NULL,57,6),(3624,NULL,'SIBOLONE TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3625,NULL,'SILFOG NASAL DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3626,NULL,'SILICONE TUBEL RINGS',NULL,NULL,NULL,NULL,NULL,60,6),(3627,NULL,'SILVEREX IONIC CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3628,NULL,'SIPHENE 50MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3629,NULL,'SITAPAZ M TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3630,NULL,'SMUTH CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3631,NULL,'SODIUM CHLORIDE(NS 3%)INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3632,NULL,'SOMPRAZ 40 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3633,NULL,'SOMPRAZ IT CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3634,NULL,'SOREGEL',NULL,NULL,NULL,NULL,NULL,75,6),(3635,NULL,'SOVENTUS JR SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3636,NULL,'SPINAL NEEDLE 23',NULL,NULL,NULL,NULL,NULL,60,6),(3637,NULL,'SPINAL NEEDLE 26',NULL,NULL,NULL,NULL,NULL,60,6),(3638,NULL,'SPOOK FB 200 INHALER',NULL,NULL,NULL,NULL,NULL,73,6),(3639,NULL,'STERILE WATER 10ML',NULL,NULL,NULL,NULL,NULL,60,6),(3640,NULL,'STERIZONE ST 82',NULL,NULL,NULL,NULL,NULL,60,6),(3641,NULL,'STERIZONE ST 86',NULL,NULL,NULL,NULL,NULL,60,6),(3642,NULL,'STERZONE ST 91',NULL,NULL,NULL,NULL,NULL,60,6),(3643,NULL,'STON 1B6 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3644,NULL,'STUGERON TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3645,NULL,'SUCOL INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3646,NULL,'SUCRAFIL O GEL',NULL,NULL,NULL,NULL,NULL,75,6),(3647,NULL,'SUCRAFIL SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3648,NULL,'SUCRALOCK O SUSPENSION',NULL,NULL,NULL,NULL,NULL,62,6),(3649,NULL,'SUPACEF 1.5 GM',NULL,NULL,NULL,NULL,NULL,63,6),(3650,NULL,'SURBEX GOLD CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3651,NULL,'SURFAZ SN CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3652,NULL,'SURGEONS  PACK',NULL,NULL,NULL,NULL,NULL,60,6),(3653,NULL,'SURGICAL BLADE 11',NULL,NULL,NULL,NULL,NULL,60,6),(3654,NULL,'SURGICAL CAESAREAN KIT',NULL,NULL,NULL,NULL,NULL,60,6),(3655,NULL,'SURGICAL DELIVERY KITNORMAL',NULL,NULL,NULL,NULL,NULL,60,6),(3656,NULL,'SUSTEN 200MG CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3657,NULL,'SUTUPAK SW 215',NULL,NULL,NULL,NULL,NULL,60,6),(3658,NULL,'SV SET 23G',NULL,NULL,NULL,NULL,NULL,60,6),(3659,NULL,'SYRINGE 10LM',NULL,NULL,NULL,NULL,NULL,60,6),(3660,NULL,'SYRINGE 2.5 ML',NULL,NULL,NULL,NULL,NULL,60,6),(3661,NULL,'SYRINGE 20ML',NULL,NULL,NULL,NULL,NULL,60,6),(3662,NULL,'SYRINGE 5 ML',NULL,NULL,NULL,NULL,NULL,60,6),(3663,NULL,'T BACT OINT',NULL,NULL,NULL,NULL,NULL,70,6),(3664,NULL,'T D VAC',NULL,NULL,NULL,NULL,NULL,72,6),(3665,NULL,'T T INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3666,NULL,'TAMEGUT 40MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3667,NULL,'TAXIM 1 GM INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3668,NULL,'TAXIM 250 MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3669,NULL,'TAXIM O 100 DT',NULL,NULL,NULL,NULL,NULL,57,6),(3670,NULL,'TAXIM O 200MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3671,NULL,'TAZOMAC 4.5 GM',NULL,NULL,NULL,NULL,NULL,63,6),(3672,NULL,'TBN DROPS EYE/EAR DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3673,NULL,'TEAR DROS',NULL,NULL,NULL,NULL,NULL,62,6),(3674,NULL,'TEBINA CREAM 1% 30GM',NULL,NULL,NULL,NULL,NULL,58,6),(3675,NULL,'TEDIBAR SOAP',NULL,NULL,NULL,NULL,NULL,68,6),(3676,NULL,'TELMA 20MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3677,NULL,'TELMA 40 MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3678,NULL,'TELMIKIND 20MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3679,NULL,'TELMIKIND40MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3680,NULL,'TEMP 250 SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3681,NULL,'TEMP DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3682,NULL,'TERMIN INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3683,NULL,'TEXCLAV 625 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3684,NULL,'THERMOMETER DIGITAL',NULL,NULL,NULL,NULL,NULL,60,6),(3685,NULL,'THIAMIN INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3686,NULL,'THIAMIN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3687,NULL,'THROBINAC  SP TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3688,NULL,'THROBINAC TH TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3689,NULL,'THROBNAC P TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3690,NULL,'THROMBOPHOB 30GM',NULL,NULL,NULL,NULL,NULL,70,6),(3691,NULL,'THYRONORM 100MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3692,NULL,'THYRONORM 12.5MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3693,NULL,'THYRONORM 125',NULL,NULL,NULL,NULL,NULL,62,6),(3694,NULL,'THYRONORM 150 MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3695,NULL,'THYRONORM 25 MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3696,NULL,'THYRONORM 50MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3697,NULL,'THYRONORM 62.5 MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3698,NULL,'THYRONORM75 MCG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3699,NULL,'TIGLOFER XT CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3700,NULL,'TOBA DM EYE DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3701,NULL,'TOP BAN',NULL,NULL,NULL,NULL,NULL,60,6),(3702,NULL,'TOP O PLAST10 CM',NULL,NULL,NULL,NULL,NULL,60,6),(3703,NULL,'TOPCREPE 10 CM',NULL,NULL,NULL,NULL,NULL,60,6),(3704,NULL,'TOPCREPE 15 CM',NULL,NULL,NULL,NULL,NULL,60,6),(3705,NULL,'TOPCREPE 8 CM',NULL,NULL,NULL,NULL,NULL,60,6),(3706,NULL,'TRAMATAS INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3707,NULL,'TRAPIC 500 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3708,NULL,'TRAPIC INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3709,NULL,'TRAPIC TAB500',NULL,NULL,NULL,NULL,NULL,57,6),(3710,NULL,'TRESIVAC PFS VACCINE (M MR)',NULL,NULL,NULL,NULL,NULL,72,6),(3711,NULL,'TRIMOL TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3712,NULL,'TRPZER PLUS TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3713,NULL,'TRUBOND TAPE',NULL,NULL,NULL,NULL,NULL,60,6),(3714,NULL,'TRUGLYDE  FAST2-027771.40M',NULL,NULL,NULL,NULL,NULL,60,6),(3715,NULL,'TRUGLYDE  SN2347 A45 CM',NULL,NULL,NULL,NULL,NULL,60,6),(3716,NULL,'TRUSYNTH FAST 2-0 2762 100CM',NULL,NULL,NULL,NULL,NULL,60,6),(3717,NULL,'TUBER VAC INJ',NULL,NULL,NULL,NULL,NULL,72,6),(3718,NULL,'TYPLIN 10 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3719,NULL,'UBICAR TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3720,NULL,'UDILIV 150 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3721,NULL,'UDILIV 300TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3722,NULL,'ULTRACET TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3723,NULL,'UNDER PAD',NULL,NULL,NULL,NULL,NULL,60,6),(3724,NULL,'URIKUND TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3725,NULL,'UROBAG',NULL,NULL,NULL,NULL,NULL,60,6),(3726,NULL,'V H KIT',NULL,NULL,NULL,NULL,NULL,60,6),(3727,NULL,'VALCIVIR 1000 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3728,NULL,'VALIUM 5 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3729,NULL,'VASOCON INJECTION',NULL,NULL,NULL,NULL,NULL,63,6),(3730,NULL,'VB7 HAIR TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3731,NULL,'VCET LM TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3732,NULL,'VEGLISAP 50 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3733,NULL,'VEINWIN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3734,NULL,'VERTIN 16 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3735,NULL,'VERTIN8        TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3736,NULL,'VI CARE I CREAM',NULL,NULL,NULL,NULL,NULL,58,6),(3737,NULL,'VIBLIZ M TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3738,NULL,'VICKS 10GM',NULL,NULL,NULL,NULL,NULL,62,6),(3739,NULL,'VICKS 25GM',NULL,NULL,NULL,NULL,NULL,62,6),(3740,NULL,'VICKS 5GM',NULL,NULL,NULL,NULL,NULL,62,6),(3741,NULL,'VICKS BABYRUB',NULL,NULL,NULL,NULL,NULL,62,6),(3742,NULL,'VICRYL PLUS 2 0 2317 90CM',NULL,NULL,NULL,NULL,NULL,60,6),(3743,NULL,'VICRYL PLUS 90CM 2347',NULL,NULL,NULL,NULL,NULL,60,6),(3744,NULL,'VISTALAC CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3745,NULL,'VITAFLOW SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3746,NULL,'VITANOVA D3 SACHET',NULL,NULL,NULL,NULL,NULL,65,6),(3747,NULL,'VITARGIN TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3748,NULL,'VITASURGE SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3749,NULL,'VIZYLAC CAP',NULL,NULL,NULL,NULL,NULL,66,6),(3750,NULL,'VIZYLAC DRY SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3751,NULL,'VOGLET 0.2 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3752,NULL,'VOGLET 0.3 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3753,NULL,'VOLRAB 20MG INJ',NULL,NULL,NULL,NULL,NULL,63,6),(3754,NULL,'VOLRAB 20MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3755,NULL,'VOMIKIND MD 4 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3756,NULL,'VOVIDASE DP TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3757,NULL,'VOXIMOX CL  625 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3758,NULL,'WAL D3 PLUS DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3759,NULL,'WALYTE DRINK',NULL,NULL,NULL,NULL,NULL,62,6),(3760,NULL,'WAXONIL ACTIV EAR DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3761,NULL,'WHISPER CHOICE XL',NULL,NULL,NULL,NULL,NULL,83,6),(3762,NULL,'WHITFIELDS OINT',NULL,NULL,NULL,NULL,NULL,70,6),(3763,NULL,'WINKAST FX TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3764,NULL,'WOXICEF SL 1500',NULL,NULL,NULL,NULL,NULL,63,6),(3765,NULL,'WRIST BRACE',NULL,NULL,NULL,NULL,NULL,84,6),(3766,NULL,'WYSOLONE 10MGTAB',NULL,NULL,NULL,NULL,NULL,57,6),(3767,NULL,'WYSOLONE 5MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3768,NULL,'XONE 1GM',NULL,NULL,NULL,NULL,NULL,63,6),(3769,NULL,'XYZAL SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3770,NULL,'Z BERRY SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3771,NULL,'ZENTAL SUSP',NULL,NULL,NULL,NULL,NULL,62,6),(3772,NULL,'ZENTAL TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3773,NULL,'ZERODOL 100 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3774,NULL,'ZERODOL SAS TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3775,NULL,'ZERODOL SP TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3776,NULL,'ZERODOL TH4 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3777,NULL,'ZINCO MN SYP',NULL,NULL,NULL,NULL,NULL,62,6),(3778,NULL,'ZINCOVIT DROPS',NULL,NULL,NULL,NULL,NULL,62,6),(3779,NULL,'ZINCOVIT TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3780,NULL,'ZITHRAL 200 MG SUSPENSION',NULL,NULL,NULL,NULL,NULL,64,6),(3781,NULL,'ZITOTEC 200 TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3782,NULL,'ZOLFRESH 5 MG TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3783,NULL,'ZOVIRAX 800TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3784,NULL,'ZYLD 300 SR TAB',NULL,NULL,NULL,NULL,NULL,57,6),(3785,NULL,'ZYRTEC SYRUP',NULL,NULL,NULL,NULL,NULL,62,6),(3786,NULL,'ZYTEE GEL',NULL,NULL,NULL,NULL,NULL,75,6),(3787,'','Dolo ','','','','',NULL,54,3),(3788,'123','sreeja tonic','sr tonic','1','','123',169,48,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_menudetails`
--

LOCK TABLES `ayurvedaapp_menudetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_menudetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_menudetails` VALUES (6,'patientdetail.svg','Patient Details','patientdetails',1,10),(7,'patientdetail.svg','Appointments','appointment',1,10),(8,'treatmenthospital.svg','Treatments Details','treatmentmaster',1,11),(9,'treatmenthospital.svg','Treatments Record','treatmentplan',0,11),(10,'patientallocation.svg','Patient Room Booking','patientadmission',0,10),(11,'patienthistory.svg','Patient Case History','case-history',1,10),(12,'dailytreatent.svg','Discharge','discharge',0,10),(13,'dailytreatent.svg','Invoice','pharmacy_invoice',1,10),(14,'treatmenthospital.svg','Precheck','opvitals',0,11),(15,'dailytr.svg','Daily Treatments','dailytreatmentrecord',0,11),(16,'treatment.svg','Treatments Invoice','treatmentinvoice',1,11),(17,'itemdetails.svg','Category','category',1,12),(18,'itemdetails.svg',' Sub Category','subcategory',1,12),(19,'itemdetails.svg','Medicine Master','medicinemasterdt',1,12),(20,'itemdetails.svg','Medicine Company','Companymaster',1,12),(21,'itemdetails.svg','Stock Details','storestockentry',1,12),(22,'itemdetails.svg','Reorder Level Details','reorderlevel',1,12),(23,'staffdetails.svg','Staff Details','staffdetail',1,13),(24,'staffallocation.svg','Staff Allocation','staffallocation',1,13),(25,'prescription.svg','Case History','case-history',1,16),(26,'hospitaltable.svg','Hospital Registration','hospital',1,14),(27,'branch.svg','Branch','branch',1,14),(28,'country.svg','Country','countryform',1,15),(29,'state.svg','State','state',1,15),(30,'district.svg','District','district',1,15),(31,'city.svg','City','city',1,15),(32,'department.svg','Department','department',1,15),(33,'designation.svg','Designation','designation',1,15),(34,'roomallocation.svg ','Room','room',1,15),(35,'equipment.svg','Equipment','equipment',1,15),(36,'baseunit.svg','Base Unit','baseunitdt',1,15),(37,'unit.svg','Unit','saveunit',1,15),(38,'store.svg','Store','stockdt',1,15),(39,'supplier.svg','Supplier Details','supplierdetails',1,15),(40,'menu.svg','Menu Heading  Details','menuheading',1,17),(41,'menu.svg','Menu','menu',1,17),(42,'role.svg','Role','roledetails',1,17),(43,'rolealc.svg','Role Assign','roleassigndt',1,17),(44,'menu.svg','Menu Allocation','menu_list',1,17),(45,'enquiry.svg','Enquiry Details','enquirydetails',1,18),(46,'followup.svg','Follow Up','followupdt',1,18),(47,'sample.svg','mm','',0,12),(48,'ip.svg','Patient Admission','ipconvertion',0,10),(49,'purchase_order.svg','Purchase Order','purchaseorderdetails',1,12),(50,'itemdetails.svg','Grn','grndetails',1,12),(51,'itemdetails.svg','Tax Rate','savetax',1,12),(52,'itemdetails.svg','Treatment Allocation  Record','nextreatment',0,11),(53,'city.svg','Source Details','sourcedt',1,15),(58,'enquiry.svg','Trash Enquiries','trash_enquiries',1,18),(59,'itemdetails.svg','Diet','add_diet',1,15),(60,'purchase_order.svg','Daily Report Analysis','dailyinc',1,19),(61,'ippatient.svg','IP Admission','ippatient',1,20),(62,'ipdaily.svg','Medical Administration Record','ipdaily',1,20),(63,'dailytreatent.svg','Discharge','discharge',1,20),(64,'treatmenthospital.svg','consolidated IP bill','ipbill',1,20),(65,'roomallocation.svg','Room Shifting','changeroom',1,20),(66,'treatmenthospital.svg','Expanded Bill','ipbillexpand',1,20),(67,'roomallocation.svg','Room Booking','admission',1,20),(71,'patientdetail.svg','Treatment Room Creation','treatmentroom',1,21),(72,'roomallocation.svg','Treatment Room  Booking','treatment_room_booking',1,21),(73,'menu.svg','Dashboard Allocation','dashboard_list',1,22),(74,'menu.svg','Dashboard Design','dashboarddetails',1,22),(77,'ippatient.svg','OP Admission','oppatientdetails',1,21),(78,'ippatient.svg','OP Due Payment','opduepayemnt',1,21),(79,'menu.svg','Test Master Creation','testmaster',1,23),(80,'menu.svg','Test Child','testchild',1,23),(81,'menu.svg','Vitals','vitals',1,10),(82,'menu.svg','Food to be avoided','food_create',1,15),(83,'menu.svg','Lab Result','labresultadd',1,23),(84,'menu.svg','Casehistory View For Pharmacy','case_history_listforpharmacy',1,10),(85,'menu.svg','Previous Casehistory Assign','previouscasehistory_list',1,10),(86,'menu.svg','Category','inventorycategory',1,24),(87,'menu.svg','Company ','InventoryCompanymaster',1,24),(88,'menu.svg','Item Master','inventorymasterdt',1,24),(89,'menu.svg','Stock','inventorystockentry',1,24),(90,'menu.svg','Reorder','inventoryreorderlevel',1,24),(91,'menu.svg','Invoice','inventory_invoice',1,24),(92,'patientmain.svg','Today appoinment','todayappointmentdirect',1,10),(93,'menu.svg','Credit Note','create_creditnote',1,12),(94,'master.svg','Online Appointments','online-appointment',1,10),(95,'menu.svg','Patient Case History View','previouscasehistoryview_list/',1,10),(96,'patientmain.svg','Smilee Appointment','smilee-appointment',1,10),(97,'menu.svg','Invoice','pharmacy_invoice',1,12),(98,'menu.svg','Add Lab Test','lab_test_requisition',1,23),(99,'menu.svg','Lab Invoice','lab_invoice',1,23),(100,'menu.svg','Lab Test Unit','lab_unit_create',1,23),(101,'menu.svg','Lab test Normal Entry','normalevaluesave',1,23),(102,'menu.svg','Add Header and Footer','header_detail',1,23),(103,'menu.svg','Procedure Master','procedure_master_add',1,15),(104,'menu.svg','Casuality Invoice','casuality_invoice_view',1,10),(105,'menu.svg','Debit Note','debit-note',1,12),(106,'menu.svg','Purchase Invoice ','purchase-invoice',1,12),(107,'menu.svg','Advance IP Report','advance_register_ip',1,25),(108,'menu.svg','Admission Discharge Bill','admission_discharge_bill_register',1,25),(109,'menu.svg','Admission Report','admission_register',1,25),(110,'menu.svg','Cancelled Bills Report','cancelled_bills_report',1,25),(111,'menu.svg','Birth Register Report','birth_register_report',1,25),(112,'menu.svg','Discharge Report','discharge_register',1,25),(113,'menu.svg','Deaths Report','deaths_during_admission',1,25),(114,'menu.svg','Sales Return Report','sales-return-report',1,25),(115,'menu.svg','Sales Statement Report','sales-statement-report',1,25),(116,'menu.svg','Purchase Statement Report','purchase-statement-report',1,25),(117,'menu.svg','detailed-bill-register','detailed-bill-register',1,25),(118,'menu.svg','doctorwise-op-registration','doctorwise-op-registration',1,25),(119,'menu.svg','doctorwise-bill-analysis','doctorwise-bill-analysis',1,25),(121,'menu.svg','occupancy-list','occupancy-list',1,25),(122,'menu.svg','doctors-op-ip-collection','doctors-op-ip-collection',1,25),(123,'menu.svg','doctorwise-admission-register','doctorwise-admission-register',1,25),(125,'menu.svg','Birth / Death Registration','birth_and_death_registration',1,10),(126,'menu.svg','Asset Management','asset_add',1,26),(127,'menu.svg','Asset Report','asset_report',1,25),(128,'menu.svg','Asset Transferred List','asset_transfers',1,26),(129,'menu.svg','Inventory Issue Note','inventory-issue-note-create',1,24),(131,'menu.svg','Appointment Status','add-appointment-status',1,15),(133,'menu.svg','Visit Tracking','visit-cycle',1,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_menuheadingdetails`
--

LOCK TABLES `ayurvedaapp_menuheadingdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_menuheadingdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_menuheadingdetails` VALUES (10,'patientmain.svg','Patient',1),(11,'treatment.svg','Treatment',1),(12,'medicine.svg','Pharmacy',1),(13,'staff.svg','Staff',1),(14,'hospital.svg',' Settings',1),(15,'master.svg','Master',1),(16,'packagemain.svg',' Doctor',1),(17,'staff.svg','Menu Managment',1),(18,'enquiry.svg','CRM',1),(19,'master.svg','Report',1),(20,'ip.svg','IP Patient',1),(21,'sample.svg','OP Patient',1),(22,'menu.svg','Dashboard Settings',1),(23,'itemdetails.svg','Laboratory',1),(24,'menu.svg','Consumable Inventory',1),(25,'menu.svg','Reports',1),(26,'menu.svg','Asset',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_menumanagement`
--

LOCK TABLES `ayurvedaapp_menumanagement` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_menumanagement` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_menumanagement` VALUES (2716,'1','1','1','1',6,10),(2717,'1','1','1','1',7,10),(2718,'1','1','1','1',11,10),(2719,'1','1','1','1',13,10),(2720,'1','1','1','1',81,10),(2721,'1','1','1','1',84,10),(2722,'1','1','1','1',85,10),(2723,'1','1','1','1',92,10),(2724,'1','1','1','1',94,10),(2725,'1','1','1','1',95,10),(2726,'1','1','1','1',96,10),(2727,'1','1','1','1',8,10),(2728,'1','1','1','1',16,10),(2729,'1','1','1','1',17,10),(2730,'1','1','1','1',18,10),(2731,'1','1','1','1',19,10),(2732,'1','1','1','1',20,10),(2733,'1','1','1','1',21,10),(2734,'1','1','1','1',22,10),(2735,'1','1','1','1',49,10),(2736,'1','1','1','1',50,10),(2737,'1','1','1','1',51,10),(2738,'1','1','1','1',93,10),(2739,'1','1','1','1',23,10),(2740,'1','1','1','1',24,10),(2741,'1','1','1','1',26,10),(2742,'1','1','1','1',27,10),(2743,'1','1','1','1',28,10),(2744,'1','1','1','1',29,10),(2745,'1','1','1','1',30,10),(2746,'1','1','1','1',31,10),(2747,'1','1','1','1',32,10),(2748,'1','1','1','1',33,10),(2749,'1','1','1','1',34,10),(2750,'1','1','1','1',35,10),(2751,'1','1','1','1',36,10),(2752,'1','1','1','1',37,10),(2753,'1','1','1','1',38,10),(2754,'1','1','1','1',39,10),(2755,'1','1','1','1',53,10),(2756,'1','1','1','1',59,10),(2758,'1','1','1','1',82,10),(2759,'1','1','1','1',25,10),(2760,'1','1','1','1',40,10),(2761,'1','1','1','1',41,10),(2762,'1','1','1','1',42,10),(2763,'1','1','1','1',43,10),(2764,'1','1','1','1',44,10),(2765,'1','1','1','1',45,10),(2766,'1','1','1','1',46,10),(2767,'1','1','1','1',58,10),(2768,'1','1','1','1',60,10),(2769,'1','1','1','1',61,10),(2770,'1','1','1','1',62,10),(2771,'1','1','1','1',63,10),(2772,'1','1','1','1',64,10),(2773,'1','1','1','1',65,10),(2774,'1','1','1','1',66,10),(2775,'1','1','1','1',67,10),(2778,'1','1','1','1',71,10),(2779,'1','1','1','1',72,10),(2780,'1','1','1','1',77,10),(2781,'1','1','1','1',78,10),(2782,'1','1','1','1',73,10),(2783,'1','1','1','1',74,10),(2784,'1','1','1','1',79,10),(2785,'1','1','1','1',80,10),(2786,'1','1','1','1',83,10),(2787,'1','1','1','1',86,10),(2788,'1','1','1','1',87,10),(2789,'1','1','1','1',88,10),(2790,'1','1','1','1',89,10),(2791,'1','1','1','1',90,10),(2792,'1','1','1','1',91,10),(3273,'1','1','1','1',6,21),(3274,'1','1','1','1',7,21),(3275,'1','1','1','1',11,21),(3276,'1','1','1','1',13,21),(3277,'1','1','1','1',81,21),(3278,'1','1','1','1',84,21),(3279,'1','1','1','1',85,21),(3280,'1','1','1','1',92,21),(3281,'1','1','1','1',94,21),(3282,'1','1','1','1',8,21),(3283,'1','1','1','1',16,21),(3284,'1','1','1','1',17,21),(3285,'1','1','1','1',18,21),(3286,'1','1','1','1',19,21),(3287,'1','1','1','1',20,21),(3288,'1','1','1','1',21,21),(3289,'1','1','1','1',22,21),(3290,'1','1','1','1',49,21),(3291,'1','1','1','1',50,21),(3292,'1','1','1','1',51,21),(3293,'1','1','1','1',93,21),(3294,'1','1','1','1',28,21),(3295,'1','1','1','1',29,21),(3296,'1','1','1','1',30,21),(3297,'1','1','1','1',31,21),(3298,'1','1','1','1',34,21),(3299,'1','1','1','1',35,21),(3300,'1','1','1','1',36,21),(3301,'1','1','1','1',37,21),(3302,'1','1','1','1',38,21),(3303,'1','1','1','1',39,21),(3304,'1','1','1','1',53,21),(3306,'1','1','1','1',82,21),(3307,'1','1','1','1',40,21),(3308,'1','1','1','1',41,21),(3309,'1','1','1','1',42,21),(3310,'1','1','1','1',43,21),(3311,'1','1','1','1',44,21),(3312,'1','1','1','1',60,21),(3313,'1','1','1','1',71,21),(3314,'1','1','1','1',72,21),(3315,'1','1','1','1',77,21),(3316,'1','1','1','1',78,21),(3317,'1','1','1','1',86,21),(3318,'1','1','1','1',87,21),(3319,'1','1','1','1',88,21),(3320,'1','1','1','1',89,21),(3321,'1','1','1','1',90,21),(3322,'1','1','1','1',91,21),(3427,'1','1','1','1',17,26),(3428,'1','1','1','1',18,26),(3429,'1','1','1','1',19,26),(3430,'1','1','1','1',20,26),(3431,'1','1','1','1',21,26),(3432,'1','1','1','1',22,26),(3433,'1','1','1','1',49,26),(3434,'1','1','1','1',50,26),(3435,'1','1','1','1',51,26),(3436,'1','1','1','1',93,26),(3437,'1','1','1','1',97,26),(3438,'1','1','1','1',23,26),(3439,'1','1','1','1',24,26),(3440,'1','1','1','1',28,26),(3441,'1','1','1','1',29,26),(3442,'1','1','1','1',30,26),(3443,'1','1','1','1',31,26),(3444,'1','1','1','1',32,26),(3445,'1','1','1','1',33,26),(3446,'1','1','1','1',35,26),(3447,'1','1','1','1',36,26),(3448,'1','1','1','1',37,26),(3449,'1','1','1','1',38,26),(3450,'1','1','1','1',39,26),(3451,'1','1','1','1',59,26),(3452,'1','1','1','1',82,26),(3453,'1','1','1','1',40,26),(3454,'1','1','1','1',41,26),(3455,'1','1','1','1',42,26),(3456,'1','1','1','1',43,26),(3457,'1','1','1','1',44,26),(3458,'1','1','1','1',73,26),(3459,'1','1','1','1',74,26),(3701,'1','1','1','1',8,27),(3702,'1','1','1','1',16,27),(3703,'1','1','1','1',17,27),(3704,'1','1','1','1',18,27),(3705,'1','1','1','1',19,27),(3706,'1','1','1','1',20,27),(3707,'1','1','1','1',21,27),(3708,'1','1','1','1',22,27),(3709,'1','1','1','1',49,27),(3710,'1','1','1','1',50,27),(3711,'1','1','1','1',51,27),(3712,'1','1','1','1',93,27),(3713,'1','1','1','1',97,27),(3714,'1','1','1','1',28,27),(3715,'1','1','1','1',29,27),(3716,'1','1','1','1',30,27),(3717,'1','1','1','1',31,27),(3718,'1','1','1','1',32,27),(3719,'1','1','1','1',33,27),(3720,'1','1','1','1',34,27),(3721,'1','1','1','1',36,27),(3722,'1','1','1','1',37,27),(3723,'1','1','1','1',38,27),(3724,'1','1','1','1',39,27),(3725,'1','1','1','1',53,27),(3726,'1','1','1','1',59,27),(3728,'1','1','1','1',82,27),(3878,'1','1','1','1',6,15),(3879,'1','1','1','1',7,15),(3880,'1','1','1','1',13,15),(3881,'1','1','1','1',81,15),(3882,'1','1','1','1',85,15),(3883,'1','1','1','1',28,15),(3884,'1','1','1','1',29,15),(3885,'1','1','1','1',30,15),(3886,'1','1','1','1',31,15),(3887,'1','1','1','1',32,15),(3888,'1','1','1','1',33,15),(3889,'1','1','1','1',34,15),(3890,'1','1','1','1',35,15),(3891,'1','1','1','1',36,15),(3892,'1','1','1','1',37,15),(3893,'1','1','1','1',38,15),(3894,'1','1','1','1',39,15),(3895,'1','1','1','1',53,15),(3897,'1','1','1','1',82,15),(3898,'1','1','1','1',45,15),(3899,'1','1','1','1',46,15),(3900,'1','1','1','1',58,15),(3901,'1','1','1','1',79,15),(3902,'1','1','1','1',80,15),(3903,'1','1','1','1',83,15),(3904,'1','1','1','1',98,15),(3905,'1','1','1','1',99,15),(3906,'1','1','1','1',100,15),(3907,'1','1','1','1',101,15),(4051,'1','1','1','1',6,25),(4052,'1','1','1','1',7,25),(4053,'1','1','1','1',11,25),(4054,'1','1','1','1',13,25),(4055,'1','1','1','1',81,25),(4056,'1','1','1','1',84,25),(4057,'1','1','1','1',85,25),(4058,'1','1','1','1',92,25),(4059,'1','1','1','1',94,25),(4060,'1','1','1','1',95,25),(4061,'1','1','1','1',96,25),(4062,'1','1','1','1',8,25),(4063,'1','1','1','1',16,25),(4064,'1','1','1','1',17,25),(4065,'1','1','1','1',18,25),(4066,'1','1','1','1',19,25),(4067,'1','1','1','1',20,25),(4068,'1','1','1','1',21,25),(4069,'1','1','1','1',22,25),(4070,'1','1','1','1',49,25),(4071,'1','1','1','1',50,25),(4072,'1','1','1','1',51,25),(4073,'1','1','1','1',93,25),(4074,'1','1','1','1',105,25),(4075,'1','1','1','1',23,25),(4076,'1','1','1','1',24,25),(4077,'1','1','1','1',26,25),(4078,'1','1','1','1',27,25),(4079,'1','1','1','1',28,25),(4080,'1','1','1','1',29,25),(4081,'1','1','1','1',30,25),(4082,'1','1','1','1',31,25),(4083,'1','1','1','1',32,25),(4084,'1','1','1','1',33,25),(4085,'1','1','1','1',34,25),(4086,'1','1','1','1',35,25),(4087,'1','1','1','1',36,25),(4088,'1','1','1','1',37,25),(4089,'1','1','1','1',38,25),(4090,'1','1','1','1',39,25),(4091,'1','1','1','1',53,25),(4092,'1','1','1','1',59,25),(4094,'1','1','1','1',82,25),(4095,'1','1','1','1',25,25),(4096,'1','1','1','1',40,25),(4097,'1','1','1','1',41,25),(4098,'1','1','1','1',42,25),(4099,'1','1','1','1',43,25),(4100,'1','1','1','1',44,25),(4101,'1','1','1','1',45,25),(4102,'1','1','1','1',46,25),(4103,'1','1','1','1',58,25),(4104,'1','1','1','1',60,25),(4105,'1','1','1','1',61,25),(4106,'1','1','1','1',62,25),(4107,'1','1','1','1',63,25),(4108,'1','1','1','1',64,25),(4109,'1','1','1','1',65,25),(4110,'1','1','1','1',66,25),(4111,'1','1','1','1',67,25),(4114,'1','1','1','1',71,25),(4115,'1','1','1','1',72,25),(4116,'1','1','1','1',77,25),(4117,'1','1','1','1',78,25),(4118,'1','1','1','1',73,25),(4119,'1','1','1','1',74,25),(4120,'1','1','1','1',79,25),(4121,'1','1','1','1',80,25),(4122,'1','1','1','1',83,25),(4123,'1','1','1','1',98,25),(4124,'1','1','1','1',99,25),(4125,'1','1','1','1',100,25),(4126,'1','1','1','1',101,25),(4127,'1','1','1','1',102,25),(4128,'1','1','1','1',79,28),(4129,'1','1','1','1',80,28),(4130,'1','1','1','1',83,28),(4131,'1','1','1','1',98,28),(4132,'1','1','1','1',100,28),(4133,'1','1','1','1',101,28),(4134,'1','1','1','1',102,28),(4135,'1','1','1','1',81,29),(4136,'1','1','1','1',61,29),(4137,'1','1','1','1',62,29),(6119,'1','1','1','1',6,1),(6120,'1','1','1','1',7,1),(6121,'1','1','1','1',11,1),(6122,'1','1','1','1',13,1),(6123,'1','1','1','1',81,1),(6124,'1','1','1','1',84,1),(6125,'1','1','1','1',85,1),(6126,'1','1','1','1',92,1),(6127,'1','1','1','1',94,1),(6128,'1','1','1','1',95,1),(6129,'1','1','1','1',96,1),(6130,'1','1','1','1',104,1),(6131,'1','1','1','1',125,1),(6132,'1','1','1','1',133,1),(6133,'1','1','1','1',8,1),(6134,'1','1','1','1',16,1),(6135,'1','1','1','1',17,1),(6136,'1','1','1','1',18,1),(6137,'1','1','1','1',19,1),(6138,'1','1','1','1',20,1),(6139,'1','1','1','1',21,1),(6140,'1','1','1','1',22,1),(6141,'1','1','1','1',49,1),(6142,'1','1','1','1',50,1),(6143,'1','1','1','1',51,1),(6144,'1','1','1','1',93,1),(6145,'1','1','1','1',97,1),(6146,'1','1','1','1',105,1),(6147,'1','1','1','1',106,1),(6148,'1','1','1','1',23,1),(6149,'1','1','1','1',24,1),(6150,'1','1','1','1',26,1),(6151,'1','1','1','1',27,1),(6152,'1','1','1','1',28,1),(6153,'1','1','1','1',29,1),(6154,'1','1','1','1',30,1),(6155,'1','1','1','1',31,1),(6156,'1','1','1','1',32,1),(6157,'1','1','1','1',33,1),(6158,'1','1','1','1',34,1),(6159,'1','1','1','1',35,1),(6160,'1','1','1','1',36,1),(6161,'1','1','1','1',37,1),(6162,'1','1','1','1',38,1),(6163,'1','1','1','1',39,1),(6164,'1','1','1','1',53,1),(6165,'1','1','1','1',59,1),(6166,'1','1','1','1',82,1),(6167,'1','1','1','1',103,1),(6168,'1','1','1','1',131,1),(6169,'1','1','1','1',25,1),(6170,'1','1','1','1',40,1),(6171,'1','1','1','1',41,1),(6172,'1','1','1','1',42,1),(6173,'1','1','1','1',43,1),(6174,'1','1','1','1',44,1),(6175,'1','1','1','1',45,1),(6176,'1','1','1','1',46,1),(6177,'1','1','1','1',58,1),(6178,'1','1','1','1',61,1),(6179,'1','1','1','1',62,1),(6180,'1','1','1','1',63,1),(6181,'1','1','1','1',64,1),(6182,'1','1','1','1',65,1),(6183,'1','1','1','1',66,1),(6184,'1','1','1','1',67,1),(6185,'1','1','1','1',73,1),(6186,'1','1','1','1',74,1),(6187,'1','1','1','1',79,1),(6188,'1','1','1','1',80,1),(6189,'1','1','1','1',83,1),(6190,'1','1','1','1',98,1),(6191,'1','1','1','1',99,1),(6192,'1','1','1','1',100,1),(6193,'1','1','1','1',101,1),(6194,'1','1','1','1',102,1),(6195,'1','1','1','1',86,1),(6196,'1','1','1','1',87,1),(6197,'1','1','1','1',88,1),(6198,'1','1','1','1',89,1),(6199,'1','1','1','1',90,1),(6200,'1','1','1','1',91,1),(6201,'1','1','1','1',129,1),(6202,'1','1','1','1',107,1),(6203,'1','1','1','1',108,1),(6204,'1','1','1','1',109,1),(6205,'1','1','1','1',110,1),(6206,'1','1','1','1',111,1),(6207,'1','1','1','1',112,1),(6208,'1','1','1','1',113,1),(6209,'1','1','1','1',114,1),(6210,'1','1','1','1',115,1),(6211,'1','1','1','1',116,1),(6212,'1','1','1','1',117,1),(6213,'1','1','1','1',118,1),(6214,'1','1','1','1',119,1),(6215,'1','1','1','1',121,1),(6216,'1','1','1','1',122,1),(6217,'1','1','1','1',123,1),(6218,'1','1','1','1',127,1),(6219,'1','1','1','1',126,1),(6220,'1','1','1','1',128,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_newinvoicechild`
--

LOCK TABLES `ayurvedaapp_newinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_newinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_newinvoicechild` VALUES (21,1,'test item',130,130,'2026-05-18 00:00:00.000000','INV26/270001','','testptdt','998989889','testpurpose','2026-06-06','tescomp','PKT','30049099',5,6.19,'PKT','2.50','2.50','3.10','3.10','123.81',NULL,34,21,0,NULL),(22,1,'test item',130,130,'2026-05-22 00:00:00.000000','INV26/270002','','testptdt','998989889','testpurpose','2026-06-06','tescomp','PKT','30049099',5,6.19,'PKT','2.50','2.50','3.10','3.10','123.81',NULL,34,22,0,NULL),(23,1,'ZYLD 300 SR TAB',57.188,57.188,'2026-06-03 00:00:00.000000','INV26/270003','','test','998989889','ZDP2501','2026-12-01','ZEYYAR','TAB','null',0,0,'TAB','0.00','0.00','0.00','0.00','57.19',NULL,44,23,0,NULL),(24,5,'AB  PHYLLINE',20,100,'2026-06-08 00:00:00.000000','INV26/270004','','testuser','9895310696','GTG2896A','2027-08-01','DEFAULT COMPANY','TAB','null',5,4.76,'TAB','2.50','2.50','2.38','2.38','95.24',196,37,24,0,NULL),(25,1,'EMESET INJ',12.72,12.72,'2026-06-11 00:00:00.000000','INV26/270005','','priya','1234567','GA00460','2028-08-01','CIPLA','INJECTION','null',5,0.61,'INJECTION','2.50','2.50','0.30','0.30','12.11',NULL,67,25,0,NULL),(26,1,'SYRINGE 10LM',12.19,12.19,'2026-06-11 00:00:00.000000','INV26/270005','','priya','1234567','608105JE2','1930-11-01','DISPO VAN','SURGICAL ITEM','null',5,0.58,'SURGICAL ITEM','2.50','2.50','0.29','0.29','11.61',NULL,78,25,0,NULL),(27,1,'RAPO IV',70.96,70.96,'2026-06-11 00:00:00.000000','INV26/270005','','priya','1234567','ABGC26003','2028-02-01','SERUMINSTITUE OF INDIA','INJECTION','null',5,3.38,'INJECTION','2.50','2.50','1.69','1.69','67.58',NULL,44,25,0,NULL),(28,1,'SYRINGE 2.5 ML',8.66,8.66,'2026-06-11 00:00:00.000000','INV26/270005','','priya','1234567','549252JJ1','1930-11-01','DISPO VAN','SURGICAL ITEM','null',5,0.41,'SURGICAL ITEM','2.50','2.50','0.21','0.21','8.25',NULL,78,25,0,NULL),(29,1,'SV SET 23G',51,51,'2026-06-11 00:00:00.000000','INV26/270005','','priya','1234567','5M28S','1930-10-01','DEFAULT COMPANY','SURGICAL ITEM','null',5,2.43,'SURGICAL ITEM','2.50','2.50','1.21','1.21','48.57',NULL,78,25,0,NULL),(30,15,'CILACAR 10 TAB',14.63,219.45000000000002,'2026-06-11 00:00:00.000000','INV26/270006','','latha staff','1234567','KC925038','2028-10-01','J B CHEMICALS &PHARMACEUTICALS LTD','TAB','null',5,10.45,'TAB','2.50','2.50','5.23','5.23','209.00',NULL,55,26,0,NULL),(31,15,'AZTOR 10 TABLET',79.63,1194.4499999999998,'2026-06-11 00:00:00.000000','INV26/270006','','latha staff','1234567','GTG3647A','2028-11-01','SUN PHARMA','TAB','null',5,56.88,'TAB','2.50','2.50','28.44','28.44','1137.57',NULL,41,26,0,NULL),(32,1,'GLINIX M1',5.6,5.6,'2026-06-11 00:00:00.000000','INV26/270006','','latha staff','1234567','YT2922','2027-10-01','SAPHNIX LIFE SCIENCE','TAB','null',5,0.27,'TAB','2.50','2.50','0.13','0.13','5.33',NULL,75,26,0,NULL),(33,1,'DOLO 650 TAB',2.141,2.141,'2026-06-12 00:00:00.000000','INV26/270007','','sreeja','12345678','DOBS4339','2029-11-01','MICRO LAB','TAB','null',5,0.1,'TAB','2.50','2.50','0.05','0.05','2.04',NULL,41,27,0,NULL),(34,10,'ANEC P',75,750,'2026-06-12 00:00:00.000000','INV26/270008','','sreeja','9847223855','BT25-240A','2027-09-01','VERSATIL HEALTHCARE','TAB','null',5,35.71,'TAB','2.50','2.50','17.86','17.86','714.29',NULL,40,28,0,NULL),(35,1,'RAPO IV',70.96,70.96,'2026-06-12 00:00:00.000000','INV26/270008','','sreeja','9847223855','ABGC26003','2028-02-01','SERUMINSTITUE OF INDIA','INJECTION','null',5,3.38,'INJECTION','2.50','2.50','1.69','1.69','67.58',NULL,44,28,0,NULL),(36,1,'ABDOMINAL HYSTROCTOMY KIT',0,0,'2026-06-12 00:00:00.000000','INV26/270008','','sreeja','9847223855','0',NULL,'DEFAULT COMPANY','SURGICAL ITEM','null',5,0,'SURGICAL ITEM','2.50','2.50','0.00','0.00','0.00',NULL,37,28,0,NULL),(37,1,'VICKS 10GM',45,45,'2026-06-12 00:00:00.000000','INV26/270009','','Hemalatha','9495658676','80835768','2028-12-01','GAMBLE HYGIENE AND HEALTH CARE','BOTTLE','null',5,2.14,'BOTTLE','2.50','2.50','1.07','1.07','42.86',NULL,87,29,0,NULL),(38,1,'CILACAR 10 TAB',14.63,14.63,'2026-06-12 00:00:00.000000','INV26/270010','','sreeja','9847223855','KC925038','2028-10-01','J B CHEMICALS &PHARMACEUTICALS LTD','TAB','null',5,0.7,'TAB','2.50','2.50','0.35','0.35','13.93',NULL,55,30,0,NULL),(39,1,'ASCORIL D PLUS SYP',158.43,158.43,'2026-06-12 00:00:00.000000','INV26/270010','','sreeja','9847223855','11251595','2027-08-01','GLENMARK PHARMACEUTICAL','BOTTLE','null',5,7.54,'BOTTLE','2.50','2.50','3.77','3.77','150.89',NULL,37,30,0,NULL),(40,10,'DOLO 650 TAB',2.141,21.41,'2026-06-13 00:00:00.000000','INV26/270011','','TEST','1235689','DOBS4339','2029-11-01','MICRO LAB','TAB','null',5,1.02,'TAB','2.50','2.50','0.51','0.51','20.39',NULL,41,31,0,NULL),(41,1,'FACILE RAIZER',36.56,36.56,'2026-06-13 00:00:00.000000','INV26/270011','','TEST','1235689','OD260306','1931-02-01','NAVANI MEDITEX PVT LTD','SURGICAL ITEM','null',5,1.74,'SURGICAL ITEM','2.50','2.50','0.87','0.87','34.82',NULL,53,31,0,NULL),(42,1,'ALCIFLOX EYE  AND EAR DROPS',0,0,'2026-06-13 00:00:00.000000','INV26/270012','','sreeja','9847223855','0',NULL,'DEFAULT COMPANY','BOTTLE','null',5,0,'BOTTLE','2.50','2.50','0.00','0.00','0.00',NULL,37,32,0,NULL),(43,1,'ABD BINDER medium(velcro)',0,0,'2026-06-13 00:00:00.000000','INV26/270012','','sreeja','9847223855','0',NULL,'NAVANS','PCS','null',5,0,'PCS','2.50','2.50','0.00','0.00','0.00',NULL,37,32,0,NULL),(44,1,'ATAREX ANTI ITCH LOTION',537.5,537.5,'2026-06-13 00:00:00.000000','INV26/270012','','sreeja','9847223855','BAIL24021','2026-11-01','DR.REDDY LABORATORIES .LTD','BOTTLE','null',5,25.6,'BOTTLE','2.50','2.50','12.80','12.80','511.90',NULL,37,32,0,NULL),(45,1,'DOIL LINIMENT',133.5,133.5,'2026-06-13 00:00:00.000000','INV26/270012','','sreeja','9847223855','AJP37AAA','2027-04-01','ANTHUS','BOTTLE','null',5,6.36,'BOTTLE','2.50','2.50','3.18','3.18','127.14',NULL,43,32,0,NULL),(46,1,'AZITHRAL 500 MG TABLET',125.89,125.89,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','2613000025','2027-12-01','ALEMBIC PHARMACEUTICAL.LTD','TAB','null',5,5.99,'TAB','2.50','2.50','3.00','3.00','119.90',NULL,37,33,0,NULL),(47,1,'AUGPEN DS 457 SUSPENSION',169.45,169.45,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','ZO5AJ25035','2027-02-01','ZUVENTUS HEALTHCARE.LTD','BOTTLE','null',5,8.07,'BOTTLE','2.50','2.50','4.03','4.03','161.38',NULL,44,33,0,NULL),(48,1,'ANAWIN HEAVY INJ',31.47,31.47,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','KP1713910','2027-12-01','NEON LABORATORIES PVT.LTD','INJECTION','null',5,1.5,'INJECTION','2.50','2.50','0.75','0.75','29.97',NULL,39,33,0,NULL),(49,1,'BABY KIT',340,340,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','N0526','2029-04-01','NAVANS','SURGICAL ITEM','null',5,16.19,'SURGICAL ITEM','2.50','2.50','8.10','8.10','323.81',NULL,47,33,1,NULL),(50,1,'CREMAFFIN  PLUS SYRUP',0,0,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','0',NULL,'ABBOTT','BOTTLE','null',5,0,'BOTTLE','2.50','2.50','0.00','0.00','0.00',NULL,44,33,0,NULL),(51,1,'FEMILOSH VAG WASH',190,190,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','LC01249','2027-12-01','AMAZZON','BOTTLE','null',5,9.05,'BOTTLE','2.50','2.50','4.52','4.52','180.95',NULL,35,33,0,NULL),(52,1,'SV SET 23G',51,51,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','5M28S','1930-10-01','DEFAULT COMPANY','SURGICAL ITEM','null',5,2.43,'SURGICAL ITEM','2.50','2.50','1.21','1.21','48.57',NULL,78,33,0,NULL),(53,1,'ABD BINDER large (velcro)',0,0,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','0',NULL,'NAVANS','PCS','null',5,0,'PCS','2.50','2.50','0.00','0.00','0.00',NULL,37,33,0,NULL),(54,1,'IV SET',202.5,202.5,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','G26A0203','1930-12-01','ROMSONS','SURGICAL ITEM','null',5,9.64,'SURGICAL ITEM','2.50','2.50','4.82','4.82','192.86',NULL,78,33,1,NULL),(55,1,'DIGEMIN SYRUP 200ML',0,0,'2026-12-16 00:00:00.000000','INV26/270013','','TEST','1234567','0',NULL,'INNOVATIVE PHARMACEUTICAL PVT LTD','BOTTLE','null',5,0,'BOTTLE','2.50','2.50','0.00','0.00','0.00',NULL,64,33,0,NULL),(56,2,'CALXITRATE-D',9.375,18.75,'2026-06-16 00:00:00.000000','INV26/270014','','test1','25244252','LTA-49454','2027-07-01','KINSLEY','TAB','null',5,0.89,'TAB','2.50','2.50','0.45','0.45','17.86',NULL,58,34,0,NULL),(57,5,'CTD 12.5 TAB',9.67,48.35,'2026-06-16 00:00:00.000000','INV26/270015','','test','9495658676','DWL104008A','2027-07-01','IPCA LABORATORIES','TAB','null',5,2.3,'TAB','2.50','2.50','1.15','1.15','46.05',NULL,59,35,0,NULL),(58,15,'AB  PHYLLINE',20,300,'2026-06-16 00:00:00.000000','INV26/270015','','test','9495658676','GTG2896A','2027-08-01','DEFAULT COMPANY','TAB','null',5,14.29,'TAB','2.50','2.50','7.14','7.14','285.71',NULL,37,35,0,NULL),(59,18,'AB  PHYLLINE',20,360,'2026-06-16 00:00:00.000000','INV26/270016','','menon','1234567890','GTG2896A','2027-08-01','DEFAULT COMPANY','TAB','null',5,17.14,'TAB','2.50','2.50','8.57','8.57','342.86',NULL,37,36,0,NULL),(60,1,'BABY EXTRACTOR',86,86,'2026-06-18 00:00:00.000000','INV26/270017','','testuser','9895310696','G251010650','2019-08-01','ROMSONS','SURGICAL ITEM','null',5,4.1,'SURGICAL ITEM','2.50','2.50','2.05','2.05','81.90',196,46,37,0,NULL),(61,1,'ANTI D300 INJ',4469.28,4469.28,'2026-06-18 00:00:00.000000','INV26/270017','','testuser','9895310696','B25925007','2027-06-01','BHARAT SERUM AND VACCINES.LTD','INJECTION','null',5,212.82,'INJECTION','2.50','2.50','106.41','106.41','4256.46',196,39,37,0,NULL),(62,1,'ANEKET INJ',64.65,64.65,'2026-06-18 00:00:00.000000','INV26/270018','','test','9048272638','382087','2027-06-01','DEFAULT COMPANY','INJECTION','null',5,3.08,'INJECTION','2.50','2.50','1.54','1.54','61.57',1,37,38,0,NULL),(63,1,'ANTI D 150 INJ',3016.26,3016.26,'2026-06-18 00:00:00.000000','INV26/270018','','test','9048272638','B26825007','2027-09-01','BHARAT SERUM AND VACCINES.LTD','INJECTION','null',5,143.63,'INJECTION','2.50','2.50','71.82','71.82','2872.63',1,39,38,0,NULL),(64,1,'ENCORATE CHRONO 300',6.504,6.504,'2026-06-18 00:00:00.000000','INV26/270019','','testpt','9999999999','GTG33886A','2027-10-01','SUN PHARMA','TABLET','null',5,0.31,'TABLET','2.50','2.50','0.15','0.15','6.19',198,37,39,1,NULL),(65,1,'CIPZEN FORTE 10 TAB',10.078,10.078,'2026-06-18 00:00:00.000000','INV26/270020','','testpt','9999999999','5B50473','2027-04-01','CIPLA','TAB','null',5,0.48,'TAB','2.50','2.50','0.24','0.24','9.60',198,48,40,0,NULL),(66,1,'CLINGEN FORTE',215,215,'2026-06-18 00:00:00.000000','INV26/270021','','testuser','9895310696','37226003','2027-06-01','ARISTO PHARMACEUTICALS PVT','CAPSULE','null',5,10.24,'CAPSULE','2.50','2.50','5.12','5.12','204.76',196,43,41,0,NULL),(67,1,'CLINGEN FORTE',215,215,'2026-06-18 00:00:00.000000','INV26/270022','','testpatient123','1234567890','37226003','2027-06-01','ARISTO PHARMACEUTICALS PVT','CAPSULE','null',5,10.24,'CAPSULE','2.50','2.50','5.12','5.12','204.76',210,43,42,0,NULL),(68,1,'APCCOD SACHET',43.6,43.6,'2026-06-18 00:00:00.000000','INV26/270023','','test','9048272638','F25009030A','2027-11-01','SHIELD HEALTHCARE','SACHET','null',5,2.08,'SACHET','2.50','2.50','1.04','1.04','41.52',1,41,43,0,NULL),(69,1,'DAROLAC SACHET 2GM',16.5,16.5,'2026-06-20 00:00:00.000000','INV26/270024','','testuser','9895310696','MPA250415','2026-06-01','ARISTO PHARMACEUTICALS PVT','SACHET','null',5,0.79,'SACHET','2.50','2.50','0.39','0.39','15.71',196,43,44,0,NULL),(70,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-24 00:00:00.000000','INV26/270025','','testuser','9895310696','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',196,42,45,0,NULL),(71,9,'APPLEVIT EVA SOFT',6,54,'2026-06-24 00:00:00.000000','INV26/270026','','test','9048272638','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,2.57,'TAB','2.50','2.50','1.29','1.29','51.43',1,34,46,0,NULL),(72,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-24 00:00:00.000000','INV26/270026','','test','9048272638','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',1,42,46,0,NULL),(73,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-24 00:00:00.000000','INV26/270027','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',198,42,47,0,NULL),(74,9,'APPLEVIT EVA SOFT',6,54,'2026-06-24 00:00:00.000000','INV26/270027','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,2.57,'TAB','2.50','2.50','1.29','1.29','51.43',198,34,47,0,NULL),(75,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-24 00:00:00.000000','INV26/270028','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',198,42,48,0,NULL),(76,9,'APPLEVIT EVA SOFT',6,54,'2026-06-24 00:00:00.000000','INV26/270028','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,2.57,'TAB','2.50','2.50','1.29','1.29','51.43',198,34,48,0,NULL),(77,9,'APPLEVIT EVA SOFT',6,54,'2026-06-24 00:00:00.000000','INV26/270029','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,2.57,'TAB','2.50','2.50','1.29','1.29','51.43',198,34,49,0,NULL),(78,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-24 00:00:00.000000','INV26/270029','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',198,42,49,0,NULL),(79,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-24 00:00:00.000000','INV26/270030','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',198,42,50,0,NULL),(80,9,'APPLEVIT EVA SOFT',6,54,'2026-06-24 00:00:00.000000','INV26/270030','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,2.57,'TAB','2.50','2.50','1.29','1.29','51.43',198,34,50,0,NULL),(81,9,'APPLEVIT EVA SOFT',6,54,'2026-06-24 00:00:00.000000','INV26/270031','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,2.57,'TAB','2.50','2.50','1.29','1.29','51.43',198,34,51,0,NULL),(82,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-24 00:00:00.000000','INV26/270031','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',198,42,51,0,NULL),(83,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-25 00:00:00.000000','INV26/270032','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',198,42,52,0,NULL),(84,9,'APPLEVIT EVA SOFT',6,54,'2026-06-25 00:00:00.000000','INV26/270032','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,2.57,'TAB','2.50','2.50','1.29','1.29','51.43',198,34,52,0,NULL),(85,216,'APPLEVIT EVA SOFT',6,1296,'2026-06-25 00:00:00.000000','INV26/270033','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,61.71,'TAB','2.50','2.50','30.86','30.86','1234.29',198,34,53,0,NULL),(86,20,'APPLEVIT EVA SOFT',6,120,'2026-06-25 00:00:00.000000','INV26/270034','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,5.71,'TAB','2.50','2.50','2.86','2.86','114.29',198,34,54,0,NULL),(87,5,'APPLEVIT EVA SOSFT GEL',183,915,'2026-06-25 00:00:00.000000','INV26/270034','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,43.57,'CAPSULE','2.50','2.50','21.79','21.79','871.43',198,42,54,0,NULL),(88,5,'APPLEVIT EVA SOSFT GEL',183,915,'2026-06-25 00:00:00.000000','INV26/270035','','test','9048272638','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,43.57,'CAPSULE','2.50','2.50','21.79','21.79','871.43',1,42,55,0,NULL),(89,20,'APPLEVIT EVA SOFT',6,120,'2026-06-25 00:00:00.000000','INV26/270035','','test','9048272638','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,5.71,'TAB','2.50','2.50','2.86','2.86','114.29',1,34,55,0,NULL),(90,20,'APPLEVIT EVA SOFT',6,120,'2026-06-25 00:00:00.000000','INV26/270036','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','',5,5.71,'TAB','2.50','2.50','2.86','2.86','114.29',198,34,56,0,NULL),(91,2,'APPLEVIT EVA SOSFT GEL',183,366,'2026-06-25 00:00:00.000000','INV26/270036','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','',5,17.43,'CAPSULE','2.50','2.50','8.71','8.71','348.57',198,42,56,0,NULL),(92,10,'APPLEVIT EVA SOSFT GEL',183,1830,'2026-06-25 00:00:00.000000','INV26/270037','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','null',5,87.14,'CAPSULE','2.50','2.50','43.57','43.57','1742.86',198,42,57,0,NULL),(93,5,'APPLEVIT EVA SOFT',60,300,'2026-06-25 00:00:00.000000','INV26/270037','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','null',5,14.29,'TAB','2.50','2.50','7.14','7.14','285.71',198,34,57,0,NULL),(94,2,'APPLEVIT EVA SOFT',60,120,'2026-06-25 00:00:00.000000','INV26/270039','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','null',5,5.71,'TAB','2.50','2.50','2.86','2.86','114.29',198,34,59,0,NULL),(95,5,'APPLEVIT EVA SOSFT GEL',183,915,'2026-06-25 00:00:00.000000','INV26/270040','','testpatient123','1234567890','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','null',5,43.57,'CAPSULE','2.50','2.50','21.79','21.79','871.43',210,42,60,0,NULL),(96,3,'APPLEVIT EVA SOFT',60,180,'2026-06-25 00:00:00.000000','INV26/270040','','testpatient123','1234567890','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','null',5,8.57,'TAB','2.50','2.50','4.29','4.29','171.43',210,34,60,0,NULL),(97,2,'VELTAM 0.4',14.062,28.124,'2026-06-25 00:00:00.000000','INV26/270040','','testpatient123','1234567890','N2503985','2028-11-01','INTAS','TAB','null',5,1.34,'TAB','2.50','2.50','0.67','0.67','26.78',210,41,60,0,NULL),(98,1,'VOLDASE DP-10',90,90,'2026-06-25 00:00:00.000000','INV26/270043','','testuser','9895310696','BAT-8921','2026-12-01','ABEL PHRMA','1*10 STRP','null',5,4.29,'TAB','2.50','2.50','2.14','2.14','85.71',196,34,63,0,NULL),(99,5,'VOLDASE DP-10',90,450,'2026-06-25 00:00:00.000000','INV26/270044','','testpt','9999999999','BAT-8921','2026-12-01','ABEL PHRMA','1*10 STRP','null',5,21.43,'TAB','2.50','2.50','10.71','10.71','428.57',198,34,64,0,NULL),(100,10,'GERBISA CHILD(SUPPOSITORY)',100,1000,'2026-06-25 00:00:00.000000','INV26/270045','','testuser','9895310696','BAT-7889','2026-12-01','ABEL PHRMA','1 * 25 STRP','null',5,47.62,'TAB','2.50','2.50','23.81','23.81','952.38',196,67,65,0,NULL),(101,1,'ASCORIL D PLUS SYP',158.43,158.43,'2026-06-25 00:00:00.000000','INV26/270045','','testuser','9895310696','11251595','2027-08-01','GLENMARK PHARMACEUTICAL','BOTTLE','null',5,7.54,'BOTTLE','2.50','2.50','3.77','3.77','150.89',196,37,65,0,NULL),(102,1,'APPLEVIT EVA SOFT',6,6,'2026-06-26 00:00:00.000000','INV26/270046','','testpt','9999999999','BAT-2682','2026-12-01','ABBOTT','1*10 STRP','null',5,0.29,'TAB','2.50','2.50','0.14','0.14','5.71',198,34,66,0,'2026-06-01'),(103,1,'APPLEVIT EVA SOSFT GEL',183,183,'2026-06-26 00:00:00.000000','INV26/270046','','testpt','9999999999','1041225D','2027-11-01','APPLE LIFE SCIENCE PVT.LTD','CAPSULE','null',5,8.71,'CAPSULE','2.50','2.50','4.36','4.36','174.29',198,42,66,0,'2025-10-02');
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
  `discount_percent` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_newinvoi_Mrno_id_ff93c4dd_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_newinvoi_branch_id_18e272a1_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_newinvoi_hospitalname_id_f37ff3ee_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_newinvoi_preparedby_id_7b901b47_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_newinvoi_branch_id_18e272a1_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_hospitalname_id_f37ff3ee_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_Mrno_id_ff93c4dd_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_preparedby_id_7b901b47_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_newinvoicemaster`
--

LOCK TABLES `ayurvedaapp_newinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_newinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_newinvoicemaster` VALUES (21,'Cash','INV26/270001','2026-05-18',130,6.19,0,130,'testptdt','998989889','0.0',NULL,NULL,1,'3.1','3.1','123.81','130.0','0.0','0.0',NULL,5,2,180,0.00),(22,'Cash','INV26/270002','2026-05-22',130,6.19,0,130,'testptdt','998989889','0.0',NULL,NULL,1,'3.1','3.1','123.81','130.0','0.0','0.0',NULL,5,2,1,0.00),(23,'Cash','INV26/270003','2026-06-03',57.188,0,0,57.188,'test','998989889','0.0',NULL,NULL,1,'0.0','0.0','57.19','57.19','0.0','0.0',NULL,5,2,1,0.00),(24,'Cash','INV26/270004','2026-06-08',100,4.76,0,100,'testuser','9895310696','0.0',NULL,NULL,0,'2.38','2.38','95.24','100.0','0.0','0.0',196,5,2,1,0.00),(25,'Cash','INV26/270005','2026-06-11',155.52999999999997,7.41,0,155.52999999999997,'priya','1234567','0.0',NULL,NULL,0,'3.7','3.7','148.12','155.53','0.0','0.0',NULL,5,2,1,0.00),(26,'Cash','INV26/270006','2026-06-11',1419.4999999999998,67.6,0,1419.4999999999998,'latha staff','1234567','0.0',NULL,NULL,0,'33.8','33.8','1351.8999999999999','1419.5','0.0','0.0',NULL,5,2,1,0.00),(27,'Cash','INV26/270007','2026-06-12',2.141,0.1,0,2.141,'sreeja','12345678','0.0',NULL,NULL,1,'0.05','0.05','2.04','2.14','0.0','0.0',NULL,5,2,1,0.00),(28,'Cash','INV26/270008','2026-06-12',820.96,39.09,0,820.96,'sreeja','9847223855','0.0',NULL,NULL,1,'19.55','19.55','781.87','820.96','0.0','0.0',NULL,5,2,1,0.00),(29,'Cash','INV26/270009','2026-06-12',45,2.14,0,45,'Hemalatha','9495658676','0.0',NULL,NULL,1,'1.07','1.07','42.86','45.0','0.0','0.0',NULL,5,2,180,0.00),(30,'Cash','INV26/270010','2026-06-12',173.06,8.24,0,173.06,'sreeja','9847223855','0.0',NULL,NULL,1,'4.12','4.12','164.82','173.06','0.0','0.0',NULL,5,2,1,0.00),(31,'Cash','INV26/270011','2026-06-13',57.97,2.76,0,57.97,'TEST','1235689','0.0',NULL,NULL,1,'1.38','1.38','55.21','57.97','0.0','0.0',NULL,5,2,1,0.00),(32,'Cash','INV26/270012','2026-06-13',671,31.96,0,671,'sreeja','9847223855','0.0',NULL,NULL,1,'15.98','15.98','639.04','671.0','0.0','0.0',NULL,5,2,1,0.00),(33,'Cash','INV26/270013','2026-12-16',1110.31,52.87,0,1110.31,'TEST','1234567','0.0',NULL,NULL,1,'26.44','26.44','1057.44','1110.31','0.0','0.0',NULL,5,2,1,0.00),(34,'Cash','INV26/270014','2026-06-16',18.75,0.89,0,18.75,'test1','25244252','0.0',NULL,NULL,1,'0.45','0.45','17.86','18.75','0.0','0.0',NULL,5,2,1,0.00),(35,'Cash,GPay','INV26/270015','2026-06-16',348.35,16.59,0,348.35,'test','9495658676','0.0',NULL,NULL,1,'8.29','8.29','331.76','300.0','48.35','0.0',NULL,5,2,187,0.00),(36,'Cash','INV26/270016','2026-06-16',360,17.14,0,360,'menon','1234567890','0.0',NULL,NULL,0,'8.57','8.57','342.86','360.0','0.0','0.0',NULL,5,2,187,0.00),(37,'Cash','INV26/270017','2026-06-18',4555.28,216.92,0,4555.28,'testuser','9895310696','0.0',NULL,NULL,1,'108.46','108.46','4338.36','4555.28','0.0','0.0',196,5,2,1,0.00),(38,'Cash','INV26/270018','2026-06-18',3081,146.71,0,3081,'test','9048272638','0.0',NULL,NULL,1,'73.36','73.36','2934.20','3081','0.0','0.0',1,5,2,1,0.00),(39,'Cash','INV26/270019','2026-06-18',7,0.31,0,7,'testpt','9999999999','0',NULL,NULL,1,'0.15','0.15','6','7','0','0',198,5,2,1,0.00),(40,'Cash','INV26/270020','2026-06-18',10,0.48,0,10,'testpt','9999999999','0',NULL,NULL,1,'0.24','0.24','10','10','0','0',198,5,2,1,0.00),(41,'Cash','INV26/270021','2026-06-18',215,10.24,0,205,'testuser','9895310696','10',NULL,NULL,1,'5.12','5.12','205','194','0','0',196,5,2,1,0.00),(42,'Cash','INV26/270022','2026-06-18',215,10.24,0,194,'testpatient123','1234567890','10',NULL,NULL,1,'5.12','5.12','205','194','0','0',210,5,2,1,0.00),(43,'Cash','INV26/270023','2026-06-18',44,2.08,0,43,'test','9048272638','2',NULL,NULL,1,'1.04','1.04','42','43','0','0',1,5,2,188,0.00),(44,'Cash','INV26/270024','2026-06-20',16,0.79,0,15,'testuser','9895310696','10',NULL,NULL,1,'0.39','0.39','16','15','0','0',196,5,2,1,0.00),(45,'Cash','INV26/270025','2026-06-24',237,11.280000000000001,0,237,'testuser','9895310696','0',NULL,NULL,0,'5.64','5.64','226','237','0','0',196,5,2,1,0.00),(46,'Cash','INV26/270026','2026-06-24',237,11.280000000000001,0,237,'test','9048272638','0',NULL,NULL,0,'5.64','5.64','226','237','0','0',1,5,2,1,0.00),(47,'Cash','INV26/270027','2026-06-24',237,11.280000000000001,0,237,'testpt','9999999999','0',NULL,NULL,0,'5.64','5.64','226','237','0','0',198,5,2,1,0.00),(48,'Cash','INV26/270028','2026-06-24',237,11.280000000000001,0,237,'testpt','9999999999','0',NULL,NULL,0,'5.64','5.64','226','237','0','0',198,5,2,1,0.00),(49,'Cash','INV26/270029','2026-06-24',237,11,0,237,'testpt','9999999999','0',NULL,NULL,0,'6','6','226','237','0','0',198,5,2,1,0.00),(50,'Cash','INV26/270030','2026-06-24',237,11,0,237,'testpt','9999999999','0',NULL,NULL,0,'6','6','226','237','0','0',198,5,2,1,0.00),(51,'Cash','INV26/270031','2026-06-24',237,11,0,237,'testpt','9999999999','0',NULL,NULL,1,'6','6','226','237','0','0',198,5,2,1,0.00),(52,'Cash','INV26/270032','2026-06-25',237,11,0,237,'testpt','9999999999','0',NULL,NULL,1,'6','6','226','237','0','0',198,5,2,1,0.00),(53,'Cash','INV26/270033','2026-06-25',1296,62,0,1296,'testpt','9999999999','0',NULL,NULL,1,'31','31','1234','1296','0','0',198,5,2,1,0.00),(54,'Cash','INV26/270034','2026-06-25',1035,49,0,1035,'testpt','9999999999','0',NULL,NULL,0,'25','25','986','1035','0','0',198,5,2,1,0.00),(55,'Cash','INV26/270035','2026-06-25',1035,49,0,1035,'test','9048272638','0',NULL,NULL,0,'25','25','986','1035','0','0',1,5,2,1,0.00),(56,'Cash','INV26/270036','2026-06-25',486,23,0,486,'testpt','9999999999','0',NULL,NULL,1,'12','12','463','486','0','0',198,5,2,1,0.00),(57,'Cash','INV26/270037','2026-06-25',2130,101.43,0,2130,'testpt','9999999999','0',NULL,NULL,1,'50.71','50.71','2029','2130','0','0',198,5,2,1,0.00),(58,'Cash','INV26/270038','2026-06-25',450,21.43,0,450,'testpt','9999999999','0',NULL,NULL,1,'10.71','10.71','429','450','0','0',198,5,2,1,0.00),(59,'Cash','INV26/270039','2026-06-25',120,5.71,0,120,'testpt','9999999999','0',NULL,NULL,1,'2.86','2.86','114','120','0','0',198,5,2,1,0.00),(60,'Cash','INV26/270040','2026-06-25',1123,53.480000000000004,0,1123,'testpatient123','1234567890','0',NULL,NULL,1,'26.74','26.74','1070','1123','0','0',210,5,2,1,0.00),(61,'Cash','INV26/270041','2026-06-25',360,17.14,0,360,'testuser','9895310696','0',NULL,NULL,0,'8.57','8.57','343','360','0','0',196,5,2,1,0.00),(62,'Cash','INV26/270042','2026-06-25',90,4.29,0,90,'testpt','9999999999','0',NULL,NULL,0,'2.14','2.14','86','90','0','0',198,5,2,1,0.00),(63,'Cash','INV26/270043','2026-06-25',90,4.29,0,90,'testuser','9895310696','0',NULL,NULL,1,'2.14','2.14','86','90','0','0',196,5,2,1,0.00),(64,'Cash','INV26/270044','2026-06-25',450,21.43,0,450,'testpt','9999999999','0',NULL,NULL,1,'10.71','10.71','429','450','0','0',198,5,2,1,0.00),(65,'Cash','INV26/270045','2026-06-25',1158,55.16,0,1158,'testuser','9895310696','0',NULL,NULL,0,'27.58','27.58','1103','1158','0','0',196,5,2,1,0.00),(66,'Cash','INV26/270046','2026-06-26',189,9,0,189,'testpt','9999999999','0',NULL,NULL,1,'4.5','4.5','180','189','0','0',198,5,2,1,0.00);
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
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_normalvaluemaster`
--

LOCK TABLES `ayurvedaapp_normalvaluemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_normalvaluemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_normalvaluemaster` VALUES (1,'Both',NULL,NULL,12.00,16.00,1,7,12),(2,'Both',NULL,NULL,4000.00,11000.00,1,4,3),(3,'Both',NULL,NULL,40.00,60.00,1,9,2),(4,'Male',NULL,NULL,20.00,40.00,1,10,2),(5,'Both',NULL,NULL,1.00,6.00,1,11,2),(6,'Both',NULL,NULL,2.00,10.00,1,12,2),(7,'Both',NULL,NULL,0.00,1.00,1,13,2),(8,'Both',NULL,NULL,1.50,5.00,1,14,5),(9,'Both',NULL,NULL,4.50,5.50,1,15,4),(10,'Both',NULL,NULL,40.00,50.00,1,16,2),(11,'Both',NULL,NULL,84.00,98.00,1,17,10),(12,'Both',NULL,NULL,27.00,34.00,1,18,11),(13,'Both',NULL,NULL,32.00,36.00,1,19,7),(14,'Both',NULL,NULL,70.00,110.00,1,25,1),(15,'Both',NULL,NULL,80.00,140.00,1,26,1),(16,'Both',NULL,NULL,80.00,150.00,1,27,1),(17,'Both',NULL,NULL,150.00,200.00,1,29,1),(18,'Both',NULL,NULL,50.00,150.00,1,30,1),(19,'Both',NULL,NULL,40.00,60.00,1,31,1),(20,'Both',NULL,NULL,70.00,130.00,1,32,1),(21,'Both',NULL,NULL,10.00,40.00,1,33,1),(22,'Both',NULL,NULL,0.00,4.00,1,34,1),(23,'Both',NULL,NULL,10.00,40.00,1,36,1),(24,'Both',NULL,NULL,0.60,1.40,1,37,1),(25,'Both',NULL,NULL,3.50,7.50,1,38,1),(26,'Both',NULL,NULL,8.00,10.50,1,39,1),(27,'Both',NULL,NULL,0.30,1.20,1,41,1),(28,'Both',NULL,NULL,0.10,0.40,1,42,1),(29,'Both',NULL,NULL,0.20,0.80,1,43,1),(30,'Both',NULL,NULL,5.00,40.00,1,44,6),(31,'Both',NULL,NULL,7.00,45.00,1,45,6),(32,'Both',NULL,NULL,45.00,150.00,1,46,6),(33,'Both',NULL,NULL,6.00,8.30,1,47,7),(34,'Both',NULL,NULL,3.50,5.00,1,48,7),(35,'Both',NULL,NULL,2.00,3.50,1,49,7),(36,'Both',NULL,NULL,1.00,2.00,1,50,1),(37,'Both',NULL,NULL,135.00,145.00,1,57,8),(38,'Both',NULL,NULL,3.50,5.00,1,58,8),(39,'Both',NULL,NULL,96.00,110.00,1,59,8),(40,'Both',NULL,NULL,6.00,8.00,1,112,2),(41,'Both',NULL,NULL,0.00,0.00,1,113,1),(42,'Both',NULL,NULL,70.00,110.00,1,52,1),(43,'Both',NULL,NULL,80.00,140.00,1,53,1),(44,'Both',NULL,NULL,70.00,110.00,1,54,1),(45,'Both',NULL,NULL,0.00,140.00,1,55,1),(46,'Both',NULL,NULL,2.02,4.43,1,60,9),(47,'Both',NULL,NULL,0.90,1.69,1,61,9),(48,'Both',NULL,NULL,0.30,4.20,1,62,14),(49,'Both',NULL,NULL,30.00,100.00,1,63,15),(50,'Both',NULL,NULL,1.00,5.00,1,20,18),(51,'Both',NULL,NULL,5.00,10.00,1,21,18),(52,'Both',NULL,NULL,40.00,440.00,1,24,3),(53,'Both',NULL,NULL,0.00,0.00,1,23,16),(54,'Both',NULL,NULL,0.00,0.00,1,22,16),(55,'Both',NULL,NULL,0.00,0.00,1,75,16),(56,'Both',NULL,NULL,0.00,0.00,1,76,16),(57,'Both',NULL,NULL,0.00,0.00,1,77,16),(58,'Both',NULL,NULL,0.00,0.00,1,74,16),(59,'Both',NULL,NULL,0.00,0.00,1,69,16),(60,'Both',NULL,NULL,0.00,0.00,1,70,16),(61,'Both',NULL,NULL,0.00,0.00,1,71,16),(62,'Both',NULL,NULL,0.00,0.00,1,72,16),(63,'Both',NULL,NULL,0.00,0.00,1,73,16),(64,'Both',NULL,NULL,0.00,0.00,1,79,16),(65,'Both',NULL,NULL,0.00,0.00,1,80,16),(66,'Both',NULL,NULL,0.00,0.00,1,81,16),(67,'Both',NULL,NULL,0.00,0.00,1,78,16),(68,'Both',NULL,NULL,0.00,0.00,1,68,16),(69,'Both',NULL,NULL,0.00,200.00,1,67,6),(70,'Both',NULL,NULL,0.00,6.00,1,66,1),(71,'Both',NULL,NULL,1.00,4.00,1,64,15),(72,'Both',NULL,NULL,0.00,5.00,1,65,17),(73,'Both',NULL,NULL,0.00,0.00,1,82,16),(74,'Both',NULL,NULL,0.00,0.00,1,83,16),(75,'Both',NULL,NULL,0.00,0.00,1,84,16),(76,'Both',NULL,NULL,0.00,0.00,1,85,16),(77,'Both',NULL,NULL,0.00,0.00,1,86,16),(78,'Both',NULL,NULL,0.00,5.00,1,91,3),(79,'Both',NULL,NULL,0.00,2.00,1,92,3),(80,'Both',NULL,NULL,0.00,5.00,1,93,3),(81,'Both',NULL,NULL,0.00,0.00,1,97,1),(82,'Both',NULL,NULL,0.00,0.00,1,100,16),(83,'Both',NULL,NULL,0.00,0.00,1,111,16),(584,'Male',10.0,50.0,60.00,80.00,1,6,1),(585,'Male',10.0,100.0,10.00,70.00,1,5,2),(586,'Male',10.0,100.0,10.00,90.00,1,3,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_packagemaster`
--

LOCK TABLES `ayurvedaapp_packagemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_packagemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_packagemaster` VALUES (1,'testpackage','                                    tester',1234.00,'2026-04-09 14:06:34.759434','Active',0,NULL,5),(2,'PAN','                                    esfsefw',45.00,'2026-06-22 08:05:23.710509','Active',0,NULL,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patient_details`
--

LOCK TABLES `ayurvedaapp_patient_details` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patient_details` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patient_details` VALUES (1,'test','20260409','MRNO202604091','22','Female','test@gmail.com','9048272638','2026-04-09',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(2,'jibin','20260409','MRNO202604092','22','Male','test@gmail.com','1234567890','2026-04-09',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(196,'testuser','20260512','MRNO202605121','25','Male','','9895310696','2026-05-12',5,NULL,'None',NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(197,'boby','20260516','MRNO202605161','42','Male','','9526324851','2026-05-16',5,14,'palakkad',1,0,NULL,'palakkad','offline',NULL,NULL,NULL),(198,'testpt','20260526','MRNO202605261','25','Female','','9999999999','2026-05-26',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(199,'Soumya','20260604','MRNO202606041','29','Female','','9867311453','2026-06-04',5,NULL,'',NULL,0,NULL,'test','offline',NULL,NULL,NULL),(200,'Divya P','20260609','MRNO20260609  1','39','Female','','9847223855','2026-06-09',5,14,'PALAKKAD',1,0,NULL,'AKATHETHARA','offline',NULL,NULL,NULL),(201,'SANDHYA','20260611','MRNO20260611  1','25','Female','','6282711081','2026-06-11',5,14,'PALAKKAD',1,0,NULL,'MUNDOOR','offline',NULL,NULL,NULL),(202,'SARASWATHY','20260611','MRNO20260611  2','34','Female','','9847311453','2026-06-11',5,14,'PALAKKAD',1,0,NULL,'KODUMB','offline',NULL,NULL,NULL),(203,'Babu','20260612','MRNO20260612  1','43','Male','','9876435212','2026-06-12',5,14,'palakkad',1,0,NULL,'Palakkad','offline',NULL,NULL,NULL),(204,'SINDHU','20260612','MRNO20260612  2','50','Female','','956715248','2026-06-12',5,14,'',1,0,NULL,'PALAKKAD','offline',NULL,NULL,NULL),(205,'POOJA','20260612','MRNO20260612  3','18','Female','','9847223855','2026-06-12',5,14,'PALAKKAD',1,0,NULL,'KOLUMBU','offline',NULL,NULL,NULL),(206,'THEERTHA','20260612','MRNO20260612  4','14','Female','','9847223855','2026-06-12',5,14,'PALAKKAD',1,0,NULL,'KOLUMBU','offline',NULL,NULL,NULL),(207,'SARASWATHY','20260612','MRNO20260612  5','34','Female','','7736002944','2026-06-12',5,14,'PALAKKAD n',1,0,NULL,'palakkad','offline',NULL,NULL,NULL),(208,'divya','20260612','MRNO20260612  6','39','Female','','7736002944','2026-06-12',5,14,'PALAKKAD',1,0,NULL,'okd','offline',NULL,NULL,NULL),(209,'Baby N','20260613','MRNO20260613  1','5','Female','','9847223855','2026-06-13',5,14,'palakkad',1,0,NULL,'olavakkode,Palakkad','offline',NULL,NULL,NULL),(210,'testpatient123','20260615','MRNO202606151','25','Female','','1234567890','2026-06-15',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(211,'Babu','20260616','MRNO202606161','23','Male','','9847223855','2026-06-16',5,NULL,'palakkad',1,0,NULL,'addd1','offline',NULL,NULL,NULL),(212,'test','20260616','MRNO202606162','30','Male','','1234567890','2026-06-16',5,NULL,NULL,NULL,0,NULL,'test','offline',NULL,NULL,NULL),(213,'LATHA','20260616','MRNO202606163','','','','52','2026-06-16',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(214,'LATHA','20260616','MRNO202606164','52','Female','','9847223855','2026-06-16',5,NULL,NULL,NULL,0,NULL,'PALAKKAD','offline',NULL,NULL,NULL),(215,'SARASWATHY','20260616','MRNO202606165','34','Female','','9847223855','2026-06-16',5,NULL,'',NULL,0,NULL,'R','offline',NULL,NULL,NULL),(216,'BHAVYA','20260617','MRNO202606171','28','Female','','914875236','2026-06-17',5,14,'',NULL,0,NULL,'OLAVAKKODE','offline',NULL,NULL,NULL),(217,'amutha','20260617','MRNO202606172','34','Female','','914875236','2026-06-17',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(218,'tester1','20260617','MRNO202606173','56','Male','','7854646745','2026-06-17',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(219,'Prakash test','20260617','MRNO202606174','50.0','Male','','8765432451','2026-06-17',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(220,'Javantest','20260617','MRNO202606175','35','Male','','8654764531','2026-06-17',5,NULL,NULL,NULL,0,NULL,'Ernakulam','offline',NULL,NULL,NULL),(221,'Rahul','20260618','MRNO202606181','45','Male','','9876543456','2026-06-18',5,NULL,NULL,NULL,0,NULL,'Ernakulam','offline',NULL,NULL,NULL),(222,'Ajesh PK','20260622','MRNO202606221','25','Male','','6789764567','2026-06-22',5,14,'Kottayam',1,0,NULL,'','offline',NULL,NULL,NULL),(223,'K Jose Philip','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(224,'Reji Kumar','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(225,'Shruthi Deepthi','20260629','','0','Female','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(226,'RAvi Kumar','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(227,'RAvi Kumar','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(228,'RAvi Kumar','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(229,'RAvi Kumar','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(230,'RAvi Kumar','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(231,'Vaishnavi Shaji','20260629','','0','Female','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(232,'SHibu Soman','20260629','','0','Male','','','2026-06-29',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(233,'Arun Kumar Test','20260702','MRNO202607021','35','Male','arunku@gmail.com','8765432344','2026-07-02',5,14,'Kottayam',1,0,NULL,'Kottayam','offline',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patientauditlog`
--

LOCK TABLES `ayurvedaapp_patientauditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patientauditlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patientauditlog` VALUES (1,'MRNO202604091','INSERT','2026-04-09','12:44:52.310559',5,1,1,NULL,NULL,NULL),(2,'MRNO202604092','INSERT','2026-04-09','13:31:11.532462',5,2,1,NULL,NULL,NULL),(3,'MRNO202605121','INSERT','2026-05-12','15:27:26.678432',5,196,1,NULL,NULL,NULL),(4,'MRNO202605161','INSERT','2026-05-16','14:35:52.411172',5,197,1,NULL,NULL,NULL),(5,'MRNO202605261','INSERT','2026-05-26','09:40:56.226237',5,198,190,NULL,NULL,NULL),(6,'MRNO202606041','INSERT','2026-06-04','14:46:29.341402',5,199,1,NULL,NULL,NULL),(7,'MRNO20260609  1','INSERT','2026-06-09','12:34:39.734989',5,200,190,NULL,NULL,NULL),(8,'MRNO20260611  1','INSERT','2026-06-11','16:04:04.377386',5,201,1,NULL,NULL,NULL),(9,'MRNO20260611  2','INSERT','2026-06-11','17:15:27.356690',5,202,1,NULL,NULL,NULL),(10,'MRNO202605121','EDIT','2026-06-11','17:16:39.463234',5,196,1,NULL,NULL,NULL),(11,'MRNO202605121','EDIT','2026-06-11','17:23:06.369987',5,196,1,NULL,NULL,NULL),(12,'MRNO20260612  1','INSERT','2026-06-12','09:42:33.724434',5,203,190,NULL,NULL,NULL),(13,'MRNO20260612  2','INSERT','2026-06-12','10:09:49.541902',5,204,1,NULL,NULL,NULL),(14,'MRNO20260612  3','INSERT','2026-06-12','11:10:23.532308',5,205,190,NULL,NULL,NULL),(15,'MRNO20260612  4','INSERT','2026-06-12','11:48:26.441903',5,206,190,NULL,NULL,NULL),(16,'MRNO20260612  5','INSERT','2026-06-12','17:48:20.841524',5,207,1,NULL,NULL,NULL),(17,'MRNO20260612  6','INSERT','2026-06-12','21:20:12.575526',5,208,1,NULL,NULL,NULL),(18,'MRNO20260613  1','INSERT','2026-06-13','09:39:39.628318',5,209,1,NULL,NULL,NULL),(19,'MRNO202606151','INSERT','2026-06-15','17:56:07.295628',5,210,1,NULL,NULL,NULL),(20,'MRNO202606161','INSERT','2026-06-16','14:13:10.177107',5,211,1,NULL,NULL,NULL),(21,'MRNO202606165','INSERT','2026-06-16','20:41:51.579390',5,215,1,NULL,NULL,NULL),(22,'MRNO202606171','INSERT','2026-06-17','08:15:50.703148',5,216,1,NULL,NULL,NULL),(23,'MRNO202606172','INSERT','2026-06-17','10:38:13.683596',5,217,1,NULL,NULL,NULL),(24,'MRNO202606221','INSERT','2026-06-22','10:23:46.410021',5,222,1,NULL,NULL,NULL),(25,'MRNO202607021','INSERT','2026-07-02','10:26:49.727023',5,233,1,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patientdischarge`
--

LOCK TABLES `ayurvedaapp_patientdischarge` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patientdischarge` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patientdischarge` VALUES (1,'','2026-04-09','2026-04-10','','tst',1,1,'N/A','N/A','','N/A',''),(2,'test','2026-05-13','2026-05-15','','tst',1,3,'Ward','122','test','N/A',''),(3,'','2026-06-15',NULL,'','Doctor Name',1,7,'N/A','N/A','','N/A',''),(4,'','2026-06-22',NULL,'','Dr. Shaji',1,4,'Room','','','Floor 2','Room1'),(5,'cdsgfh','2026-06-23',NULL,'gfhjk','fgdhj',1,17,'N/A','N/A','dsffga','N/A',''),(6,'wdscfvrwe','2026-07-02','2026-07-23','dcvf','dscv ',1,2,'Ward','122','dwsevw ','N/A',''),(7,'sadfcvbs','2026-07-02',NULL,'sadv b','adsvf',1,19,'Room','','dasfdsf ','1','21'),(8,'wetret','2026-07-01',NULL,'wetewt','tewrtwe',1,23,'Room','','rwetewt','2','121'),(9,'ds','2026-07-03',NULL,'dsgsgs','dgsdg',1,24,'Room','','sdfgsd','2','121'),(10,'asd','2026-07-01','2026-07-17','sad','asddas',1,10,'N/A','N/A','adsdas','N/A',''),(11,'asfas','2026-07-01',NULL,'safasf','estwer',1,25,'Room','','fsfafs','3','125'),(12,'hssr','2026-07-01','2026-07-10','vzaD','dgvs',1,26,'Room','','dfh','3','125');
/*!40000 ALTER TABLE `ayurvedaapp_patientdischarge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_patientvisitcycleappointment`
--

DROP TABLE IF EXISTS `ayurvedaapp_patientvisitcycleappointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_patientvisitcycleappointment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `order_in_cycle` int NOT NULL,
  `days_from_consultation` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `appointment_id` bigint NOT NULL,
  `cycle_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_cycle_i_9e336c_idx` (`cycle_id`,`status`),
  KEY `ayurvedaapp_appoint_b56929_idx` (`appointment_id`),
  CONSTRAINT `ayurvedaapp_patientv_appointment_id_d053e56e_fk_ayurvedaa` FOREIGN KEY (`appointment_id`) REFERENCES `ayurvedaapp_appointments` (`id`),
  CONSTRAINT `ayurvedaapp_patientv_cycle_id_3bbda99e_fk_ayurvedaa` FOREIGN KEY (`cycle_id`) REFERENCES `ayurvedaapp_patientvisitcyclelog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patientvisitcycleappointment`
--

LOCK TABLES `ayurvedaapp_patientvisitcycleappointment` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patientvisitcycleappointment` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patientvisitcycleappointment` VALUES (4,'Consultation',500.00,1,0,'2026-07-15 09:41:10.587066',42,4),(5,'Revisit',0.00,2,1,'2026-07-16 10:01:43.441699',45,4),(6,'Consultation',500.00,1,0,'2026-07-16 03:59:09.317787',46,5),(7,'Consultation',500.00,1,0,'2026-07-16 06:56:36.247930',47,6),(8,'Consultation',500.00,1,0,'2026-07-16 07:06:25.398519',48,7),(9,'Revisit',0.00,2,0,'2026-07-16 07:07:11.062399',49,7),(11,'Consultation',500.00,1,0,'2026-07-16 07:10:19.640625',51,9),(12,'Revisit',0.00,2,0,'2026-07-16 07:11:28.911323',52,9),(14,'Consultation',500.00,1,0,'2026-07-16 07:14:42.830918',54,11),(15,'Revisit',0.00,2,0,'2026-07-16 07:15:16.440728',55,11),(20,'Followup',200.00,3,0,'2026-07-16 08:12:10.757982',61,11),(21,'Revisit',0.00,2,0,'2026-07-16 08:40:49.130743',62,6),(22,'Followup',100.00,3,0,'2026-07-16 08:45:23.227924',63,6);
/*!40000 ALTER TABLE `ayurvedaapp_patientvisitcycleappointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_patientvisitcyclelog`
--

DROP TABLE IF EXISTS `ayurvedaapp_patientvisitcyclelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_patientvisitcyclelog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `consultation_date` date NOT NULL,
  `consultation_fee` decimal(10,2) NOT NULL,
  `consultation_count` int NOT NULL,
  `revisit_count` int NOT NULL,
  `followup_count` int NOT NULL,
  `total_visits_in_cycle` int NOT NULL,
  `total_fee_collected` decimal(12,2) NOT NULL,
  `total_revisit_fees` decimal(12,2) NOT NULL,
  `total_followup_fees` decimal(12,2) NOT NULL,
  `consultation_days` int NOT NULL,
  `revisit_days` int NOT NULL,
  `max_revisit_count` int NOT NULL,
  `followup_days` int NOT NULL,
  `max_followup_count` int NOT NULL,
  `consultation_fee_setting` decimal(10,2) NOT NULL,
  `revisit_fee_setting` decimal(10,2) NOT NULL,
  `followup_fee_setting` decimal(10,2) NOT NULL,
  `current_status` varchar(50) NOT NULL,
  `days_from_consultation` int NOT NULL,
  `is_cycle_active` tinyint(1) NOT NULL,
  `is_cycle_closed` tinyint(1) NOT NULL,
  `cycle_end_date` date DEFAULT NULL,
  `cycle_closed_reason` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `consultation_appointment_id` bigint DEFAULT NULL,
  `current_appointment_id` bigint DEFAULT NULL,
  `doctor_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_patient_aa110d_idx` (`patient_id`,`doctor_id`),
  KEY `ayurvedaapp_consult_7f1764_idx` (`consultation_date`),
  KEY `ayurvedaapp_is_cycl_fed4b4_idx` (`is_cycle_active`),
  KEY `ayurvedaapp_current_87faab_idx` (`current_status`),
  KEY `ayurvedaapp_patientv_branch_id_8d8285dc_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_patientv_consultation_appoint_171046c8_fk_ayurvedaa` (`consultation_appointment_id`),
  KEY `ayurvedaapp_patientv_current_appointment__813cac79_fk_ayurvedaa` (`current_appointment_id`),
  KEY `ayurvedaapp_patientv_doctor_id_c710f64b_fk_ayurvedaa` (`doctor_id`),
  CONSTRAINT `ayurvedaapp_patientv_branch_id_8d8285dc_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_patientv_consultation_appoint_171046c8_fk_ayurvedaa` FOREIGN KEY (`consultation_appointment_id`) REFERENCES `ayurvedaapp_appointments` (`id`),
  CONSTRAINT `ayurvedaapp_patientv_current_appointment__813cac79_fk_ayurvedaa` FOREIGN KEY (`current_appointment_id`) REFERENCES `ayurvedaapp_appointments` (`id`),
  CONSTRAINT `ayurvedaapp_patientv_doctor_id_c710f64b_fk_ayurvedaa` FOREIGN KEY (`doctor_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_patientv_patient_id_1c8fd094_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patientvisitcyclelog`
--

LOCK TABLES `ayurvedaapp_patientvisitcyclelog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patientvisitcyclelog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patientvisitcyclelog` VALUES (4,'2026-07-15',500.00,1,1,0,2,500.00,0.00,0.00,9,4,3,4,2,500.00,0.00,100.00,'Revisit',1,1,0,NULL,NULL,'2026-07-15 09:41:10.574972','2026-07-16 10:01:43.418489',5,42,45,1,1),(5,'2026-07-16',500.00,1,0,0,1,500.00,0.00,0.00,9,4,3,4,2,500.00,0.00,100.00,'Consultation',0,1,0,NULL,NULL,'2026-07-16 03:59:09.281822','2026-07-16 03:59:09.281822',5,46,46,1,196),(6,'2026-07-16',500.00,1,1,1,3,600.00,0.00,100.00,9,4,3,4,2,500.00,0.00,100.00,'Followup',0,1,0,NULL,NULL,'2026-07-16 06:56:36.233418','2026-07-16 08:45:23.211155',5,47,63,1,220),(7,'2026-07-16',500.00,1,1,0,2,500.00,0.00,0.00,9,3,1,4,1,500.00,0.00,200.00,'Revisit',0,1,0,NULL,NULL,'2026-07-16 07:06:25.388947','2026-07-16 07:07:11.084062',5,48,49,205,210),(9,'2026-07-16',500.00,1,1,0,2,500.00,0.00,0.00,9,3,1,4,1,500.00,0.00,200.00,'Revisit',0,1,0,NULL,NULL,'2026-07-16 07:10:19.637363','2026-07-16 07:11:28.925352',5,51,52,205,219),(11,'2026-07-16',500.00,1,1,1,3,700.00,0.00,200.00,9,3,1,4,1,500.00,0.00,200.00,'Followup',0,0,1,NULL,NULL,'2026-07-16 07:14:42.820502','2026-07-16 08:12:10.775855',5,54,61,205,233);
/*!40000 ALTER TABLE `ayurvedaapp_patientvisitcyclelog` ENABLE KEYS */;
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
  `wholesale_rate` decimal(10,2) DEFAULT NULL,
  `base_quantity` decimal(12,2) NOT NULL,
  `base_rate` decimal(12,2) NOT NULL,
  `total_base_quantity` decimal(12,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=1126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_physicalstockdetails`
--

LOCK TABLES `ayurvedaapp_physicalstockdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_physicalstockdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_physicalstockdetails` VALUES (11,'2026-04-26','2026-05-22','AO172','500.0',10,'2026-05-05',146,1659,185,1,31,10,1,'2026-05-08',5,0.00,NULL,0.00,0.00,0.00),(12,'2026-04-26','2026-05-05','bt45','20.0',40,'2026-05-05',146,1659,185,1,31,10,1,'2026-05-08',5,200.00,NULL,0.00,0.00,0.00),(40,'2026-01-01','2032-12-01','GTG2896A','20.0',18,'2026-06-20',155,3065,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(41,NULL,NULL,'0','0',1,'2026-06-02',155,3066,1,6,37,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(42,'2026-06-01','2026-12-01','ABD-1','50.0',2,'2026-06-20',151,3067,1,6,37,24,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(43,'2026-06-01','2026-12-01','ABD-1','0.0',1,'2026-06-20',151,3067,1,6,37,24,1,'2026-06-20',5,0.00,NULL,0.00,0.00,0.00),(44,NULL,NULL,'0','0',0,'2026-06-02',155,3069,1,6,37,20,1,'2026-06-20',5,0.00,NULL,0.00,0.00,0.00),(45,'2026-06-01','2026-12-01','0','0.0',2,'2026-06-20',155,3069,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(46,NULL,NULL,'0','0',1,'2026-06-02',152,3070,1,6,37,21,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(47,NULL,NULL,'0','0',1,'2026-06-02',155,3071,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(48,NULL,NULL,'0','0',1,'2026-06-02',155,3072,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(49,NULL,NULL,'0','0',1,'2026-06-02',155,3073,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(50,NULL,NULL,'0','0',1,'2026-06-02',155,3074,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(51,NULL,NULL,'0','0',1,'2026-06-02',155,3075,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(52,NULL,NULL,'0','0',0,'2026-06-02',155,3076,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(53,NULL,NULL,'0','0',1,'2026-06-02',155,3077,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(54,NULL,NULL,'0','0',1,'2026-06-02',155,3077,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(55,'2024-06-05','2027-04-01','5NG401','24.818',17,'2026-06-02',155,3078,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(56,'2025-02-01','2027-08-01','MR-196','132.0',11,'2026-06-02',153,3079,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(57,'2025-07-01','2027-08-01','MGR-236','119.25',2,'2026-06-02',155,1717,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(58,'2026-02-01','2028-08-01','2E09M006','39.65',30,'2026-06-02',154,1721,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(59,NULL,NULL,'0','0',1,'2026-06-02',155,1721,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(60,'2026-02-04','2028-09-01','2E10M013','5.423',21,'2026-06-02',154,3080,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(61,'2026-04-05','2028-08-01','BLJ250362','67.1',13,'2026-06-02',156,3081,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(62,'2026-05-03','2028-08-01','AMCS0117','87.2',132,'2026-06-02',155,3082,1,6,38,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(63,'2027-06-04','2029-02-01','AMM80130','80.0',390,'2026-06-02',155,3083,1,6,38,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(64,NULL,NULL,'0','0',1,'2026-06-02',155,3084,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(65,NULL,NULL,'0','0',1,'2026-06-02',155,3084,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(66,'2025-06-02','2027-12-01','KP1713910','31.47',10,'2026-06-02',157,3085,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(67,'2025-02-01','2027-09-01','BT25-240A','75.0',161,'2026-06-02',158,3086,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(68,'2026-05-06','2028-01-01','GT602003B','112.5',1000,'2026-06-02',158,1730,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(69,'2025-02-06','2027-06-01','382087','64.65',5,'2026-06-02',155,3087,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(70,'2025-08-02','2027-09-01','B26825007','3016.26',0,'2026-06-02',159,3088,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(71,'2025-07-03','2027-06-01','B25925007','4469.28',0,'2026-06-02',159,3089,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(72,'2025-09-01','2027-11-01','F25009030A','43.6',69,'2026-06-02',160,3090,1,6,41,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(73,NULL,NULL,'0','0',1,'2026-06-02',155,3091,1,6,37,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(74,NULL,NULL,'0','0',1,'2026-06-02',155,3092,1,6,37,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(75,'2025-10-02','2027-11-01','1041225D','183.0',135,'2026-06-02',161,3093,1,6,42,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(76,NULL,NULL,'0','0',1,'2026-06-02',155,3094,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(77,'2025-05-08','2027-07-01','A1AJZ018','60.83',23,'2026-06-02',162,1746,1,6,35,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(78,NULL,NULL,'0','0',1,'2026-06-02',155,3095,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(79,'2025-05-09','2027-06-01','1303351','45.31',20,'2026-06-02',157,3096,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(80,'2025-02-03','2027-08-01','11251595','158.43',6,'2026-06-02',163,3097,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(81,NULL,'1902-10-23','0560006A','144.85',13,'2026-06-02',163,3098,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(82,'2025-05-01','2027-10-01','05251464A','165.47',6,'2026-06-02',155,3099,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(83,'2025-02-04','2027-05-01','11250978','157.97',15,'2026-06-02',163,3100,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(84,'2026-06-05','2028-04-01','5C10727','12.96',24,'2026-06-02',155,3101,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(85,'2026-02-04','2028-10-01','5L81009','8.8',62,'2026-06-02',164,3102,1,6,37,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(86,'2025-09-02','2027-10-01','5A61207','19.22',8,'2026-06-02',164,1757,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(87,NULL,NULL,'0','0',1,'2026-06-02',155,3103,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(88,'2024-08-03','2026-11-01','BAIL24021','537.5',1,'2026-06-02',165,3104,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(89,'2025-10-02','2027-10-01','D250663','133.25',9,'2026-06-02',165,3105,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(90,NULL,NULL,'0','0',1,'2026-06-02',155,3106,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(91,NULL,NULL,'0','0',1,'2026-06-02',155,3107,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(92,NULL,NULL,'0','0',1,'2026-06-02',155,3108,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(93,'2025-07-01','2027-08-01','AT2204','5.063',100,'2026-06-02',166,3109,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(94,'2025-03-01','2027-07-01','25AH141A','7.8',10,'2026-06-02',157,3110,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(95,NULL,NULL,'0','0',1,'2026-06-02',167,3111,1,6,38,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(96,'2024-07-04','2026-08-01','825C013','25.18',31,'2026-06-02',167,3112,1,6,38,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(97,'2025-10-01','2027-11-01','826B045','19.53',205,'2026-06-02',167,3113,1,6,38,18,1,'2026-06-16',5,0.00,NULL,0.00,0.00,0.00),(98,'2025-05-21','2027-02-01','ZO5AJ25035','169.45',10,'2026-06-02',168,3114,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(99,NULL,NULL,'0','0',1,'2026-06-02',168,3115,1,6,45,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(100,'2026-07-02','2028-08-01','5P2890A','0.82',44,'2026-06-02',155,3116,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(101,'2026-10-02','2028-11-01','321325037','5.86',2,'2026-06-02',169,3117,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(102,'2026-11-01','2028-10-01','AVA25015','6.983',32,'2026-06-02',170,1783,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(103,NULL,NULL,'0','0',1,'2026-06-02',171,3118,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(104,NULL,NULL,'0','0',1,'2026-06-02',171,3119,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(105,'2025-10-02','2027-11-01','AZS393','109.3',3,'2026-06-02',172,3120,1,6,42,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(106,NULL,NULL,'0','0',1,'2026-06-02',173,3121,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(107,'2025-05-03','2027-12-01','2613000025','125.89',22,'2026-06-02',173,3122,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(108,'2026-03-02','2028-01-01','2613000094','125.89',23,'2026-06-02',173,3122,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(109,'2025-04-03','2027-12-01','2613000023','124.63',89,'2026-06-02',173,3123,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(110,'2026-10-02','2028-11-01','GTG3647A','5.3',140,'2026-06-11',174,3124,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(111,NULL,NULL,'GTG14498','0',1,'2026-06-02',174,3125,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(112,NULL,NULL,'0','0',1,'2026-06-02',174,3125,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(113,'2025-02-05','2027-05-01','GTG1694A','129.84',141,'2026-06-02',174,3126,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(114,NULL,NULL,'0','0',1,'2026-06-02',175,3127,1,6,37,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(115,'2017-02-01','2019-08-01','G251010650','86.0',5,'2026-06-02',176,1805,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(116,'2027-04-06','2029-04-01','N0526','340.0',22,'2026-06-16',151,3128,1,6,47,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(117,NULL,NULL,'0','0',1,'2026-06-02',164,1809,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(118,NULL,NULL,'0','0',1,'2026-06-02',177,3129,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(119,'2026-06-01','2028-03-01','NDC0002','480.0',3,'2026-06-02',178,3130,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(120,'2026-05-05','2028-12-01','1033','160.0',37,'2026-06-02',179,1815,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(121,'2026-05-04','2028-08-01','153','180.0',11,'2026-06-02',180,3131,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(122,'2025-06-01','2027-09-01','B0AGY043','42.27',3,'2026-06-02',181,3132,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(123,NULL,NULL,'0','0',1,'2026-06-02',181,3133,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(124,'2025-04-05','2027-02-01','2523019N','62.37',3,'2026-06-02',182,3134,1,6,44,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(125,NULL,NULL,'0','0',1,'2026-06-02',151,1827,1,6,37,29,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(126,NULL,NULL,'0','0',1,'2026-06-02',183,3135,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(127,'2025-01-04','2027-09-01','FHTF-1009','19.9',45,'2026-06-02',184,1830,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(128,'2025-02-01','2027-10-01','GN08225','131.46',1,'2026-06-02',185,3136,1,6,49,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(129,NULL,NULL,'0','0',1,'2026-06-02',185,3137,1,6,49,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(130,NULL,NULL,'0','0',1,'2026-06-02',185,3138,1,6,49,31,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(131,'2025-07-01','2027-08-01','N1152','25.3',7,'2026-06-02',186,1838,1,6,50,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(132,'2026-05-06','2028-03-01','220500325B','42.1',1,'2026-06-02',186,3139,1,6,51,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(133,'2026-05-01','2028-03-01','220500325C','84.2',8,'2026-06-02',187,3140,1,6,51,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(134,'2025-04-02','2027-02-01','Z06AH25106','198.25',5,'2026-06-02',187,3141,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(135,'2025-02-08','2027-11-01','ALA25U04','140.62',116,'2026-06-02',188,3142,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(136,'2025-09-01','2027-10-01','BLA26001','215.62',21,'2026-06-02',188,3143,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(137,'2025-05-03','2027-10-01','25S2GTC73','152.0',116,'2026-06-02',189,3144,1,6,52,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(138,NULL,NULL,'0','0',1,'2026-06-02',151,3145,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(139,'2025-02-01','2027-08-01','68B25098A','268.09',1,'2026-06-02',151,3146,1,6,51,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(140,NULL,NULL,'','0',1,'2026-06-02',190,3147,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(141,'2025-05-06','2027-08-01','CLB02AAA','212.81',4,'2026-06-02',191,3148,1,6,54,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(142,'2025-05-04','2027-10-01','ABZ25031','301.03',285,'2026-06-02',192,3149,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(143,NULL,'1930-08-01','G251020354','208.0',4,'2026-06-02',176,1860,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(144,'2026-02-05','2028-11-01','AC3B531AA','1690.0',1,'2026-06-02',193,3150,1,6,51,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(145,NULL,NULL,'0','0',1,'2026-06-02',194,1863,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(146,'2025-08-02','2027-06-01','TF25198G','265.17',35,'2026-06-02',195,3151,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(147,'2025-06-01','2027-09-01','25GJ17B','52.97',25,'2026-06-02',196,3152,1,6,54,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(148,'2026-02-01','2028-01-01','6T00043','25.42',13,'2026-06-02',164,3153,1,6,50,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(149,'2025-04-03','2027-03-01','5SN1031','300.2',1,'2026-06-02',164,3154,1,6,50,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(150,'2026-05-02','2028-10-01','45119','31.13',10,'2026-06-02',197,3155,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(151,'2025-08-01','2027-10-01','KP094054','356.7',10,'2026-06-02',197,3156,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(152,'2026-05-04','2028-08-01','VH-17841','32.0',36,'2026-06-02',198,3157,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(153,'2025-02-03','2027-11-01','Z01AG25002','53.7',7,'2026-06-02',188,3158,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(154,'2025-05-06','2027-06-01','Z01AH25001','65.5',27,'2026-06-02',188,3159,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(155,'2026-03-01','2028-04-01','30042019','29.75',3,'2026-06-02',188,3160,1,6,57,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(156,NULL,'1902-10-23','gtg3661a','128.672',10,'2026-06-02',174,3161,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(157,'2025-10-01','2027-11-01','G21BY068','143.0',9,'2026-06-02',181,3162,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(158,'2025-05-01','2027-10-01','NA391','38.46',3,'2026-06-02',199,3163,1,6,50,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(159,'2025-10-02','2027-11-01','NA660','42.84',6,'2026-06-02',199,3164,1,6,50,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(160,'2025-06-10','2027-12-01','EA2605','0.95',208,'2026-06-02',199,3165,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(161,'2025-05-10','2027-12-01','NA481','30.98',5,'2026-06-02',199,1886,1,6,50,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(162,'2025-05-05','2027-07-01','LTA-49454','9.375',149,'2026-06-02',200,1888,1,6,58,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(163,'2025-08-03','2027-01-01','11240194','94.5',1,'2026-06-02',201,3166,1,6,43,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(164,'2026-02-01','2028-04-01','11250549','96.08',5,'2026-06-02',201,3167,1,6,43,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(165,'2027-04-03','2029-12-01','71260011','159.0',5,'2026-06-02',201,3168,1,6,43,34,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(166,'2025-05-01','2027-12-01','11250130','177.66',5,'2026-06-02',201,3169,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(167,'2026-05-06','2028-05-01','69250003','150.0',2,'2026-06-02',201,1896,1,6,43,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(168,'2025-05-05','2027-06-01','G45Y018','22.457',5,'2026-06-02',181,3170,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(169,'2025-06-14','2027-02-01','ARC0009','162.0',7,'2026-06-02',202,3171,1,6,37,36,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(170,'2027-05-06','2029-04-01','NMO7E26','14.0',200,'2026-06-02',203,1902,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(171,'2026-10-01','2028-11-01','NMO7125','10.0',96,'2026-06-02',203,1903,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(172,'2025-05-06','2027-08-01','CAPC491','41.333',15,'2026-06-02',204,1904,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(173,'2026-05-07','2028-08-01','F702504G','467.81',27,'2026-06-02',174,1905,1,6,50,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(174,'2026-06-02','2028-12-01','25AV0002','111.56',12,'2026-06-02',205,3172,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(175,'2023-07-04','2025-08-01','23070572','97.1',1,'2026-06-02',205,1908,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(176,'2025-07-02','2028-08-01','25AV0069','96.56',13,'2026-06-02',205,3173,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(177,'2025-02-02','2027-12-01','F26012001A','44.491',120,'2026-06-02',206,3174,1,6,57,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(178,'2025-05-06','2027-06-01','LI525454','8.7',90,'2026-06-02',207,3175,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(179,'2024-11-01','2026-12-01','LI255078','10.41',32,'2026-06-02',207,3176,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(180,'2025-01-01','2027-02-01','GCTB25003','49.595',33,'2026-06-02',208,3177,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(181,'2025-05-06','2027-06-01','GUTC25048','54.941',50,'2026-06-02',208,3178,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(182,'2024-07-02','2026-08-01','LCN0900705','57.6',3,'2026-06-02',208,3179,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(183,'2025-05-02','2027-05-01','ALU02ABA','11.156',21,'2026-06-02',209,3180,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(184,NULL,NULL,'0','0',1,'2026-06-02',164,3181,1,6,48,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(185,'2025-08-04','2027-04-01','C202504K','15.75',150,'2026-06-02',210,3182,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(186,'2026-11-01','2028-12-01','2KU6N004','25.706',41,'2026-06-02',211,3183,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(187,'2026-05-01','2028-10-01','KC925038','14.63',72,'2026-06-02',192,3184,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(188,'2025-05-08','2027-11-01','W55Y016','200.5',150,'2026-06-02',181,3185,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(189,'2025-11-06','2027-11-01','Q35Y005','10.55',125,'2026-06-02',181,3186,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(190,'2025-05-01','2027-04-01','Q25Y002','6.556',120,'2026-06-02',181,3187,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(191,'2026-05-10','2028-01-01','5SD0080','4.76',23,'2026-06-02',164,3188,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(192,'2026-10-11','2028-11-01','SSDO485','21.404',30,'2026-06-02',164,3189,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(193,'2025-05-10','2027-04-01','5B50473','10.078',95,'2026-06-02',164,3190,1,6,48,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(194,'2025-08-01','2027-09-01','MBL0090','148.0',3,'2026-06-02',212,1938,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(195,'2025-10-10','2027-01-01','N5AFY002','20.742',24,'2026-06-02',181,1939,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(196,'2025-08-01','2027-09-01','CUSST23013','200.0',2,'2026-06-02',213,3191,1,6,59,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(197,'2025-05-07','2027-04-01','1000525D','111.38',6,'2026-06-02',214,3192,1,6,49,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(198,'2025-05-09','2027-06-01','37226003','215.0',6,'2026-06-02',215,1944,1,6,43,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(199,'2024-01-10','2026-10-01','EEK009F','44.403',60,'2026-06-02',216,3193,1,6,60,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(200,'2025-05-01','2027-04-01','GTG1570A','7.588',15,'2026-06-02',174,3194,1,6,57,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(201,'2027-06-06','2027-07-01','L1532543C','478.0',10,'2026-06-02',217,1950,1,6,35,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(202,'2024-05-13','2026-08-01','EJ2508','8.28',30,'2026-06-02',218,3195,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(203,'2025-05-06','2027-12-01','G230140586','39.0',6,'2026-06-02',176,1954,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(204,'2025-02-01','2027-02-01','010DB2504','70.0',1,'2026-06-02',219,1956,1,6,61,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(205,NULL,NULL,'','0',1,'2026-06-02',219,3196,1,6,61,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(206,'2025-06-20','2027-03-01','CQ324014G5','133.0',30,'2026-06-02',220,3197,1,6,43,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(207,'2026-09-01','2028-08-01','AC065/25','27.0',4,'2026-06-02',221,3198,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(208,'2026-05-06','2028-12-01','AC0176/26','325.0',4,'2026-06-02',221,3199,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(209,'2024-06-20','2026-06-01','CDCY24006','30.0',55,'2026-06-02',222,1964,1,6,56,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(210,NULL,NULL,'0','0',0,'2026-06-02',212,3200,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(211,'2027-05-01','2029-02-01','872502D7','318.59',11,'2026-06-02',212,1965,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(212,'2026-01-01','2028-01-01','EY6407016','21.22',212,'2026-06-02',223,3201,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(213,'2025-06-01','2027-07-01','DWL104008A','9.67',205,'2026-06-02',171,3202,1,6,59,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(214,'2025-07-02','2027-01-01','0825001AS','8.29',75,'2026-06-02',171,3203,1,6,59,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(215,'2025-05-02','2027-08-01','25DG0071','7.09',40,'2026-06-02',205,3204,1,6,43,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(216,'2025-06-05','2027-07-01','25330019','103.0',1,'2026-06-02',205,3205,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(217,'2025-04-06','2027-07-01','25330019','103.0',1,'2026-06-02',224,3206,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(218,'2026-05-01','2028-01-01','26070052','6.25',500,'2026-06-02',205,3207,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(219,NULL,NULL,'0','0',1,'2026-06-02',225,3208,1,6,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(220,'2025-02-08','2027-10-01','1K246273','36.72',10,'2026-06-02',226,3209,1,6,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(221,'2024-11-06','2026-12-01','1A40072','43.53',1,'2026-06-02',225,3210,1,6,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(222,'2024-05-06','2026-09-01','LLD-8666B','73.13',63,'2026-06-02',227,3211,1,6,62,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(223,'2025-05-06','2027-11-01','W47Y013','20.87',92,'2026-06-02',181,3212,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(224,'2025-08-01','2027-10-01','DA22507','14.316',69,'2026-06-02',228,3213,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(225,'2024-05-10','2026-06-01','MPA250415','16.5',6,'2026-06-02',215,3214,1,6,43,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(226,NULL,NULL,'OFS','0',1,'2026-06-02',214,3215,1,6,37,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(227,'2026-10-01','2028-11-01','13251764A','15.468',100,'2026-06-02',229,3216,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(228,'2025-08-07','2027-02-01','N25032','68.51',8,'2026-06-02',230,1992,1,6,55,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(229,'2025-05-01','2027-01-01','N25030','71.18',2,'2026-06-02',230,3217,1,6,55,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(230,'2027-06-04','2029-09-01','NA00336A','11.22',21,'2026-06-02',231,3218,1,6,50,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(231,'2026-05-08','2028-12-01','B00006A','1.395',150,'2026-06-02',231,3219,1,6,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(232,'2025-05-20','2027-05-01','1250902','435.94',2,'2026-06-02',201,3220,1,6,43,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(233,'2025-08-05','2027-11-01','B027','252.0',3,'2026-06-02',232,2004,1,6,41,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(234,'2025-05-05','2027-07-01','B041','228.0',6,'2026-06-02',232,2002,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(235,'2026-05-01','2028-11-01','B311','186.87',5,'2026-06-02',232,2000,1,6,41,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(236,NULL,NULL,'0','0',1,'2026-06-02',232,3221,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(237,'2026-05-20','2028-10-01','B373','168.18',9,'2026-06-02',232,2003,1,6,41,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(238,'2025-05-06','2027-08-01','ALK25022SR','10.88',1,'2026-06-02',231,3222,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(239,'2026-05-01','2028-04-01','GA00120A','6.93',18,'2026-06-02',231,3223,1,6,63,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(240,'2024-06-05','2026-12-01','CO165066','211.0',1,'2026-06-02',233,3224,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(241,'2025-04-02','2027-10-01','256028','708.0',10,'2026-06-02',197,3225,1,6,39,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(242,'2024-05-01','2027-11-01','256027','708.0',8,'2026-06-02',197,3226,1,6,39,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(243,'2027-05-10','2029-01-01','FINE','55.0',8,'2026-06-02',197,3227,1,6,46,37,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(244,NULL,NULL,'0','0',0,'2026-06-02',234,3228,1,6,64,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(245,'2025-05-06','2027-06-01','FHH-2635','45.938',94,'2026-06-02',184,3229,1,6,65,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(246,'2026-02-02','2028-06-01','2409041','30.0',27,'2026-06-02',235,3230,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(247,NULL,'1930-11-01','2227','210.0',3,'2026-06-02',236,3231,1,6,66,38,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(248,NULL,NULL,'0','0',1,'2026-06-02',236,3232,1,6,66,38,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(249,NULL,NULL,'0','0',1,'2026-06-02',236,3233,1,6,66,38,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(250,NULL,'1930-06-01','062-0725','179.0',13,'2026-06-02',236,3234,1,6,66,39,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(251,'2027-02-01','2029-02-01','C613455','40.82',25,'2026-06-02',225,3235,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(252,'2025-05-01','2027-04-01','AJP37AAA','133.5',5,'2026-06-02',237,3236,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(253,'2027-05-01','2029-11-01','DOBS4339','2.141',348,'2026-06-02',204,3237,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(254,NULL,NULL,'0','0',0,'2026-06-02',238,3238,1,6,36,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(255,'2024-05-06','2026-07-01','230414S','64.0',7,'2026-06-02',182,3239,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(256,NULL,NULL,'0','0',1,'2026-06-02',197,3240,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(257,NULL,NULL,'0','0',1,'2026-06-02',232,3241,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(258,'2026-05-01','2028-06-01','SKG2331A','575.0',3,'2026-06-02',174,3242,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(259,'2025-05-10','2027-10-01','MGV4M005','5.355',36,'2026-06-02',211,3243,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(260,'2024-06-01','2026-07-01','ZOT-0626','8.625',13,'2026-06-02',239,2040,1,6,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(261,'2025-05-01','2027-11-01','SSN2321','25.71',36,'2026-06-02',164,2041,1,6,36,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(262,'2025-04-05','2027-11-01','843145D7','328.12',4,'2026-06-02',212,3244,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(263,'2026-08-02','2028-09-01','DAW26003','90.182',36,'2026-06-02',212,3245,1,6,68,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(264,'2026-05-20','2028-04-01','MAZA5018','4.576',52,'2026-06-02',240,3246,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(265,'2026-03-03','2028-03-01','MAZB5018','19.018',15,'2026-06-02',212,3247,1,6,44,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(266,'2025-02-01','2027-11-01','H251822','65.62',136,'2026-06-02',241,3248,1,6,69,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(267,'2025-02-05','2027-12-01','UHT25538H','46.7',120,'2026-06-02',241,3249,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(268,'2025-05-07','2027-11-01','25012122','62.813',486,'2026-06-02',242,3250,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(269,'2027-05-05','2028-01-01','75Z001','8.487',100,'2026-06-02',181,3251,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(270,'2027-05-01','2029-02-01','24034','44.0',99,'2026-06-02',236,3252,1,6,66,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(271,'2025-04-05','2027-05-01','FLA25U03','19.0',14,'2026-06-02',243,3253,1,6,67,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(272,'2025-02-04','2027-11-01','4011790','0.755',519,'2026-06-02',244,3254,1,6,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(273,'2025-04-02','2027-11-01','4011787','0.377',345,'2026-06-02',244,3255,1,6,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(274,NULL,'2027-06-01','101GY','249.38',2,'2026-06-02',245,3256,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(275,NULL,'2027-09-01','RU12402','1078.0',14,'2026-06-02',246,3257,1,6,67,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(276,NULL,'2027-11-01','231092','45.9',8,'2026-06-02',197,3258,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(277,NULL,'2026-01-01','TF-3066','16.9',85,'2026-06-02',247,2062,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(278,NULL,'2027-04-01','UL25K1307','14.2',494,'2026-06-02',248,3259,1,6,42,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(279,NULL,'2027-03-01','F24011001A','48.94',22,'2026-06-02',249,3260,1,6,70,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(280,NULL,'2029-02-01','S8NO545','5.523',107,'2026-06-02',164,3261,1,6,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(281,NULL,'2028-08-01','GA00460','12.72',12,'2026-06-02',164,3262,1,6,67,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(282,NULL,'2027-11-01','SA61356','40.31',8,'2026-06-02',164,3263,1,6,67,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(283,NULL,'2027-02-01','E240301','3220.0',2,'2026-06-02',250,2070,1,6,43,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(284,NULL,'2027-10-01','GTG33886A','6.504',50,'2026-06-20',174,3264,1,6,37,40,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(285,NULL,'2026-08-01','250166A','15.9',50,'2026-06-02',251,3265,1,6,49,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(286,NULL,'2027-09-01','EDA2504','56.156',155,'2026-06-02',252,3266,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(287,NULL,NULL,'0','0',1,'2026-06-02',176,3267,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(288,NULL,'2029-11-01','G25L010826','399.0',5,'2026-06-02',176,3268,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(289,NULL,'2029-08-01','G251010808','399.0',3,'2026-06-02',176,3269,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(290,NULL,'2028-09-01','23K0811','261.0',2,'2026-06-02',176,3270,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(291,NULL,'2029-07-01','G24H011076','280.0',2,'2026-06-02',176,3271,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(292,NULL,'1930-03-01','G250010566','190.0',1,'2026-06-02',176,3272,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(293,NULL,'2027-09-01','199','205.0',15,'2026-06-02',253,3273,1,6,71,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(294,NULL,'2028-01-01','T120B26','6.806',234,'2026-06-02',246,3274,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(295,NULL,'2027-05-01','MGR-128','123.75',2,'2026-06-02',254,3275,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(296,NULL,'2027-08-01','MGR-277','123.75',2,'2026-06-02',254,3276,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(297,'2025-01-25','2026-01-25','0','0.0',0,'2026-06-17',255,3277,189,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(298,'2025-01-11','2027-06-10','51358','74.62',15,'2026-06-17',256,3278,189,6,36,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(299,'2025-01-04','2028-03-01','GC25264A','15.7',8,'2026-06-17',257,3279,189,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(300,'2024-11-02','2027-10-01','PIGAM216','31.61',11,'2026-06-17',258,3280,189,6,55,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(301,NULL,'2027-04-01','2215237','1778.0',1,'2026-06-02',259,2092,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(302,NULL,'2027-01-01','APK0012','13.32',8,'2026-06-02',212,3281,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(303,'2022-12-04','2027-12-07','5051','310.0',9,'2026-06-17',260,3282,189,6,72,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(304,NULL,'2029-08-01','v4008','374.0',9,'2026-06-02',260,3283,1,6,72,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(305,NULL,'2029-04-01','v4068','282.0',1,'2026-06-02',260,3284,1,6,72,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(306,NULL,'2027-11-01','VAC7011','88.13',17,'2026-06-02',261,2102,1,6,52,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(307,NULL,'2028-06-01','RM12506','1078.0',3,'2026-06-02',210,3285,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(308,NULL,'2027-01-01','GN-158A','2436.56',17,'2026-06-02',262,3286,1,6,40,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(309,NULL,'2027-11-01','C59910','4.47',92,'2026-06-02',263,3287,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(310,'2025-02-10','2027-10-01','5231C59920','6.442',5,'2026-06-02',264,3288,1,6,43,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(311,NULL,'2027-06-01','382306','6.453',100,'2026-06-02',263,3289,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(312,NULL,'1931-01-01','G26B0360','5.0',440,'2026-06-02',176,3290,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(313,NULL,'2027-12-01','K6011','540.0',5,'2026-06-02',265,2109,1,6,41,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(314,NULL,'2027-01-01','W23336','200.0',5,'2026-06-02',151,3291,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(315,NULL,'2027-10-01','W25331','360.0',5,'2026-06-02',151,3292,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(316,NULL,'1931-02-01','OD260306','36.56',19,'2026-06-02',266,3293,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(317,NULL,'2027-02-01','24400089','6.583',210,'2026-06-02',205,3294,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(318,NULL,'2027-06-01','FEST2601','17.7',259,'2026-06-02',251,2114,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(319,NULL,'2029-05-01','G24F010505','64.0',10,'2026-06-02',176,2115,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(320,NULL,'2029-01-01','G24B101930','57.19',4,'2026-06-02',176,2116,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(321,NULL,'2026-05-01','FFGT2401','19.9',21,'2026-06-02',267,2118,1,6,54,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(322,NULL,'2027-12-01','LC01249','190.0',12,'2026-06-02',241,3295,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(323,NULL,'2027-03-01','FZIPC505','510.0',3,'2026-06-02',152,3296,1,6,56,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(324,NULL,'2026-12-01','FC2PC505','340.78',3,'2026-06-02',152,2122,1,6,56,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(325,NULL,'2028-01-01','FSL26B03','23.7',2,'2026-06-02',268,3297,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(326,NULL,'2027-12-01','FLD26A17','42.84',13,'2026-06-02',268,3298,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(327,NULL,'2027-11-01','FDL25N14','28.19',11,'2026-06-02',268,2123,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(328,NULL,'2027-11-01','LTA-51023I','11.06',175,'2026-06-02',241,3299,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(329,'2025-04-12','2027-06-01','MTTA0291','13.25',66,'2026-06-02',214,3300,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(330,NULL,NULL,'','0',1,'2026-06-02',188,3301,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(331,NULL,'2026-05-01','Z05BU24059','18.04',30,'2026-06-02',188,3302,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(332,NULL,'2027-12-01','UHT26029A','44.344',67,'2026-06-02',214,3303,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(333,NULL,'2027-08-01','DCXC5018','10.322',8,'2026-06-02',269,3304,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(334,NULL,'2028-04-01','ABL0177','22.05',11,'2026-06-02',212,3305,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(335,NULL,'2027-04-01','FGA24009','916.0',43,'2026-06-02',212,3306,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(336,NULL,'2028-05-01','FLA25033','2.308',47,'2026-06-02',212,3307,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(337,NULL,'2028-04-01','ABL0177','22.05',20,'2026-06-02',212,3308,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(338,NULL,'2027-11-01','325','11.57',23,'2026-06-02',270,3309,1,6,52,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(339,NULL,'2028-01-01','2DF1N003','31.195',64,'2026-06-02',211,3310,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(340,NULL,'2027-02-01','FZEC0037','45.35',14,'2026-06-02',174,3311,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(341,NULL,'2026-11-01','FIR007E','57.19',5,'2026-06-02',271,2150,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(342,NULL,'1930-10-01','2GC251075A','50.525',26,'2026-06-02',272,3312,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(343,NULL,'2027-04-01','GD25339A','570.0',4,'2026-06-02',272,3313,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(344,NULL,'2027-11-01','252178','19.95',89,'2026-06-02',273,2154,1,6,54,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(345,NULL,'2027-06-01','TLM0035','26.57',80,'2026-06-02',212,3314,1,6,73,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(346,NULL,NULL,'0','0',1,'2026-06-02',182,3315,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(347,NULL,'1930-06-01','P25G07','184.0',10,'2026-06-02',274,2161,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(348,NULL,'2029-06-01','P24G10','153.75',1,'2026-06-02',274,2158,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(349,NULL,'2029-06-01','P24G10','137.0',5,'2026-06-02',274,2159,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(350,NULL,'1901-03-05','P25G02','153.75',14,'2026-06-02',274,2160,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(351,NULL,'2028-10-01','5SN2411','379.25',2,'2026-06-02',164,2163,1,6,36,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(352,NULL,'2027-11-01','6SA0167','12.88',34,'2026-06-02',164,3316,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(353,NULL,'2027-11-01','LLD-10339C','101.13',6,'2026-06-02',175,3317,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(354,NULL,'2028-02-01','5NG009','6.006',80,'2026-06-02',256,3318,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(355,NULL,'2027-02-01','SXG1885A','97.5',1,'2026-06-02',174,3319,1,6,41,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(356,NULL,'2027-01-01','CCP25077','115.68',1,'2026-06-02',275,3320,1,6,74,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(357,NULL,'2027-05-01','Y017808','3927.0',1,'2026-06-02',276,3321,1,6,51,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(358,NULL,'2026-12-01','GRA25003','54.88',1,'2026-06-02',212,3322,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(359,NULL,'2027-11-01','MTG1233','300.0',20,'2026-06-02',179,2180,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(360,NULL,'2027-09-01','2518207E','1.814',100,'2026-06-02',182,3323,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(361,NULL,NULL,'0','0',1,'2026-06-02',182,3324,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(362,NULL,'2027-12-01','GTH0022A','15.812',142,'2026-06-02',174,2186,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(363,NULL,'2027-11-01','SGCN-01','24.666',91,'2026-06-02',253,3325,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(364,NULL,'2027-12-01','IB00090A','1.249',60,'2026-06-02',277,3326,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(365,NULL,'2027-08-01','TA0640A','40.012',58,'2026-06-02',277,3327,1,6,36,36,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(366,NULL,'2027-12-01','TA1314A','10.658',68,'2026-06-02',277,3328,1,6,36,36,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(367,NULL,NULL,'DPAD02','34.0',52,'2026-06-02',228,3329,1,6,36,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(368,NULL,'2026-10-01','EY4303019','69.5',33,'2026-06-02',223,3330,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(369,NULL,'2027-05-01','GS-0550','390.0',1,'2026-06-02',278,3331,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(370,NULL,'2027-12-01','TP0336001','2.662',170,'2026-06-02',279,3332,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(371,NULL,'2027-05-01','SSL0074','3.947',302,'2026-06-02',212,3333,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(372,NULL,NULL,'0','0',1,'2026-06-02',212,3334,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(373,NULL,'2027-10-01','E2402918','4.14',5,'2026-06-02',280,3335,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(374,NULL,'2027-10-01','YT2922','5.6',224,'2026-06-02',281,3336,1,6,75,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(375,NULL,'2027-11-01','YT3184F','7.4',329,'2026-06-02',281,2206,1,6,75,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(376,NULL,'1930-10-01','25K2015','91.0',125,'2026-06-02',282,2208,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(377,NULL,'2029-10-01','A1526','140.0',195,'2026-06-02',282,3337,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(378,NULL,'1930-12-01','26A2019M','91.0',80,'2026-06-02',282,2209,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(379,NULL,'2028-02-01','C1526','140.0',119,'2026-06-02',282,3338,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(380,NULL,'1930-11-01','25L5201M','91.0',57,'2026-06-02',282,2210,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(381,NULL,'1930-11-01','25L5197','91.0',85,'2026-06-02',282,2211,1,6,46,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(382,NULL,'2027-12-01','269412','36.0',5,'2026-06-02',283,3339,1,6,63,34,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(383,NULL,'2028-11-01','R0375027','3.97',121,'2026-06-02',279,3340,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(384,NULL,'2026-08-01','SIBP29435C','16.9',8,'2026-06-02',247,3341,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(385,NULL,'2028-02-01','GDP2602','8.344',261,'2026-06-02',228,3342,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(386,NULL,'2028-09-01','S25080','154.02',14,'2026-06-02',230,3343,1,6,55,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(387,NULL,'2026-07-01','HMA23069','0',1,'2026-06-02',212,3344,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(388,NULL,'2027-08-01','EL00125036','290.75',57,'2026-06-02',284,3345,1,6,54,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(389,NULL,'2028-01-01','AT-17648','61.218',40,'2026-06-02',285,2227,1,6,76,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(390,NULL,'2026-11-01','HNP2422','187.9',2,'2026-06-02',286,3346,1,6,59,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(391,NULL,'2027-10-01','BS250169','20.48',66,'2026-06-02',287,3347,1,6,41,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(392,NULL,'2027-09-01','EK574067','876.0',4,'2026-06-02',223,3348,1,6,56,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(393,NULL,'2028-05-01','HRBS0040','14.59',60,'2026-06-02',288,3349,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(394,NULL,'2027-07-01','HRCS003','32.34',65,'2026-06-02',288,3350,1,6,44,41,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(395,NULL,'2028-06-01','239','178.1',4,'2026-06-02',288,3351,1,6,44,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(396,NULL,'2026-08-01','PD-0517A','63.32',1,'2026-06-02',289,3352,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(397,NULL,'2027-05-01','PD-0565A','125.43',3,'2026-06-02',289,3353,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(398,NULL,'2027-03-01','DGT-1565A','12.434',22,'2026-06-02',289,3354,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(399,NULL,NULL,'0','0',1,'2026-06-02',289,3355,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(400,NULL,'2027-09-01','CD-0920A','51.91',1,'2026-06-02',289,3356,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(401,NULL,'2027-10-01','CD-0937A','164.06',5,'2026-06-02',289,3357,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(402,NULL,'2027-04-01','CT-0943A','18.375',1,'2026-06-02',289,3358,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(403,NULL,NULL,'0','0',1,'2026-06-02',289,3359,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(404,NULL,'2027-01-01','25S1CLA042','115.0',1,'2026-06-02',289,3360,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(405,NULL,'2026-10-01','HHK24003','12.0',30,'2026-06-02',289,3361,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(406,NULL,'2028-07-01','HHM25005','15.375',73,'2026-06-02',289,3362,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(407,NULL,NULL,'0','0',1,'2026-06-02',289,3363,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(408,NULL,NULL,'0','0',1,'2026-06-02',289,3364,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(409,NULL,'2026-08-01','HHL24010','109.0',2,'2026-06-02',289,3365,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(410,NULL,'2026-12-01','HC149','209.0',1,'2026-06-02',289,3366,1,6,41,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(411,NULL,'2028-07-01','B592501058','125.0',1,'2026-06-02',278,3367,1,6,77,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(412,NULL,'2026-12-01','25AG028','120.94',1,'2026-06-02',290,3368,1,6,35,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(413,NULL,'2028-05-01','B-70969','181.39',2,'2026-06-02',290,3369,1,6,43,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(414,NULL,'2028-02-01','B53278','181.39',3,'2026-06-02',290,3370,1,6,43,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(415,NULL,'2027-02-01','AQL0018','47.01',3,'2026-06-02',212,3371,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(416,'2025-04-06','2027-10-01','HP200','18.75',6,'2026-06-02',291,3372,1,6,63,42,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(417,NULL,'2027-12-01','ML26081','62.27',6,'2026-06-02',292,3373,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(418,'2025-02-01','2027-09-01','EMV252592','65.625',318,'2026-06-02',293,3374,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(419,NULL,'2028-10-01','821CE6808','3735.0',1,'2026-06-02',294,3375,1,6,51,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(420,NULL,'2028-07-01','5191122','12.4',14,'2026-06-02',295,2267,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(421,NULL,'2027-11-01','SIBP25811A','11.859',99,'2026-06-02',247,3376,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(422,NULL,'2027-01-01','AJPO2BFA','194.53',1,'2026-06-02',247,3377,1,6,43,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(423,NULL,'1930-10-01','547335G','130.94',4,'2026-06-02',296,3378,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(424,NULL,'2029-08-01','24H04G8252','232.0',36,'2026-06-02',297,3379,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(425,NULL,'2029-11-01','45153','106.0',134,'2026-06-02',297,3380,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(426,NULL,'2029-07-01','C12G8251','217.5',37,'2026-06-02',297,3381,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(427,NULL,'2029-07-01','24G27G8345','217.5',13,'2026-06-02',297,3382,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(428,NULL,'1930-12-01','00432','134.0',23,'2026-06-02',296,2281,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(429,NULL,'1930-12-01','G26A0203','202.5',32,'2026-06-16',176,2282,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(430,'2025-04-16','2027-08-01','TH00751','127.97',1,'2026-06-02',293,2284,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(431,NULL,'2026-04-01','T301034','24.05',8,'2026-06-02',277,3383,1,6,41,36,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(432,NULL,'2027-01-01','5BA0822','13.12',48,'2026-06-02',164,3384,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(433,NULL,'2028-11-01','25420099','10.406',99,'2026-06-02',224,2289,1,6,43,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(434,NULL,'2027-05-01','67240096','21.65',50,'2026-06-02',201,2291,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(435,NULL,'2026-10-01','67240112','12.563',5,'2026-06-02',201,3385,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(436,NULL,'2028-02-01','A26AM099','38.91',38,'2026-06-02',280,3386,1,6,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(437,NULL,'2027-07-01','ARM2511A','6.188',100,'2026-06-02',298,3387,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(438,NULL,'2027-10-01','D41BY012','250.3',5,'2026-06-02',181,3388,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(439,NULL,'2028-07-01','A61BY038','116.56',6,'2026-06-02',181,3389,1,6,35,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(440,NULL,'2027-09-01','A5139-B','210.93',26,'2026-06-02',200,3390,1,6,52,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(441,NULL,'2027-02-01','250171','8400.0',2,'2026-06-02',299,3391,1,6,79,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(442,NULL,NULL,'0','0',1,'2026-06-02',300,2312,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(443,NULL,NULL,'0','0',1,'2026-06-02',300,2311,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(444,NULL,'2027-08-01','MFT251040','11.0',235,'2026-06-02',301,3392,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(445,NULL,'2028-12-01','GKG2274A','458.44',3,'2026-06-02',174,2316,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(446,NULL,'2027-10-01','SIG2284A','16.184',83,'2026-06-02',174,2320,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(447,NULL,'2026-12-01','GTG0049A','104.95',5,'2026-06-02',174,3393,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(448,NULL,'2027-06-01','B5MF04','329.0',3,'2026-06-02',256,3394,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(449,NULL,'2028-07-01','AQT25AA55','10.0',300,'2026-06-02',302,3395,1,6,55,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(450,NULL,'2027-04-01','DG55260090','517.5',5,'2026-06-02',303,3396,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(451,NULL,'2029-03-01','MM56D1126','2380.0',3,'2026-06-02',151,2328,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(452,NULL,'2028-04-01','5P13608','0.961',70,'2026-06-02',256,3397,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(453,NULL,'2028-08-01','2125179','12.76',7,'2026-06-02',256,3398,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(454,NULL,'1931-02-01','44303LPZA','9.5',482,'2026-06-02',203,2332,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(455,'2026-06-04','1931-02-01','44303LPZA','9.5',482,'2026-06-02',203,2333,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(456,NULL,NULL,'OFS','0',1,'2026-06-02',304,3399,1,6,55,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(457,NULL,NULL,'OFS','0',1,'2026-06-02',305,3400,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(458,NULL,'2027-01-01','EHAT-0837','15.65',232,'2026-06-02',301,3401,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(459,NULL,'2026-06-02','0','0',1,'2026-06-02',301,3402,1,6,40,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(460,NULL,'2029-03-01','NM0821626','168.0',6,'2026-06-02',151,3403,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(461,NULL,'2027-02-01','UTH25424','199.0',2,'2026-06-02',189,3404,1,6,52,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(462,NULL,'2028-04-01','UHT25219C','122.0',15,'2026-06-02',306,3405,1,6,52,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(463,NULL,'2027-06-01','UHT25332B','130.0',7,'2026-06-02',307,3406,1,6,42,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(464,NULL,'2028-09-01','MEC0004','56.41',48,'2026-06-02',178,3407,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(465,NULL,'1930-10-01','11251122','199.69',9,'2026-06-02',178,3408,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(466,NULL,'2028-09-01','5SD0418','9.606',49,'2026-06-02',164,3409,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(467,NULL,'2027-10-01','5SA2382','1.417',30,'2026-06-02',164,3410,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(468,NULL,'2026-09-01','5SN1178','264.87',1,'2026-06-02',164,2350,1,6,36,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(469,NULL,'2027-06-01','5L80629','6.12',35,'2026-06-02',164,3411,1,6,36,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(470,NULL,NULL,'OFS','0',1,'2026-06-02',164,3412,1,6,36,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(471,NULL,'2027-11-01','5A61426','33.23',5,'2026-06-02',164,2352,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(472,NULL,'2027-11-01','LEVO76','45.0',12,'2026-06-02',308,3413,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(473,'2025-08-25','2027-10-01','1250166B','131.14',3,'2026-06-02',309,3414,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(474,NULL,'2027-01-01','A25LV021','35.91',2,'2026-06-02',224,3415,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(475,NULL,'2028-01-01','LBR26175','1.646',465,'2026-06-02',212,2358,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(476,NULL,'2027-02-01','2GT24183B','37.406',27,'2026-06-02',310,3416,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(477,NULL,'2026-10-01','GTF3283','12.484',46,'2026-06-02',174,3417,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(478,NULL,'2028-08-01','11251079','220.0',1,'2026-06-02',311,2361,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(479,NULL,'2027-11-01','111241685','135.0',5,'2026-06-02',311,3418,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(480,NULL,'2027-11-01','5353C84204','6.329',127,'2026-06-02',312,3419,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(481,NULL,'2027-11-01','5350C84205','21.785',145,'2026-06-02',312,2365,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(482,NULL,'2027-08-01','M25703002','12.2',121,'2026-06-02',313,2319,1,6,42,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(483,NULL,'2028-08-01','34L25060','2.432',213,'2026-06-02',314,3420,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(484,NULL,'2026-11-01','SIE2937A','3.864',10,'2026-06-02',174,3421,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(485,NULL,'2026-09-01','EBC103124','3527.42',3,'2026-06-02',315,3422,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(486,NULL,'2026-09-01','KLL04022','18.12',6,'2026-06-02',316,2372,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(487,NULL,'2027-05-01','44396','11.8',8,'2026-06-02',170,3423,1,6,80,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(488,NULL,'2028-02-01','2FY8M004','11.576',55,'2026-06-02',290,3424,1,6,80,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(489,NULL,'2027-03-01','KPNP483149','786.56',2,'2026-06-02',170,3425,1,6,39,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(490,NULL,'2026-09-01','SU1478485','33.6',5,'2026-06-02',170,3426,1,6,39,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(491,NULL,'2027-10-01','KM144315','33.3',8,'2026-06-02',170,3427,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(492,NULL,'2027-11-01','L1736','34.58',60,'2026-06-02',170,3428,1,6,39,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(493,NULL,'2027-11-01','KM238073','58.2',1,'2026-06-02',170,3429,1,6,39,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(494,'2025-07-01','2027-04-01','L135','156.56',10,'2026-06-02',224,3430,1,6,39,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(495,NULL,'2026-09-01','A24079','19.32',2,'2026-06-02',230,3431,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(496,NULL,'2027-11-01','B253833','18.42',180,'2026-06-02',287,3432,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(497,NULL,'2026-12-01','R25110103A','36.5',85,'2026-06-02',160,2390,1,6,81,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(498,NULL,'2027-10-01','18254605A','123.46',1,'2026-06-02',229,3433,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(499,'2025-04-18','2027-03-01','MAC25122','379.95',3,'2026-06-02',229,3434,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(500,NULL,'2026-09-01','B24J052A','11.9',35,'2026-06-02',317,3435,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(501,NULL,'2027-01-01','KP370203','10.88',63,'2026-06-02',170,3436,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(502,NULL,'2028-09-01','2731','22.5',9,'2026-06-02',318,3437,1,6,48,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(503,NULL,'2027-06-01','2540','60.0',2,'2026-06-02',318,3438,1,6,48,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(504,NULL,NULL,'0','0',1,'2026-06-02',318,3439,1,6,48,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(505,NULL,'2027-06-01','VH-T17576','20.378',206,'2026-06-02',319,3440,1,6,42,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(506,NULL,'2026-07-01','24253','13.9',40,'2026-06-02',320,2398,1,6,54,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(507,NULL,'2027-09-01','PAOT-0009','9.6',12,'2026-06-02',321,2400,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(508,NULL,'2027-12-01','SIH0041A','62.0',30,'2026-06-02',174,3441,1,6,41,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(509,NULL,NULL,'0','0',1,'2026-06-02',164,3442,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(510,'2025-05-06','2027-06-01','ZLP4AD5016','103.64',12,'2026-06-02',188,3443,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(511,NULL,'2027-05-01','ZLE3BD5012','150.38',2,'2026-06-02',188,3444,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(512,'2024-06-23','2027-06-01','Z06AD25023','119.45',6,'2026-06-02',188,3445,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(513,NULL,'2028-02-01','MDNT2601','31.0',300,'2026-06-02',322,2405,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(514,NULL,'2029-11-01','M324002','250.0',4,'2026-06-02',250,3446,1,6,81,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(515,NULL,'2028-02-01','VH-T17841','32.0',105,'2026-06-02',323,3447,1,6,42,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(516,NULL,'2026-06-02','0','0',1,'2026-06-02',228,3448,1,6,82,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(517,NULL,NULL,'0','0',1,'2026-06-02',324,3449,1,6,63,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(518,'2027-05-01','2029-07-01','25149','2.3',1,'2026-06-02',324,3450,1,6,80,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(519,'2024-10-01','2026-11-01','MNWL-03','33.55',1,'2026-06-02',325,2412,1,6,80,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(520,NULL,'2029-01-01','ZAGQ2618','4.31',73,'2026-06-02',326,3451,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(521,NULL,NULL,'0','0',1,'2026-06-02',326,3452,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(522,NULL,'2027-12-01','SZ2604','61.88',14,'2026-06-02',326,3453,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(523,NULL,'2027-11-01','ZCE2535','48.75',4,'2026-06-02',326,3454,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(524,NULL,'2027-07-01','HMU2529','2.156',67,'2026-06-02',326,3455,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(525,NULL,'2027-09-01','HK2467','3.1',20,'2026-06-02',326,3456,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(526,NULL,'2028-09-01','HMP2538','3.562',100,'2026-06-02',326,3457,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(527,NULL,'2028-12-01','YMS2610','85.156',35,'2026-06-02',326,3458,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(528,NULL,'2027-09-01','VAB25162','135.93',4,'2026-06-02',327,3459,1,6,41,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(529,NULL,'2027-09-01','EFJ34E','21.356',100,'2026-06-02',328,3460,1,6,69,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(530,NULL,'2026-12-01','FSG25092','23.136',145,'2026-06-02',329,3461,1,6,59,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(531,NULL,'2028-11-01','CUE72AEA','6.662',100,'2026-06-02',330,3462,1,6,51,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(532,NULL,'2027-02-01','MPC250841','919.39',4,'2026-06-02',327,3463,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(533,NULL,'2027-07-01','806SPAJ5','15.92',30,'2026-06-02',331,3464,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(534,NULL,'2027-04-01','504CPAK4','10.0',30,'2026-06-02',331,3465,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(535,NULL,'2028-06-01','2C29M010','0',120,'2026-06-02',290,3466,1,6,63,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(536,NULL,'2027-11-01','PGX5026','84.72',4,'2026-06-02',304,2434,1,6,55,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(537,NULL,'2027-11-01','X07G25015','149.0',17,'2026-06-02',304,3467,1,6,55,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(538,NULL,'2028-01-01','26060','31.59',3,'2026-06-02',170,3468,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(539,NULL,'2026-05-01','APAR105','130.31',1,'2026-06-02',332,3469,1,6,59,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(540,NULL,'2029-09-01','G241010848','188.0',1,'2026-06-02',176,2439,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(541,NULL,'2027-11-01','FMS4H25090','247.0',5,'2026-06-02',333,3470,1,6,83,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(542,NULL,'2028-01-01','FMSHR26022','230.0',10,'2026-06-02',334,3471,1,6,83,24,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(543,NULL,'2027-03-01','MTIAK502','334.3',13,'2026-06-02',334,3472,1,6,74,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(544,NULL,'2027-01-01','BLB240095','36.5',5,'2026-06-02',327,3473,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(545,NULL,'2028-08-01','BL1250362','67.1',13,'2026-06-02',327,3474,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(546,NULL,'2027-12-01','BLA2500009','113.76',10,'2026-06-02',327,2450,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(547,NULL,'2027-08-01','IR2610301C','9.81',391,'2026-06-02',241,2451,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(548,'2025-06-01','2027-07-01','TU04CNB','4103.25',1,'2026-06-02',335,2453,1,6,59,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(549,'2025-05-01','2027-08-01','122D','117.19',2,'2026-06-02',336,2455,1,6,52,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(550,'2025-02-05','2027-09-01','Z01AW25005','200.5',17,'2026-06-02',188,3475,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(551,'2025-02-02','2027-06-01','Z01AU25002','72.2',12,'2026-06-02',188,3476,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(552,'2025-03-01','2027-03-01','ZO1AV25001','121.45',12,'2026-06-02',188,3477,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(553,NULL,'1930-05-01','T5084','997.0',12,'2026-06-02',337,3478,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(554,'2025-07-07','2027-05-01','4SN1227','18.412',62,'2026-06-02',164,3479,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(555,'2026-03-05','2028-01-01','5SN1422','10.92',70,'2026-06-02',164,3480,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(556,'2026-02-04','2028-04-01','5SN1136','13.686',65,'2026-06-02',164,3481,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(557,'2026-02-01','2026-11-01','GTF3747','15.35',29,'2026-06-02',174,3482,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(558,'2026-05-01','2028-06-01','GTH0392A','24.562',150,'2026-06-02',174,3483,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(559,'2025-02-05','2027-04-01','R2583401E','14.67',87,'2026-06-02',308,3484,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(560,'2025-02-05','2027-11-01','TL25-090','10.2',100,'2026-06-02',308,3485,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(561,NULL,NULL,'0','0',1,'2026-06-02',308,3486,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(562,'2026-02-01','2028-11-01','AP-301','47.0',23,'2026-06-02',174,3487,1,6,84,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(563,'2025-02-05','2027-04-01','DFG3177A','7.851',75,'2026-06-02',338,3488,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(564,'2024-04-06','2027-04-01','DFG7556A','99.88',5,'2026-06-02',212,3489,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(565,'2024-04-01','2026-10-01','BT0325050C','25.219',1,'2026-06-02',338,3490,1,6,42,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(566,'2026-02-02','2028-02-01','2520098E','267.35',4,'2026-06-02',164,3491,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(567,'2024-05-04','2026-11-01','4SB1323','35.51',44,'2026-06-02',164,3492,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(568,'2025-05-10','2027-04-01','GO25132','149.06',1,'2026-06-02',339,3493,1,6,56,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(569,'2025-04-15','2027-05-01','M022','91.88',4,'2026-06-02',340,3494,1,6,55,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(570,NULL,NULL,'OFS','0',1,'2026-06-02',340,3495,1,6,55,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(571,'2025-08-05','2027-09-01','V350474','637.4',2,'2026-06-02',170,3496,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(572,'2025-05-12','2027-01-01','MDVT2502','28.475',110,'2026-06-02',313,3497,1,6,42,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(573,'2027-01-01','2029-01-01','TB00226','17.709',100,'2026-06-02',185,3498,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(574,'2025-10-11','2027-11-01','ECI-51201C','328.0',40,'2026-06-02',185,3499,1,6,40,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(575,'2024-05-17','2026-10-01','1238074','64.5',10,'2026-06-02',170,3500,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(576,'2025-08-05','2027-09-01','NT1525','384.0',4,'2026-06-02',341,3501,1,6,84,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(577,'2025-08-14','2028-09-01','5302C84601','100.39',3,'2026-06-02',342,3502,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(578,'2025-05-12','2027-11-01','FHB1321','11.4',62,'2026-06-02',343,3503,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(579,'2025-02-23','2027-10-01','216M012','19.115',20,'2026-06-02',344,3504,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(580,NULL,'1930-10-01','G25K040265','667.05',2,'2026-06-02',176,3505,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(581,NULL,'1930-11-01','G25L040189','662.0',5,'2026-06-02',176,3506,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(582,'2027-05-30','2029-07-01','33414S','5.2',11,'2026-06-02',345,2513,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(583,'2027-02-14','2029-08-01','38444L','3.3',3,'2026-06-02',345,2517,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(584,'2027-05-10','2029-11-01','02562R','2.66',100,'2026-06-02',345,2515,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(585,NULL,'1930-12-01','04632R','2.66',316,'2026-06-02',345,2516,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(586,'2027-05-12','2029-12-01','G26A010369','58.25',12,'2026-06-02',176,2519,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(587,NULL,'1930-11-01','G25L010128','56.06',6,'2026-06-02',176,3507,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(588,'2025-05-03','2027-10-01','AUM15ABA','20.15',40,'2026-06-02',346,2527,1,6,39,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(589,'2025-06-01','2027-09-01','AUM04ADA','9.257',36,'2026-06-02',347,3508,1,6,39,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(590,NULL,NULL,'0','0',1,'2026-06-02',346,3509,1,6,39,36,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(591,'2026-02-01','2028-03-01','BLNP291040','22.31',11,'2026-06-02',346,3510,1,6,39,36,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(592,'2025-05-06','2027-01-01','SP1025091','111.5',4,'2026-06-02',348,3511,1,6,39,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(593,'2025-08-01','2027-11-01','NA338074','69.1',2,'2026-06-02',346,3512,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(594,'2025-05-16','2027-05-01','5346E03701','20.42',19,'2026-06-02',349,3513,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(595,'2025-05-04','2027-06-01','6012C83907','1.485',792,'2026-06-02',350,3514,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(596,'2025-10-10','2027-01-01','MN1TL502','23.135',205,'2026-06-02',351,3515,1,6,74,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(597,'2024-08-05','2026-10-01','SIF250BA','5.662',30,'2026-06-02',352,3516,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(598,'2024-06-01','2026-08-01','CNE24004','2.126',12,'2026-06-02',353,3517,1,6,55,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(599,'2025-06-06','2028-12-01','KCG26001','3.88',90,'2026-06-02',353,3518,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(600,'2026-05-01','2028-09-01','AKG25014','12.163',80,'2026-06-02',353,3519,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(601,'2025-04-06','2027-07-01','N199','192.0',14,'2026-06-02',170,3520,1,6,37,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(602,'2026-06-12','2028-08-01','32029041','85.0',2,'2026-06-02',354,3521,1,6,36,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(603,'2025-02-05','2027-12-01','VGT260179','8.6',100,'2026-06-02',164,3522,1,6,63,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(604,'2025-07-04','2027-12-01','STC26008','9.739',31,'2026-06-02',164,3523,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(605,'2024-06-10','2028-04-01','HNX870525','3.0',1,'2026-06-02',355,3524,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(606,NULL,NULL,'OFS','0',1,'2026-06-02',174,3525,1,6,59,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(607,'2025-05-01','2027-03-01','25AF0021','11.25',65,'2026-06-02',224,3526,1,6,63,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(608,'2026-05-24','2028-06-01','C131762','347.0',11,'2026-06-02',356,3527,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(609,'2026-05-04','2028-05-01','ND25008','19.066',42,'2026-06-02',357,2570,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(610,'2026-05-30','2028-05-01','ANS25174','18.7',22,'2026-06-02',316,3528,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(611,'2027-02-23','2029-02-01','1C261372','37.24',15,'2026-06-02',225,3529,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(612,'2025-05-29','2027-09-01','DN5J015','34.69',10,'2026-06-02',358,3530,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(613,NULL,NULL,'0','0',1,'2026-06-02',164,3531,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(614,'2025-01-20','2027-06-01','ML25332','68.5',1,'2026-06-02',164,3532,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(615,NULL,NULL,'0','0',1,'2026-06-02',226,3533,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(616,NULL,NULL,'OFS','0',1,'2026-06-02',229,3534,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(617,'2026-05-01','2028-05-01','18252353A','16.809',114,'2026-06-02',229,3535,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(618,'2026-05-05','2028-07-01','5SD0379','11.05',36,'2026-06-02',164,3536,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(619,'2026-05-02','2028-07-01','5SD0386','36.461',20,'2026-06-02',164,2590,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(620,NULL,NULL,'0','0',1,'2026-06-02',164,3537,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(621,'2024-05-06','2026-08-01','A430520','190.82',4,'2026-06-02',164,3538,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(622,NULL,NULL,'0','0',1,'2026-06-02',164,2592,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(623,NULL,NULL,'0','0',1,'2026-06-02',240,3539,1,6,44,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(624,'2026-02-12','2028-12-01','AMO14CPB','2.005',1070,'2026-06-02',164,3540,1,6,48,24,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(625,NULL,'2028-02-01','MMPC9687','11.32',94,'2026-06-02',359,3541,1,6,37,24,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(626,'2025-05-05','2027-10-01','OMDC-2502','11.39',130,'2026-06-02',360,3542,1,6,85,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(627,'2025-07-02','2027-11-01','EV260023','3.061',113,'2026-06-02',361,3543,1,6,37,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(628,'2025-10-26','2027-11-01','EV260023','3.061',113,'2026-06-02',362,3544,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(629,'2025-07-12','2028-01-01','NGF-009','378.17',1,'2026-06-02',240,3545,1,6,86,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(630,'2026-06-02','2028-04-01','EM250378','306.65',5,'2026-06-02',240,3546,1,6,44,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(631,'2025-05-12','2027-12-01','EM250054','642.99',3,'2026-06-02',240,3547,1,6,44,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(632,'2024-05-26','2026-11-01','ORH2405','12.4',35,'2026-06-02',228,2612,1,6,48,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(633,'2024-05-01','2027-04-01','MACO264','31.13',5,'2026-06-02',178,3548,1,6,48,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(634,NULL,NULL,'0','0',1,'2026-06-02',226,3549,1,6,48,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(635,'2025-05-15','2027-03-01','ORL7001','78.75',5,'2026-06-02',363,3550,1,6,48,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(636,NULL,'2027-06-01','CCT260082B','17.2',85,'2026-06-02',364,3551,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(637,NULL,NULL,'0','0',1,'2026-06-02',365,3552,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(638,'2025-04-01','2027-04-01','C1430825','843.75',2,'2026-06-02',366,3553,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(639,'2026-02-06','2029-06-01','G24G040727','252.0',3,'2026-06-02',176,3554,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(640,'2027-06-08','2029-11-01','G25240239','336.0',15,'2026-06-02',176,3555,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(641,'2025-05-10','2027-09-01','G221040685','302.0',2,'2026-06-02',176,3556,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(642,'2027-02-18','2029-06-01','G24G110584','36.0',6,'2026-06-02',176,3557,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(643,NULL,'2028-12-01','80895462','33.0',1,'2026-06-02',367,3558,1,6,87,37,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(644,NULL,NULL,'0','0',1,'2026-06-02',367,3559,1,6,87,37,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(645,NULL,NULL,'0','0',1,'2026-06-02',367,3560,1,6,87,37,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(646,'2026-05-25','2029-12-01','83912165','92.0',5,'2026-06-02',367,3561,1,6,87,37,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(647,'2025-04-03','2028-04-01','25444198','8.623',29,'2026-06-02',226,2633,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(648,'2026-05-18','2028-08-01','26440857','12.85',84,'2026-06-02',226,3562,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(649,'2025-12-12','2027-05-01','CCT251049A','6.7',1,'2026-06-02',364,3563,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(650,'2025-01-10','2027-10-01','A7MTY055','53.88',47,'2026-06-02',181,2637,1,6,35,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(651,'2024-06-07','2026-07-01','WC240801','12.5',2,'2026-06-02',368,3564,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(652,'2026-05-05','2028-01-01','HWB01AAB','86.0',16,'2026-06-02',369,2646,1,6,52,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(653,'2027-05-17','2029-04-01','NM12E0926','266.0',10,'2026-06-02',370,3565,1,6,88,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(654,'2026-05-16','2028-05-01','G230620781','280.0',1,'2026-06-02',176,2649,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(655,'2025-02-24','2027-01-01','GKG0214A','330.0',1,'2026-06-02',174,3566,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(656,'2025-05-15','2028-11-01','GE2525073D','5.7',10,'2026-06-02',171,3567,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(657,'2025-01-11','2028-11-01','DGD120004AS','1.438',95,'2026-06-02',171,2653,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(658,'2025-05-01','2028-10-01','AHL0138','16.72',20,'2026-06-02',371,2656,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(659,'2024-04-03','2027-10-01','10061','407.81',5,'2026-06-02',170,3568,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(660,'2025-02-20','2027-07-01','LLD-9900B','139.69',2,'2026-06-02',372,3569,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(661,'2027-05-01','2029-02-01','106260262','234.0',4,'2026-06-02',372,3570,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(662,'2026-05-26','2028-04-01','X55Y005','51.782',14,'2026-06-02',269,3571,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(663,'2026-06-11','2028-10-01','NA247','128.3',10,'2026-06-02',373,3572,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(664,'2025-02-26','2027-03-01','2509003S','21.26',30,'2026-06-02',181,3573,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(665,'2024-02-05','2026-03-01','4P01012','123.0',11,'2026-06-02',374,3574,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(666,'2024-05-05','2026-05-01','WAPO1','49.0',13,'2026-06-02',372,3575,1,6,52,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(667,'2025-10-10','2027-01-01','5238E03703','25.78',37,'2026-06-02',349,3576,1,6,36,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(668,'2025-04-26','2027-06-01','6019E03702','25.78',37,'2026-06-02',375,3577,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(669,'2026-02-25','2028-01-01','PRIMIS','328.0',4,'2026-06-02',370,2676,1,6,84,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(670,'2025-05-15','2027-07-01','HTL0150','9.026',15,'2026-06-02',212,2677,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(671,'2025-06-01','2027-07-01','479SY2506','93.0',10,'2026-06-02',376,3578,1,6,89,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(672,'2026-05-04','2028-04-01','NM44E3125','575.0',4,'2026-06-02',370,3579,1,6,84,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(673,'2024-02-05','2026-11-01','GTF3608A','13.3',70,'2026-06-02',174,3580,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(674,'2025-05-05','2027-03-01','P25040','23.12',33,'2026-06-02',377,3581,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(675,'2026-02-27','2026-11-01','11SPL2508F','12.724',74,'2026-06-02',376,3582,1,6,61,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(676,'2025-05-01','2027-04-01','BC2511','450.0',3,'2026-06-02',376,3583,1,6,35,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(677,'2025-05-20','2027-08-01','R251364131','36.999',30,'2026-06-02',366,3584,1,6,61,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(678,'2025-09-02','2027-12-01','S500056','23.0',29,'2026-06-02',335,2690,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(679,'2026-05-09','2028-01-01','GTH0575A','4.535',64,'2026-06-02',174,2695,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(680,'2025-02-14','2028-02-01','GB0227A','462.53',11,'2026-06-02',277,3585,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(681,'2025-08-15','2027-06-01','NA00159A','267.45',23,'2026-06-02',378,3586,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(682,'2024-06-05','2026-01-01','PXT124B01','16.74',8,'2026-06-02',379,3587,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(683,'2025-05-25','2027-12-01','01011','24.0',90,'2026-06-02',380,3588,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(684,'2026-02-01','2028-01-01','N2324','19.2',107,'2026-06-02',381,3589,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(685,'2026-02-14','2028-08-01','KP1254168','15.37',12,'2026-06-02',382,3590,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(686,'2026-05-05','2028-05-01','DN125498','55.614',20,'2026-06-02',170,3591,1,6,52,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(687,'2026-02-26','2028-05-01','1485O067','404.55',9,'2026-06-02',383,3592,1,6,90,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(688,NULL,'1900-01-10','LCZ0104','10.19',13,'2026-06-02',353,3593,1,6,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(689,'2025-02-25','2027-07-01','R2578202H','14.906',5,'2026-06-02',384,3594,1,6,44,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(690,'2026-04-05','2028-02-01','ABGC26003','70.96',11,'2026-06-02',385,3595,1,6,44,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(691,'2025-05-05','2027-04-01','2521402','9.853',139,'2026-06-02',344,3596,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(692,'2026-05-25','2028-11-01','DAFF0102','5.57',200,'2026-06-02',344,3597,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(693,'2024-10-01','2027-01-01','GREJ25001','16.771',75,'2026-06-02',365,3598,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(694,'2024-05-06','2026-04-01','FHB0501','8.666',15,'2026-06-02',174,3599,1,6,63,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(695,'2026-05-01','2028-01-01','BP6368002','19.5',437,'2026-06-02',223,3600,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(696,'2025-04-06','2027-08-01','GKG1533A','45.0',29,'2026-06-02',174,2738,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(697,'2026-04-25','2028-01-01','RPOM26003','69.0',40,'2026-06-02',386,3601,1,6,62,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(698,NULL,NULL,'0','0',1,'2026-06-02',387,3602,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(699,NULL,NULL,'0','0',1,'2026-06-02',212,3603,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(700,'2027-08-05','2029-02-01','1C261566','60.35',96,'2026-06-02',246,3604,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(701,'2025-05-26','2028-05-01','RH22504','438.0',8,'2026-06-02',330,3605,1,6,68,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(702,NULL,'1930-11-01','G25L010815','1063.0',1,'2026-06-02',176,3606,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(703,NULL,'1931-11-01','G26B010353','1063.0',1,'2026-06-02',174,3607,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(704,'2024-05-27','2026-03-01','FTB0009','15.95',5,'2026-06-02',176,3608,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(705,'2026-02-26','2027-11-01','2155RO80','912.89',1,'2026-06-02',347,3609,1,6,51,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(706,'2026-05-10','2028-11-01','GTG2420A','61.406',20,'2026-06-02',388,3610,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(707,'2025-04-06','2027-02-01','PL5027','31.144',97,'2026-06-02',389,3611,1,6,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(708,'2024-09-10','2026-09-01','NO30','95.34',1,'2026-06-02',388,3612,1,6,55,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(709,'2024-04-01','2026-09-01','G2401905','81.0',2,'2026-06-02',176,3613,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(710,'2025-06-20','2027-11-01','TH0055L','342.19',4,'2026-06-02',176,2758,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(711,'2026-05-15','2028-01-01','ALD6094C','22.5',180,'2026-06-02',370,3614,1,6,55,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(712,'2026-05-06','2029-03-01','NM25D26','200.0',33,'2026-06-02',390,3615,1,6,84,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(713,'2025-02-15','2027-10-01','GC250838','9.475',65,'2026-06-02',388,3616,1,6,49,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(714,'2025-05-02','2027-07-01','SFT-064','10.266',600,'2026-06-02',364,3617,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(715,'2026-05-01','2027-06-01','5SN1670','914.73',1,'2026-06-02',391,3618,1,6,36,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(716,'2027-05-04','2029-06-01','KPNP553042','8321.3',3,'2026-06-02',170,3619,1,6,39,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(717,'2026-01-06','2027-06-01','TJ147B','7.5',303,'2026-06-02',392,3620,1,6,42,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(718,NULL,NULL,'0','0',1,'2026-06-02',344,3621,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(719,'2024-05-06','2026-06-01','BAEE0029','150.5',3,'2026-06-02',344,3622,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(720,'2025-02-01','2027-05-01','J32065','161.8',57,'2026-06-02',170,3623,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(721,'2027-02-01','2027-05-01','PLSB2406','28.233',15,'2026-06-02',330,3624,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(722,'2026-05-06','2028-07-01','25081378','64.69',12,'2026-06-02',247,3625,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(723,'2024-05-06','2026-08-01','2209CA','50.0',9,'2026-06-02',393,3626,1,6,91,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(724,'2025-04-06','2027-07-01','RDC0198','169.69',1,'2026-06-02',174,3627,1,6,41,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(725,'2026-06-01','2029-07-01','SMM151','9.432',30,'2026-06-02',394,3628,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(726,NULL,NULL,'0','0',1,'2026-06-02',228,3629,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(727,'2026-05-15','2030-09-01','250427','1359.37',3,'2026-06-02',395,2785,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(728,'2025-06-25','2027-11-01','S4967','156.0',11,'2026-06-02',327,3630,1,6,43,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(729,'2025-02-04','2027-01-01','MPB250515','178.0',1,'2026-06-02',327,2788,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(730,'2024-05-06','2026-05-01','24GCH036','214.0',3,'2026-06-03',396,3631,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(731,'2025-04-01','2027-06-01','GTG1276A','7.687',38,'2026-06-03',174,2795,1,6,69,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(732,'2026-06-05','2028-12-01','GTH0196A','12.2',387,'2026-06-03',174,3632,1,6,69,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(733,'2024-05-06','2026-11-01','GTG216A','26.0',21,'2026-06-03',174,3633,1,6,69,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(734,'2025-05-01','2027-08-01','C725009','70.31',4,'2026-06-03',316,3634,1,6,37,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(735,NULL,NULL,'0','0',1,'2026-06-03',188,3635,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(736,NULL,NULL,'0','0',1,'2026-06-03',397,2806,1,6,59,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(737,NULL,'2029-01-01','2502005','236.5',16,'2026-06-03',398,3636,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(738,'2026-05-06','1230-03-01','2504024','221.72',19,'2026-06-03',398,2807,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(739,'2027-05-16','2029-01-01','250228','236.0',2,'2026-06-03',398,3637,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(740,NULL,NULL,'0','0',1,'2026-06-03',247,3638,1,6,37,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(741,'2026-05-26','2028-12-01','AHM003','28.1',30,'2026-06-03',212,2811,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(742,'2026-02-05','2028-05-01','WHF0204','2.53',68,'2026-06-03',378,3639,1,6,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(743,'2026-02-12','2028-12-01','86315','47.0',25,'2026-06-03',236,2813,1,6,92,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(744,'2027-05-03','2029-05-01','ST8204','91.88',5,'2026-06-03',236,3640,1,6,92,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(745,'2024-05-06','2028-08-01','0925','122.0',10,'2026-06-03',236,3641,1,6,92,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(746,'2026-06-30','2028-10-01','9101-1125','351.0',9,'2026-06-03',236,3642,1,6,92,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(747,'2025-02-05','2027-12-01','STB26001','12.785',50,'2026-06-03',164,3643,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(748,'2025-05-01','2028-11-01','J215005','10.76',109,'2026-06-03',399,3644,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(749,'2024-01-12','2026-12-01','248220','55.64',8,'2026-06-03',170,3645,1,6,37,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(750,'2027-05-06','2029-02-01','N2472','295.0',4,'2026-06-03',381,3646,1,6,41,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(751,'2027-04-01','2029-01-01','N2415','199.0',9,'2026-06-03',381,3647,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(752,'2025-05-23','2026-01-01','LLD-7568','199.0',5,'2026-06-03',400,3648,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(753,'2026-06-04','2029-03-01','G25D010691','81.0',6,'2026-06-03',176,2827,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(754,'2026-02-01','1930-05-01','G25FO10659','91.0',3,'2026-06-03',155,2828,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(755,'2025-04-06','2029-04-01','G25EO10360','91.88',2,'2026-06-03',155,2829,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(756,'2024-05-06','1930-08-01','G251010357','543.0',1,'2026-06-03',372,2830,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(757,'2024-05-31','2027-09-01','25K0800','361.87',10,'2026-06-03',401,3649,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(758,NULL,NULL,'0','0',1,'2026-06-03',212,3650,1,6,37,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(759,'2024-05-06','2026-09-01','A1685031','105.8',2,'2026-06-03',401,3651,1,6,43,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(760,'2025-04-06','2029-02-01','NM14C0526','200.0',7,'2026-06-03',370,3652,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(761,NULL,'1930-11-01','091225','7.67',100,'2026-06-03',402,3653,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(762,NULL,'1930-06-01','220725','7.03',8,'2026-06-03',402,2839,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(763,'2027-05-06','2029-12-01','030125','7.03',20,'2026-06-03',402,2840,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(764,'2027-04-06','2023-06-01','28071B','5.0',87,'2026-06-03',402,2841,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(765,'2026-06-06','2028-08-01','NC110610','1200.0',2,'2026-06-03',370,3654,1,6,51,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(766,'2026-04-06','2029-02-01','NM40C0626','750.0',2,'2026-06-03',403,3655,1,6,93,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(767,'2025-04-06','2027-04-01','GTG15214','38.9',10,'2026-06-03',174,3656,1,6,63,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(768,NULL,NULL,'0','0',1,'2026-06-03',337,3657,1,6,94,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(769,'2024-05-10','1930-10-01','5M28S','51.0',75,'2026-06-03',155,3658,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(770,NULL,'1930-11-01','608105JE2','12.19',210,'2026-06-03',345,3659,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(771,'2026-05-06','2029-05-01','523013G22','9.37',9,'2026-06-03',345,2851,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(772,NULL,'1930-11-01','549252JJ1','8.66',390,'2026-06-03',345,3660,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(773,'2026-02-15','2029-06-01','530206DJE2','30.0',3,'2026-06-03',345,3661,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(774,NULL,'1930-12-01','604054SR1','9.38',400,'2026-06-03',345,3662,1,6,78,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(775,'2025-06-24','2027-04-01','Y53G','108.36',10,'2026-06-03',372,3663,1,6,41,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(776,'2025-05-06','2027-07-01','A2701324','24.49',22,'2026-06-03',404,3664,1,6,51,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(777,'2025-04-06','2028-08-01','223705525A','13.31',20,'2026-06-03',405,3665,1,6,51,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(778,'2025-05-18','2027-01-01','LTA46954E','7.827',20,'2026-06-03',247,3666,1,6,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(779,'2026-05-24','2028-05-01','25462200','42.67',12,'2026-06-03',226,3667,1,6,44,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(780,'2026-08-06','2028-03-01','25461914','18.91',12,'2026-06-03',226,3668,1,6,44,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(781,'2025-05-01','2027-11-01','25462259','10.125',30,'2026-06-03',226,3669,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(782,'2025-01-06','2027-12-01','26460148','10.443',194,'2026-06-03',226,3670,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(783,'2026-04-03','2028-12-01','18260387A','282.55',19,'2026-06-03',229,3671,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(784,'2025-04-06','2027-11-01','DY5L024','91.9',4,'2026-06-03',406,3672,1,6,56,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(785,'2024-01-06','2026-12-01','GTG0176B','137.64',1,'2026-06-03',174,3673,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(786,'2024-05-01','2026-10-01','DT05','158.1',2,'2026-06-03',316,3674,1,6,36,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(787,'2024-04-12','2027-05-01','TD250626','209.0',1,'2026-06-03',211,3675,1,6,37,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(788,'2024-04-03','2027-11-01','18240969','4.05',175,'2026-06-03',201,3676,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(789,'2026-04-03','2028-04-01','18250258','7.224',279,'2026-06-03',201,3677,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(790,'2024-04-06','2026-12-01','105Y001','2.668',38,'2026-06-03',181,3678,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(791,'2024-02-24','2027-11-01','5K5Y004','4.124',6,'2026-06-03',181,3679,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(792,'2024-05-24','2027-12-01','PAD1100','42.84',11,'2026-06-03',308,3680,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(793,'2025-04-30',NULL,'PAD1090','39.38',11,'2026-06-03',308,3681,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(794,'2026-04-03','2028-10-01','V307267','390.4',3,'2026-06-03',170,3682,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(795,'2024-04-06','2027-08-01','TB250809B','19.551',108,'2026-06-03',407,3683,1,6,95,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(796,NULL,NULL,'0','0',1,'2026-06-03',408,3684,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(797,'2024-05-06','2026-05-01','CWIAF42','50.59',1,'2026-06-03',409,3685,1,6,61,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(798,'2024-04-06','2027-10-01','10TT023','15.437',150,'2026-06-03',409,3686,1,6,61,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(799,'2024-05-13','2026-09-01','GT241947','11.813',152,'2026-06-03',410,3687,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(800,'2024-02-18','2026-12-01','GT250115','19.8',27,'2026-06-03',410,3688,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(801,'2024-04-06','2026-02-01','CCT24328C','5.8',10,'2026-06-03',410,3689,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(802,NULL,NULL,'0','0',1,'2026-06-03',277,3690,1,6,36,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(803,'2025-04-06','2028-01-01','TMH26023','168.82',5,'2026-06-03',212,3691,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(804,'2026-04-06','2028-01-01','AEM70052','189.72',3,'2026-06-03',212,3692,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(805,'2025-04-01','2027-05-01','TMJ25048','216.64',2,'2026-06-03',212,3693,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(806,'2025-04-03','2027-11-01','TML25067','217.91',2,'2026-06-03',212,3694,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(807,'2026-05-03','2028-01-01','TMB26090','185.4',3,'2026-06-03',212,3695,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(808,'2025-04-06','2027-10-01','TMC25079','187.85',1,'2026-06-03',212,2896,1,6,37,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(809,'2025-04-26','2027-12-01','TMD26061','132.0',1,'2026-06-03',212,3696,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(810,'2025-06-12','2027-12-01','CCU26001','206.37',2,'2026-06-03',212,3697,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(811,'2024-04-06','2027-12-01','CCV26003','183.97',2,'2026-06-03',212,3698,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(812,'2024-06-04',NULL,'CD-240543F','12.0',3,'2026-06-03',411,3699,1,6,41,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(813,NULL,NULL,'0','0',1,'2026-06-03',174,3700,1,6,36,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(814,'2026-02-14','2029-05-01','0625','199.0',2,'2026-06-03',236,3701,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(815,'2026-03-14','2028-10-01','TP1602','1317.0',2,'2026-06-03',236,3702,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(816,'2026-06-25','2029-09-01','ND251128','320.0',1,'2026-06-03',236,3703,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(817,'2028-01-20','2029-09-01','1025','425.0',2,'2026-06-03',236,3704,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(818,NULL,NULL,'0','0',1,'2026-06-03',412,3705,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(819,'2025-05-16','2027-11-01','P5J1116','25.18',28,'2026-06-03',316,3706,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(820,'2025-04-03','2027-09-01','SIG2274A','19.803',177,'2026-06-03',174,3707,1,6,68,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(821,'2025-08-05','2028-09-01','GTG3238A','73.22',18,'2026-06-03',413,3708,1,6,41,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(822,'2025-08-10','2027-09-01','SIG2274A','150.88',177,'2026-06-03',413,3709,1,6,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(823,'2025-06-01','2028-03-01','0135AB199','725.0',2,'2026-06-03',414,3710,1,6,90,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(824,'2024-05-24','2029-01-01','GT03035','2.531',15,'2026-06-03',293,3711,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(825,NULL,NULL,'0','0',1,'2026-06-03',269,3712,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(826,'2024-05-04','2026-08-01','H210201','2508.0',1,'2026-06-03',415,3713,1,6,96,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(827,NULL,NULL,'0','0',1,'2026-06-03',416,3714,1,6,96,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(828,NULL,NULL,'0','0',1,'2026-06-03',416,3714,1,6,96,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(829,NULL,NULL,'0','0',1,'2026-06-03',416,3715,1,6,96,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(830,NULL,NULL,'0','0',1,'2026-06-03',416,3716,1,6,96,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(831,'2025-02-15','2027-07-01','0375MA036','85.56',2,'2026-06-03',414,3717,1,6,51,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(832,'2025-02-16','2027-08-01','76C24014A','2353.45',1,'2026-06-03',417,2934,1,6,90,32,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(833,'2025-08-06','2027-02-01','JHT280','2.6',44,'2026-06-03',418,3718,1,6,68,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(834,'2025-10-06','2027-10-01','YFUN2532','35.5',15,'2026-06-03',381,3719,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(835,'2026-02-19','2028-03-01','763024D7','35.135',61,'2026-06-03',212,3720,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(836,'2026-06-06','2028-12-01','852935D7','67.75',45,'2026-06-03',212,3721,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(837,'2025-04-03','2027-05-01','EFF32F','56.94',28,'2026-06-03',216,2943,1,6,69,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(838,'2024-01-01','2027-11-01','J111503','19.71',95,'2026-06-03',419,3722,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(839,'2025-04-06','2029-01-01','ECOO3','65.0',21,'2026-06-03',370,3723,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(840,NULL,NULL,'0','0',1,'2026-06-03',181,3724,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(841,'2024-06-06','1930-12-01','G26A050045','361.0',2,'2026-06-03',176,3725,1,6,63,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(842,'2024-05-26','2027-05-01','F25010010A','57.84',212,'2026-06-03',366,2953,1,6,41,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(843,NULL,NULL,'OFS','0',1,'2026-06-03',370,3726,1,6,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(844,'2024-02-06','2026-05-01','SN31122','109.73',9,'2026-06-03',164,3727,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(845,'2025-04-03','2027-06-01','VLB24004','1.82',18,'2026-06-03',212,3728,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(846,NULL,NULL,'0','0',1,'2026-06-03',170,3729,1,6,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(847,NULL,'2026-09-01','VBT25011','19.5',20,'2026-06-03',316,3730,1,6,68,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(848,'2024-04-06','2026-10-01','BT24-4177','14.9',143,'2026-06-03',420,3731,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(849,'2025-04-06','2027-11-01','YT2960','6.6',330,'2026-06-03',421,3732,1,6,95,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(850,'2024-04-06','2027-04-01','MNT-112594','25.804',59,'2026-06-03',269,3733,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(851,'2026-04-06','2028-11-01','N2503985','14.062',22,'2026-06-03',316,2966,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(852,'2025-04-06','2027-11-01','BZD5294','882.0',2,'2026-06-03',280,2969,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(853,'2026-04-05','2028-12-01','VEB26001','27.06',27,'2026-06-03',422,3734,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(854,'2026-04-06','2028-12-01','VEA26003','14.69',117,'2026-06-03',212,3735,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(855,'2024-04-06','2026-09-01','CJ131','300.0',2,'2026-06-03',387,3736,1,6,69,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(856,NULL,NULL,'0','0',1,'2026-06-03',240,3736,1,6,37,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(857,'2024-04-02','2026-10-01','ZT24104K','7.5',20,'2026-06-03',423,3737,1,6,69,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(858,'2026-12-01','2028-12-01','80835768','45.0',6,'2026-06-03',424,3738,1,6,87,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(859,'2024-02-06','2026-12-01','80866102','102.0',1,'2026-06-03',424,3739,1,6,87,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(860,'2026-06-01','2028-01-01','80895637','28.75',3,'2026-06-03',424,3740,1,6,87,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(861,'2026-04-06','2028-01-01','80862569','51.0',1,'2026-06-03',424,3741,1,6,87,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(862,'2024-01-02','2026-04-01','80786675','64.0',2,'2026-06-03',424,2977,1,6,87,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(863,'2025-02-15','1930-06-01','T5045','888.0',9,'2026-06-03',425,3742,1,6,37,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(864,NULL,'1930-05-01','T5005','959.0',21,'2026-06-03',425,3743,1,6,87,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(865,'2025-04-15','2027-08-01','MON-260334','12.012',136,'2026-06-03',426,3744,1,6,42,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(866,'2024-12-18','2026-12-01','AOC4466','65.4',85,'2026-06-03',427,3745,1,6,40,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(867,'2025-04-06','2027-05-01','ZPWBZ25011','38.71',8,'2026-06-03',428,3746,1,6,40,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(868,'2025-05-13','2027-11-01','12580','15.0',21,'2026-06-03',429,3747,1,6,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(869,'2024-04-06','2027-05-01','VSG25020','177.08',5,'2026-06-03',430,3748,1,6,59,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(870,'2025-04-12','2027-12-01','DY0226002','6.315',74,'2026-06-03',154,3749,1,6,43,26,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(871,'2024-04-03','2026-12-01','GD0225067','62.95',4,'2026-06-03',154,3750,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(872,'2025-04-01','2027-02-01','185TVW001','6.984',30,'2026-06-03',247,3751,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(873,'2025-04-01','2027-02-01','185TVT001','8.95',50,'2026-06-03',247,3752,1,6,36,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(874,'2025-04-06','2027-09-01','GD25J-22H','93.75',9,'2026-06-03',301,3753,1,6,40,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(875,'2025-08-03','2027-10-01','0926B','7.0',1539,'2026-06-03',301,3754,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(876,'2025-05-15','2027-08-01','D45Y026','4.811',145,'2026-06-03',181,3755,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(877,'2024-04-06','2026-07-01','807GLBK4','7.175',13,'2026-06-03',280,3003,1,6,68,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(878,'2024-02-06','2026-08-01','AT24091542','7.0',637,'2026-06-03',301,3756,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(879,'2025-05-04','2027-07-01','7B250642G','19.551',612,'2026-06-03',301,3757,1,6,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(880,'2026-07-16','2028-02-01','SL26-139','257.5',5,'2026-06-03',271,3758,1,6,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(881,'2024-08-24','2026-08-01','SF5243401','43.13',4,'2026-06-03',271,3759,1,6,63,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(882,NULL,NULL,'OFS','0',1,'2026-06-03',431,3760,1,6,86,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(883,'2025-04-06','2027-07-01','NPB00270','8.45',54,'2026-06-03',178,3010,1,6,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(884,'2026-04-26','2028-01-01','80844988','45.0',9,'2026-06-03',432,3761,1,6,87,43,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(885,NULL,NULL,'OFS','0',1,'2026-06-03',291,3762,1,6,41,30,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(886,'2025-04-10','2027-10-01','AHB06ADA','16.873',987,'2026-06-03',412,3763,1,6,97,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(887,'2025-06-01','2027-07-01','ECI-50902E','145.0',154,'2026-06-03',301,3764,1,6,40,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(888,NULL,NULL,'OFS','0',1,'2026-06-03',236,3765,1,6,36,44,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(889,'2025-01-06','2027-10-01','NM1732','1.268',75,'2026-06-03',433,3766,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(890,'2027-04-15','2026-04-01','LJ6358','0.756',8,'2026-06-03',433,3767,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(891,'2026-04-06','2028-07-01','25180677','66.64',18,'2026-06-03',226,3768,1,6,44,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(892,'2024-05-14','2026-12-01','ZP50003','180.5',2,'2026-06-03',280,3769,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(893,'2024-05-15','2026-07-01','PPQAB64','24.275',15,'2026-06-03',280,3029,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(894,'2025-04-06','2027-09-01','LLD-10046','107.8',10,'2026-06-03',434,3770,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(895,NULL,NULL,'OFS','0',1,'2026-06-03',372,3771,1,6,41,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(896,'2025-04-15','2028-06-01','NA296','19.11',11,'2026-06-03',372,3772,1,6,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(897,'2025-04-06','2027-06-01','10250048','6.722',90,'2026-06-03',435,3773,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(898,'2024-06-12','2028-03-01','1025009A','16.402',30,'2026-06-03',435,3774,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(899,'2025-05-24','2028-04-01','FND0725097','13.969',108,'2026-06-03',435,3775,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(900,'2026-04-06','2028-06-01','FXT0125009','25.125',50,'2026-06-03',435,3776,1,6,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(901,'2026-01-06','2029-06-01','16J25042','544.68',1,'2026-06-03',164,3039,1,6,41,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(902,'2024-04-03','2026-10-01','ZMN2S-005','170.67',4,'2026-06-03',309,3777,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(903,NULL,NULL,'0','0',1,'2026-06-03',213,3778,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(904,'2024-06-04','2026-10-01','ZVS25164','160.17',2,'2026-06-03',213,3042,1,6,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(905,'2025-04-06','2027-05-01','ZVT25317','7.178',200,'2026-06-03',213,3779,1,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(906,NULL,NULL,'0','0',1,'2026-06-03',173,3780,1,6,44,24,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(907,'2025-01-01','2027-04-01','GKG0954A','21.612',5,'2026-06-03',174,3781,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(908,'2025-04-06','2027-04-01','ZLT24007','6.954',46,'2026-06-03',422,3782,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(909,'2024-04-16','2027-06-01','EH2414','42.18',7,'2026-06-03',372,3783,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(910,'2024-04-16','2026-12-01','ZDP2501','57.19',122,'2026-06-03',436,3784,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(911,'2025-06-13','2027-07-01','TZFOT','7.03',90,'2026-06-03',269,3060,1,6,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(912,'2025-04-03','2027-11-01','D260011','42.2',9,'2026-06-03',280,3785,1,6,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(913,'2026-05-01','2027-05-01','CK25037','120.93',1,'2026-06-03',437,3786,1,6,44,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(914,'2026-08-01','2027-08-01','ab12300','220.0',12,'2026-06-20',212,3065,1,1,98,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(915,'2026-04-26','2026-06-30','ab12300','1.0',12,'2026-06-16',146,2743,189,2,31,9,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(916,'2026-05-02','2028-01-11','AC3B531AA','1690.0',0,'2026-06-16',193,1862,189,1,51,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(917,'2025-02-08','2027-01-06','TF25198','265.17',35,'2026-06-16',195,3151,189,1,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(918,'2025-01-06','2027-01-09','25GJ17B','52.97',25,'2026-06-16',196,3152,189,1,54,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(919,'2026-01-02','2028-01-01','6T00043','25.42',13,'2026-06-16',164,3153,189,1,50,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(920,'2025-03-04','2027-01-03','5SN1031','300.2',1,'2026-06-16',164,3154,189,1,50,33,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(921,'2026-02-05','2028-01-10','45119','31.13',10,'2026-06-16',197,3155,189,1,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(922,'2025-01-08','2027-01-10','KP094054','356.7',10,'2026-06-16',197,1872,189,1,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(923,'2026-04-05','2028-01-08','VH-17841','32.0',36,'2026-06-16',198,3157,189,1,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(924,'2025-03-02','2027-01-11','Z01AG25002','53.7',7,'2026-06-16',188,3158,189,1,49,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(925,'2025-06-05','2027-01-06','Z01AH25001','65.5',27,'2026-06-16',188,1874,189,1,67,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(926,'2026-01-03','2028-01-04','30042019','29.75',3,'2026-06-16',188,3160,189,1,67,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(927,'2022-01-05','2027-02-10','GTG3661A','514.0',26,'2026-06-16',413,3161,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(928,'2025-01-10','2027-01-11','G21BY068','143.0',9,'2026-06-16',181,1880,189,1,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(929,'2025-01-05','2027-01-10','NA391','38.46',3,'2026-06-16',218,3163,189,1,50,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(930,'2025-02-10','2027-01-11','NA660','42.84',6,'2026-06-16',186,3164,189,1,50,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(931,'2025-10-06','2027-01-12','EA2605','0.95',208,'2026-06-16',218,3165,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(932,'2025-10-05','2027-01-12','NA481','30.98',5,'2026-06-16',218,1886,189,1,50,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(933,'2025-05-05','2027-01-07','LTA-49454','9.38',151,'2026-06-16',200,1888,189,1,74,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(934,'2025-03-08','2027-01-01','11240194','94.5',1,'2026-06-16',201,1890,189,1,43,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(935,'2026-01-02','2028-01-04','11250549','96.08',5,'2026-06-16',201,1891,189,1,43,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(936,'2027-03-04','2029-01-12','71260011','159.0',5,'2026-06-16',201,1895,189,1,43,34,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(937,'2025-01-05','2027-01-12','11250130','177.66',5,'2026-06-16',201,3169,189,1,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(938,'2026-06-05','2028-01-05','69250003','150.0',2,'2026-06-16',201,1896,189,1,43,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(939,'2025-05-05','2027-01-06','G45Y018','22.46',5,'2026-06-16',181,1899,189,1,35,15,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(940,'2020-01-01','2027-02-28','ARC0009','162.0',7,'2026-06-16',413,3171,189,1,50,36,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(941,'2027-06-05','2029-01-04','NM07E26','14.0',200,'2026-06-16',203,1902,189,1,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(942,'2026-01-10','2028-01-11','NM07125','10.0',96,'2026-06-16',203,1903,189,1,53,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(943,'2025-06-05','2027-01-08','CAPC491','41.33',15,'2026-06-16',204,1904,189,1,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(944,'2026-07-05','2028-01-08','FT02504G','467.81',27,'2026-06-16',413,1905,189,1,50,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(945,'2026-02-06','2028-01-12','25AV0002','111.56',12,'2026-06-16',224,1907,189,1,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(946,'2023-04-07','2025-01-08','23070572','97.1',1,'2026-06-16',224,1908,189,1,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(947,'2025-02-07','2028-01-08','25AV0069','96.56',13,'2026-06-16',224,3173,189,1,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(948,'2025-02-02','2027-01-12','F26012001A','44.49',120,'2026-06-16',206,1911,189,1,67,40,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(949,'2025-06-05','2027-01-06','L1525454','87.0',90,'2026-06-16',316,3175,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(950,'2024-01-11','2026-01-12','L1255078','104.1',32,'2026-06-16',316,3176,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(951,'2025-01-01','2027-01-02','GCTB25003','49.5',33,'2026-06-16',208,1914,189,1,67,40,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(952,'2025-06-05','2027-01-06','GUTC25048','54.94',50,'2026-06-16',208,3178,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(953,'2024-02-07','2026-01-08','LCN0900705','57.6',3,'2026-06-16',208,1916,189,1,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(954,'2025-02-05','2027-01-05','ALU02ABA','11.16',21,'2026-06-16',347,3180,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(955,'2020-01-05','2028-01-01','CND26070','7.23',203,'2026-06-16',164,3181,189,1,48,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(956,'2025-04-08','2027-01-04','C202504K','15.75',150,'2026-06-16',210,3182,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(957,'2026-01-11','2028-01-12','2KU6N004','25.71',41,'2026-06-16',211,1925,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(958,'2026-01-05','2028-01-11','KC925038','14.63',146,'2026-06-16',353,3184,189,1,55,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(959,'2025-05-05','2027-01-11','W55Y016','13.36',150,'2026-06-16',181,1930,189,1,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(960,'2025-06-11','2027-01-11','Q35Y005','10.55',125,'2026-06-16',181,3186,189,1,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(961,'2025-01-05','2027-01-04','Q25Y002','6.56',120,'2026-06-16',181,3187,189,1,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(962,'2026-10-05','2028-01-01','5SD0080','4.76',23,'2026-06-16',164,3188,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(963,'2026-11-10','2028-01-11','SSD0485','21.4',30,'2026-06-16',164,3189,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(964,'2025-10-05','2027-01-04','5B50473','10.08',96,'2026-06-16',164,1936,189,1,48,40,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(965,'2025-10-05','2027-01-04','5B50473','10.8',96,'2026-06-16',164,1936,189,6,63,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(966,'2025-01-08','2027-01-09','MBL0090','148.0',3,'2026-06-16',422,1938,189,6,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(967,'2025-10-10','2027-01-01','N5AFY002','20.74',24,'2026-06-16',181,1939,189,1,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(968,'2025-01-08','2027-01-09','CUSST23013','200.0',2,'2026-06-16',213,1941,189,1,59,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(969,'2025-07-05','2027-01-04','1000525D','111.38',6,'2026-06-16',214,1943,189,1,49,15,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(970,'2025-09-05','2027-01-06','37226003','215.0',8,'2026-06-16',327,1944,189,1,43,15,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(971,'2021-10-01','2026-01-10','EEK009F','44.4',60,'2026-06-16',216,1945,189,1,60,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(972,'2025-01-05','2027-01-04','GTG1570A','7.59',15,'2026-06-16',413,3194,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(973,'2027-06-06','2027-01-07','L1532543C','478.0',10,'2026-06-16',217,1950,189,1,67,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(974,'2024-12-05','2026-01-08','EJ2508','8.28',30,'2026-06-16',218,1951,189,1,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(975,'2025-06-05','2027-01-12','G230140586','39.0',6,'2026-06-16',176,1954,189,1,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(976,'2025-01-02','2027-01-02','010DB2504','70.0',1,'2026-06-16',376,1956,189,1,61,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(977,'2025-06-02','2027-01-03','CQ324014G5','133.0',30,'2026-06-16',220,1958,189,1,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(978,'2026-01-09','2028-01-08','AC065/25','27.0',4,'2026-06-16',221,3198,189,1,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(979,'2026-06-05','2028-01-12','AC0176/26','325.0',4,'2026-06-16',221,3199,189,1,48,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(980,'2024-06-02','2026-01-06','CDCY24006','30.0',55,'2026-06-16',222,1964,189,1,56,15,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(981,'2025-01-20','2029-01-03','882552D7','337.8',2,'2026-06-16',212,3200,189,1,45,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(982,'2027-01-05','2029-01-02','572502D7','318.59',11,'2026-06-16',212,1965,189,1,45,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(983,'2026-01-01','2028-01-01','EY6407016','21.22',212,'2026-06-16',223,1966,189,1,56,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(984,'2025-01-06','2027-01-07','DWL104008','9.67',210,'2026-06-16',435,1967,189,1,59,40,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(985,'2025-02-07','2027-01-01','0825001AS','8.29',75,'2026-06-16',435,3203,189,1,59,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(986,'2025-02-05','2027-01-08','25DG0071','7.09',40,'2026-06-16',224,3204,189,1,43,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(987,'2025-05-06','2027-01-07','25330019','103.0',1,'2026-06-16',224,3205,189,1,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(988,'2026-01-05','2028-01-01','26070052','6.25',500,'2026-06-16',224,3207,189,1,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(989,'2025-08-02','2027-01-10','1K246273','36.72',10,'2026-06-16',226,3209,189,1,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(990,'2024-06-11','2026-01-12','1A40072','43.53',0,'2026-06-16',225,3210,189,1,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(991,'2024-06-05','2026-01-09','11D-8666B','73.13',63,'2026-06-16',227,3211,189,1,62,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(992,'2025-06-05','2027-01-11','W47Y013','20.87',92,'2026-06-17',181,1982,189,1,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(993,'2025-01-08','2027-01-10','DA22507','14.32',69,'2026-06-17',228,3213,189,1,35,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(994,'2024-10-05','2026-01-06','MPA250415','16.5',7,'2026-06-17',327,3214,189,1,43,25,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(995,'2026-01-10','2028-01-11','13251764A','15.47',100,'2026-06-17',229,1990,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(996,'2025-07-08','2027-01-02','N25032','68.51',8,'2026-06-17',230,1992,189,1,55,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(997,'2025-01-05','2027-01-01','N25030','71.18',2,'2026-06-17',230,3217,189,1,55,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(998,'2027-04-06','2029-01-09','NA00336A','11.22',21,'2026-06-17',277,3218,189,1,50,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(999,'2026-08-05','2028-01-12','B00006A','1.4',150,'2026-06-17',277,3219,189,1,50,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1000,'2025-05-02','2027-01-05','1250902','435.94',2,'2026-06-17',201,3220,189,1,43,35,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1001,'2025-05-08','2027-01-11','B027','252.0',3,'2026-06-17',232,2004,189,1,67,19,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1002,'2025-05-05','2027-01-07','B041','228.0',6,'2026-06-17',232,2002,189,1,67,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1003,'2026-01-05','2028-01-11','B311','186.87',5,'2026-06-17',232,2000,189,1,67,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1004,'2026-05-20','2028-01-10','B373','168.18',9,'2026-06-17',232,2003,189,1,67,28,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1005,'2025-06-05','2027-01-08','ALK25022SR','10.88',0,'2026-06-17',277,2006,189,1,63,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1006,'2026-01-05','2028-01-04','GA00120A','6.93',18,'2026-06-17',277,2007,189,1,48,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1007,'2024-05-06','2026-01-12','C0165066','211.0',1,'2026-06-17',279,3224,189,1,50,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1008,'2025-02-04','2027-01-10','256028','708.0',10,'2026-06-17',170,2011,189,1,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1009,'2024-01-05','2027-01-11','256027','708.0',8,'2026-06-17',170,2010,189,1,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1010,'2027-10-05','2029-01-01','FINE','55.0',8,'2026-06-17',170,3227,189,1,46,37,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1011,'2025-06-05','2027-01-06','FHH-2635','45.94',94,'2026-06-17',184,3229,189,1,65,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1012,'2026-02-02','2028-01-06','2409041','30.0',27,'2026-06-17',235,3230,189,1,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1013,'2026-01-05','2030-01-11','2227','210.0',3,'2026-06-17',236,2541,189,1,92,39,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1014,'2022-01-05','2028-01-06','062-0725','179.0',1,'2026-06-17',236,2023,189,1,66,39,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1015,'2027-01-02','2029-01-02','C613455','40.82',25,'2026-06-17',225,2027,189,1,48,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1016,'2025-01-05','2027-01-04','AJP37AAA','133.5',6,'2026-06-17',237,3236,189,1,43,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1017,'2027-01-05','2029-01-11','DOBS4339','2.14',360,'2026-06-17',204,3237,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1018,'2024-06-05','2026-01-07','230414S','64.0',7,'2026-06-17',433,2031,189,1,39,23,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1019,'2026-01-05','2028-01-06','SKG2331A','575.0',3,'2026-06-17',413,2037,189,1,41,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1020,'2025-10-05','2027-01-10','MGV4M005','5.36',36,'2026-06-17',211,2039,189,1,43,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1021,'2024-01-06','2026-01-07','ZOT-0626','8.63',13,'2026-06-17',239,2040,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1022,'2025-01-05','2027-01-11','SSN2321','25.71',36,'2026-06-17',164,2041,189,1,50,27,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1023,'2025-05-04','2027-01-11','843145D7','328.12',4,'2026-06-17',212,2044,189,1,44,22,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1024,'2026-02-08','2028-02-09','DAW26003','90.18',36,'2026-06-17',212,3245,189,1,73,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1025,'2026-05-20','2028-01-04','MAZA5018','4.58',52,'2026-06-17',240,3246,189,1,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1026,'2026-03-03','2028-01-03','MAZB5018','19.02',15,'2026-06-17',212,3247,189,1,44,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1027,'2025-01-05','2027-01-11','H251822','65.62',136,'2026-06-17',241,2048,189,1,69,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1028,'2027-05-02','2027-01-12','UHT25538H','46.7',120,'2026-06-17',241,3249,189,1,49,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1029,'2025-07-05','2027-01-11','25012122','62.81',486,'2026-06-17',242,3250,189,1,40,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1030,'2027-05-05','2028-01-01','75Z001','8.49',100,'2026-06-17',181,3251,189,1,35,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1031,'2027-01-05','2029-01-02','24034','44.0',99,'2026-06-17',236,3252,189,1,66,20,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1032,'2025-05-04','2027-01-05','FLA25U03','19.0',14,'2026-06-17',243,3253,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1033,'2025-04-02','2027-01-11','4011790','0.76',519,'2026-06-17',244,3254,189,1,67,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1034,'2025-02-04','2027-01-11','4011787','0.38',345,'2026-06-17',244,2055,189,1,67,40,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1035,'2026-12-02','2028-12-01','MR-171','124.0',3,'2026-06-17',255,2085,189,1,35,7,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1036,'2026-06-01','2026-06-01','test','23.0',40,'2026-06-20',147,1680,1,6,44,8,0,NULL,5,23.00,44.00,0.00,0.00,0.00),(1037,'2026-06-01','2026-06-17','t','4',1,'2026-06-17',146,1715,1,1,42,8,0,NULL,5,4.00,0.00,0.00,0.00,0.00),(1038,'2026-06-03','2026-07-11','GAT-1277','546',1,'2026-06-18',153,2926,1,1,33,8,0,NULL,5,546.00,0.00,0.00,0.00,0.00),(1039,'2026-06-02','2026-07-03','BAR-2783','560',11,'2026-06-20',153,1712,1,1,33,8,0,NULL,5,200.00,250.00,0.00,0.00,0.00),(1040,'2026-06-04','2026-06-26','STAB-7289','500',7,'2026-06-20',147,2131,1,1,33,8,0,NULL,5,500.00,0.00,0.00,0.00,0.00),(1041,'2026-06-03','2026-07-10','STag-8389','600',1,'2026-06-18',150,2108,1,1,37,8,0,NULL,5,600.00,0.00,0.00,0.00,0.00),(1042,'2026-06-04','2026-07-10','hkhj-245','500',1,'2026-06-18',151,1817,1,1,37,11,0,NULL,5,500.00,0.00,0.00,0.00,0.00),(1043,'2026-06-20','2026-07-11','barth','50',1,'2026-06-20',159,1738,1,1,33,15,0,NULL,5,50.00,70.00,0.00,0.00,0.00),(1044,'2026-02-01','2026-07-01','zedrfgh','600',1,'2026-06-20',154,1878,1,1,35,7,0,NULL,5,600.00,0.00,0.00,0.00,0.00),(1045,'2026-06-01','2026-12-01','SAZB-1','500.0',7,'2026-06-20',147,1746,1,1,33,8,0,NULL,5,500.00,0.00,0.00,0.00,0.00),(1046,'2026-06-01','2034-10-01','DAT-356','700.0',65,'2026-06-20',358,1878,1,1,68,10,0,NULL,5,700.00,0.00,0.00,0.00,0.00),(1050,'2026-06-01','2026-12-01','SAZB','500.0',4,'2026-06-20',147,1746,1,1,33,8,1,'2026-06-20',5,500.00,0.00,0.00,0.00,0.00),(1052,'2026-06-01','2026-12-01','test','200',30,'2026-06-25',148,1678,1,1,98,8,0,NULL,5,200.00,0.00,0.00,0.00,0.00),(1053,'2026-06-01','2032-12-01','GTG2896A','20.0',600,'2026-06-20',155,1679,1,1,37,18,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1055,'2026-06-01','2026-12-01','BTL','20.0',8,'2026-06-20',422,1673,1,1,41,7,0,NULL,5,0.00,NULL,0.00,0.00,0.00),(1056,'2026-06-01','2026-12-01','BTL','40.0',5,'2026-06-20',422,1673,1,1,41,7,1,'2026-06-20',5,0.00,NULL,0.00,0.00,0.00),(1057,'2026-06-01','2026-06-01','SACh-2789','560',2,'2026-06-20',358,2131,1,1,94,9,0,NULL,5,560.00,0.00,0.00,0.00,0.00),(1058,'2026-06-01','2026-12-01','SA-78728','500',2,'2026-06-20',149,1746,1,1,83,9,0,NULL,5,500.00,600.00,0.00,0.00,0.00),(1059,'2026-06-01','2026-12-01','BAT-24656','500',1,'2026-06-20',422,1746,1,1,83,10,0,NULL,5,500.00,0.00,0.00,0.00,0.00),(1060,'2026-06-01','2026-12-01','ygh','50',2,'2026-06-20',422,1746,1,1,83,9,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1061,'2026-06-01','2026-12-01','SAC5t6','50',7,'2026-06-20',422,1746,1,1,34,8,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1062,'2026-06-01','2026-12-01','BAT-3939','50',10,'2026-06-20',225,1746,1,1,60,10,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1063,'2026-06-01','2026-12-01','BAT-3682','700',3,'2026-06-22',422,1738,1,1,83,10,0,NULL,5,700.00,0.00,0.00,0.00,0.00),(1064,'2026-04-01','2026-12-01','BAT-3788','500',2,'2026-06-22',390,1738,1,1,83,10,0,NULL,5,500.00,0.00,0.00,0.00,0.00),(1065,'2026-06-01','2026-06-01','BAT-2672','50',4,'2026-06-22',358,2196,1,1,72,8,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1066,'2026-06-01','2026-12-01','SACGhj-4567','90',13,'2026-06-22',293,1746,1,1,70,9,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1067,'2026-06-01','2026-12-01','BATc-3443','100',8,'2026-06-22',225,2194,1,1,68,9,0,NULL,5,100.00,0.00,0.00,0.00,0.00),(1068,'2026-06-01','2026-12-01','BATw-893','70',2,'2026-06-23',358,1659,1,1,83,20,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1069,'2026-06-01','2026-12-01','BAT-2892','90',6,'2026-06-23',212,1746,1,1,34,8,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1070,'2026-06-01','2026-12-01','BAT-27892','90',8,'2026-06-23',212,1738,1,1,83,8,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1071,'2026-06-01','2026-12-01','SA-4677','90',3,'2026-06-23',422,1738,1,1,83,8,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1072,'2026-06-01','2026-12-01','BAt-4567','90',2,'2026-06-23',422,1746,1,1,34,8,0,NULL,5,70.00,0.00,0.00,0.00,0.00),(1073,'2026-06-01','2026-12-01','BAT-37898','60',2,'2026-06-23',422,1738,1,1,34,8,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1074,'2026-06-01','2026-12-01','BAT-28892','50',4,'2026-06-23',422,1746,1,1,34,8,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1075,'2026-06-01','2026-12-01','SAT-34567','90',2,'2026-06-23',422,1738,1,1,34,8,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1076,'2026-06-01','2026-12-01','BAT-2899','50',2,'2026-06-23',422,1738,1,1,34,8,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1077,'2026-06-01','2026-12-01','SAP-7892','270',2,'2026-06-24',371,1746,1,1,34,8,0,NULL,5,250.00,0.00,5.00,50.00,10.00),(1078,'2026-06-01','2026-12-01','BAT-23456','50',11,'2026-06-24',212,1753,1,1,34,8,0,NULL,5,25.00,0.00,5.00,10.00,55.00),(1079,'2026-06-01','2026-12-01','BAT-2782','90',2,'2026-06-24',422,1746,1,1,34,10,0,NULL,5,70.00,0.00,0.00,0.00,0.00),(1080,'2026-06-01','2026-12-01','BAT-689302','90',8,'2026-06-24',212,1746,1,1,60,10,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1081,'2026-06-01','2026-12-01','BAt-3455','60',6,'2026-06-24',422,1878,1,1,60,8,0,NULL,5,50.00,0.00,10.00,6.00,60.00),(1082,'2026-06-01','2026-12-01','BAT-27898','120',7,'2026-06-24',422,1700,1,1,34,46,0,NULL,5,50.00,0.00,15.00,8.00,105.00),(1083,'2026-06-01','2026-12-01','BAT-82921','90',7,'2026-06-24',195,2131,1,1,34,7,0,NULL,5,50.00,0.00,0.00,0.00,7.00),(1084,'2026-06-01','2026-12-01','BAt-2783','240',15,'2026-06-24',358,1878,1,1,34,47,0,NULL,5,200.00,0.00,20.00,12.00,300.00),(1085,'2026-06-01','2026-12-01','BAT-178993','90',30,'2026-06-24',422,1738,1,1,34,7,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1086,'2026-06-01','2026-12-01','BAT-2682','60.0',53,'2026-06-25',212,1742,1,1,34,45,0,NULL,5,50.00,0.00,10.00,6.00,164.00),(1087,'2026-06-01','2026-12-01','BAT-29892','90',15,'2026-06-24',212,1746,1,1,72,7,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1088,'2026-06-01','2026-12-01','APP-7892','70',24,'2026-06-24',212,1746,1,1,34,10,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1089,'2026-06-01','2026-12-01','BAT-1899','40',30,'2026-06-24',371,1720,1,1,34,45,0,NULL,5,20.00,0.00,10.00,4.00,250.00),(1090,'2026-06-01','2026-12-01','BTA-25666','90',12,'2026-06-24',212,1746,1,1,83,7,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1091,'2026-06-01','2026-12-01','BAT-2922','70',15,'2026-06-24',422,1881,1,1,83,46,0,NULL,5,60.00,0.00,15.00,4.67,225.00),(1092,'2026-06-01','2026-12-01','BAT-7892','95',1,'2026-06-25',371,1746,1,1,94,47,0,NULL,5,89.00,0.00,20.00,4.75,20.00),(1093,'2026-06-01','2026-12-01','BAT-2782','80',15,'2026-06-25',422,1741,1,1,94,9,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1094,'2026-06-01','2026-12-01','Bat-267','50',11,'2026-06-25',212,1746,1,1,34,47,0,NULL,5,40.00,0.00,20.00,2.50,220.00),(1095,'2026-06-01','2026-12-01','BAT-2455','80',1,'2026-06-25',358,1878,1,1,34,10,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1096,'2026-06-01','2026-12-01','BAT-37883','120',15,'2026-06-25',293,1878,1,1,34,47,0,NULL,5,100.00,0.00,20.00,6.00,300.00),(1097,'2026-06-01','2026-12-01','AN-3783','300',12,'2026-06-25',212,1881,1,1,34,10,0,NULL,5,500.00,0.00,0.00,0.00,0.00),(1098,'2026-06-01','2026-12-01','BAT-26778','80',8,'2026-06-25',195,1746,1,1,34,47,0,NULL,5,50.00,0.00,20.00,4.00,0.00),(1099,'2026-06-01','2026-12-01','BAT-2892','90',15,'2026-06-25',358,2131,1,1,34,10,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1100,'2026-06-01','2026-12-01','twest','40',150,'2026-06-25',294,1680,1,2,41,45,0,NULL,5,20.00,12.00,10.00,4.00,0.00),(1101,'2026-06-01','2026-12-01','BAT-2678','50',150,'2026-06-25',212,1746,1,2,41,10,0,NULL,5,30.00,0.00,0.00,0.00,0.00),(1102,'2026-06-01','2026-12-01','BAT-288990','80',150,'2026-06-25',422,1878,1,1,60,45,0,NULL,5,60.00,0.00,10.00,8.00,0.00),(1103,'2026-03-01','2026-12-01','BAT-2445','80',15,'2026-06-25',358,1803,1,1,60,10,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1104,'2026-06-01','2026-12-01','BAT-2782','70',12,'2026-06-25',358,1752,1,1,60,9,0,NULL,5,40.00,0.00,0.00,0.00,0.00),(1105,'2026-06-01','2026-12-01','BAT-8900','80',120,'2026-06-25',358,1753,1,1,67,49,0,NULL,5,60.00,0.00,12.00,6.67,0.00),(1106,'2026-06-01','2026-12-01','BAT-8999','90',5,'2026-06-25',358,2131,1,1,67,22,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1107,'2026-06-01','2026-12-01','BAT-7889','100',875,'2026-06-25',358,2194,1,1,67,48,0,NULL,5,70.00,0.00,25.00,4.00,0.00),(1108,'2026-06-01','2026-12-01','T-352','70',12,'2026-06-25',371,2194,1,6,70,22,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1109,'2026-06-01','2026-12-01','BAt-789','80',240,'2026-06-25',358,1881,1,6,70,48,0,NULL,5,50.00,0.00,20.00,4.00,0.00),(1110,'2026-06-01','2026-12-01','AT-7822','60',12,'2026-06-25',195,1754,1,6,70,18,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1111,'2026-02-01','2026-12-01','BAT-67892','90',100,'2026-06-25',293,1878,1,1,34,48,0,NULL,5,50.00,0.00,25.00,3.60,0.00),(1112,'2026-02-01','2026-12-01','BAt-39902','60',120,'2026-06-25',358,2131,1,1,34,45,0,NULL,5,50.00,0.00,10.00,6.00,0.00),(1113,'2026-06-01','2026-12-01','BAT-8921','90',284,'2026-06-25',358,2996,1,1,34,45,0,NULL,5,60.00,0.00,10.00,9.00,0.00),(1114,'2026-08-01','2027-08-01','ab12300','220.0',30,'2026-06-25',212,1679,1,2,98,18,0,NULL,5,25.00,15.00,0.00,0.00,0.00),(1115,'2026-06-01','2026-12-01','test','50',10,'2026-06-25',148,1678,1,2,98,8,0,NULL,5,45.00,12.00,1.00,50.00,0.00),(1116,'2026-01-01','2026-12-01','teststrip','50.0',1000,'2026-06-25',212,3072,1,1,98,45,0,NULL,5,35.00,0.00,10.00,5.60,0.00),(1117,'2026-01-01','2026-01-01','teststrip','56',80,'2026-06-25',213,3072,1,1,98,45,0,NULL,5,35.00,0.00,10.00,5.60,0.00),(1118,'2026-06-01','2026-12-01','BAT-7889','60',30,'2026-06-25',293,1738,1,1,94,15,0,NULL,5,50.00,0.00,0.00,0.00,0.00),(1119,'2026-07-01','2026-12-01','BAT-38003','90',18,'2026-07-01',225,1742,1,1,34,15,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1120,'2026-07-01','2026-12-01','BAT-2902','90',216,'2026-07-01',195,3094,1,1,34,49,0,NULL,5,50.00,0.00,12.00,7.50,0.00),(1121,'2026-07-01','2026-12-01','BAT-1002','90',150,'2026-07-01',422,1700,1,1,34,45,0,NULL,5,60.00,0.00,10.00,9.00,0.00),(1122,'2026-07-01','2026-12-01','BAT-29012','90',12,'2026-07-01',212,1701,1,1,34,10,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1123,'2026-07-01','2026-12-01','BAt-1001','90',20,'2026-07-01',212,1699,1,1,34,7,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1124,'2026-07-01','2026-12-01','dgrr','90',1,'2026-07-01',422,1659,1,1,34,7,0,NULL,5,60.00,0.00,0.00,0.00,0.00),(1125,NULL,'2026-12-01','BAT-2002','100',255,'2026-07-02',209,2110,1,1,34,46,0,NULL,5,80.00,0.00,15.00,6.67,0.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_prescriptioneditlog`
--

LOCK TABLES `ayurvedaapp_prescriptioneditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_prescriptioneditlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_prescriptioneditlog` VALUES (2,'EDIT','AB  PHYLLINE','4','1','0','0','None','',4,NULL,40,'2026-06-12',196,1,'AB  PHYLLINE','4','1','0','0','None','',4,NULL,40,'2026-06-12',1,'2026-06-12','09:47:58.653321',NULL,196,7,190),(3,'EDIT','AB  PHYLLINE','5','1','0','0','None','',5,NULL,40,'2026-06-17',196,1,'AB  PHYLLINE','5','1','0','0','Before Diet','',5,NULL,40,'2026-06-17',1,'2026-06-17','07:51:26.218818',NULL,196,9,1),(4,'EDIT','AB  PHYLLINE','5','1','0','0','Before Diet','',5,NULL,40,'2026-06-17',196,1,'AB  PHYLLINE','5','1','0','0','After Diet','',5,NULL,40,'2026-06-17',1,'2026-06-17','07:52:11.070035',NULL,196,9,1),(5,'EDIT','AB  PHYLLINE','5','1','0','0','After Diet','',5,NULL,40,'2026-06-17',196,1,'AB  PHYLLINE','5','1','0','0','Before Diet','',5,NULL,40,'2026-06-17',1,'2026-06-17','07:52:17.015059',NULL,196,9,1),(6,'EDIT','AB  PHYLLINE','5','1','0','0','Before Diet','',5,NULL,40,'2026-06-17',196,1,'AB  PHYLLINE','5','1','0','0','After Diet','',5,NULL,40,'2026-06-17',1,'2026-06-17','07:52:22.831835',NULL,196,9,1),(7,'DELETE','AB  PHYLLINE','1','1','0','0','Before Diet','',1,NULL,40,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:11:07.772935',NULL,222,NULL,1),(8,'EDIT','AB  PHYLLINE','1','0','0','0','None','',1,NULL,40,'2026-06-22',222,1,'AB  PHYLLINE','1','0','0','0','Before Diet','',1,NULL,40,'2026-06-22',1,'2026-06-22','11:22:46.916112',NULL,222,NULL,1),(9,'DELETE','AB  PHYLLINE','1','0','0','0','Before Diet','',1,NULL,40,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:23:01.044110',NULL,222,NULL,1),(10,'DELETE','AB  PHYLLINE','1','1','0','0','Before Diet','',1,NULL,40,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:24:56.936367',NULL,222,NULL,1),(11,'DELETE','AB  PHYLLINE','1','0','0','0','After Diet','',1,NULL,40,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:27:13.024837',NULL,222,NULL,1),(12,'DELETE','ACCURATE PREGNANCY KIT','1','0','0','0','Before Diet','',1,NULL,46,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:27:55.196115',NULL,222,NULL,1),(13,'DELETE','ABD BINDER large (velcro)','1','0','0','0','Before Diet','',1,NULL,42,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:28:12.454771',NULL,222,NULL,1),(14,'EDIT','ABDOMINAL HYSTROCTOMY KIT','2','2','0','0','After Diet','',2,NULL,45,'2026-06-22',222,1,'ABDOMINAL HYSTROCTOMY KIT','1','1','0','0','After Diet','',1,NULL,45,'2026-06-22',1,'2026-06-22','11:28:43.943219',NULL,222,NULL,1),(15,'DELETE','ABDOMINAL BELT (S)','3','1','0','0','Before Diet','',3,NULL,1036,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:30:01.910993',NULL,222,NULL,1),(16,'DELETE','ABDOMINAL HYSTROCTOMY KIT','1','1','0','0','After Diet','',1,NULL,45,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','11:30:06.322322',NULL,222,NULL,1),(17,'DELETE','ABD BINDER large (velcro)','1','0','0','0','Before Diet','',1,NULL,42,'2026-06-22',222,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-22','12:02:56.526387',NULL,222,NULL,1),(18,'DELETE','AB  PHYLLINE','1','1','0','0','Before Diet','',1,NULL,40,'2026-06-23',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-23','04:17:24.377042',NULL,1,NULL,1),(19,'DELETE','AB  PHYLLINE','3','1','0','1','Before Diet','',3,NULL,40,'2026-07-02',233,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-07-02','10:30:08.872915',NULL,233,NULL,1),(20,'DELETE','AB  PHYLLINE','4','1','0','0','Before Diet','',4,NULL,40,'2026-07-02',233,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-07-02','11:58:22.930914',NULL,233,NULL,1),(21,'DELETE','AB  PHYLLINE','1','1','0','0','Before Diet','sxasdsa',1,NULL,40,'2026-07-02',233,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-07-02','11:58:25.194704',NULL,233,NULL,1);
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
  `deletedstatus` tinyint(1) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_prescriptionnew`
--

LOCK TABLES `ayurvedaapp_prescriptionnew` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_prescriptionnew` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_prescriptionnew` VALUES (5,'2026-06-04','AB  PHYLLINE','1','0','1','None','','5',0,NULL,NULL,199,40,1,10,0),(6,'2026-06-08','AB  PHYLLINE','1','0','0','Before Diet','','5',0,NULL,NULL,196,40,1,5,0),(7,'2026-06-12','AB  PHYLLINE','1','0','0','None','','4',0,NULL,NULL,196,40,1,4,0),(8,'2026-06-12','DOLO 650 TAB','1','0','1','After Diet','','1',0,NULL,NULL,196,253,190,4,0),(9,'2026-06-17','AB  PHYLLINE','1','0','0','After Diet','','5',0,NULL,NULL,196,40,1,5,0),(10,'2026-06-17','AB GEL','0','0','0','Before Diet','','1',0,NULL,NULL,196,41,1,1,0),(21,'2026-07-02','AB  PHYLLINE','1','0','1','Before Diet','','2',0,NULL,NULL,210,40,1,2,0),(23,'2026-07-02','AUGMENTIN 375 TABLET','1','0','0','Before Diet','','5',0,NULL,NULL,233,96,1,5,0),(24,'2026-07-02','AB  PHYLLINE','0','0','0','None','','1',0,NULL,NULL,233,40,1,1,0),(25,'2026-07-02','AB  PHYLLINE','0','0','0','Before Diet','','1',0,NULL,NULL,1,40,1,1,0),(26,'2026-07-02','AB  PHYLLINE','1','0','0','Before Diet','','1',0,NULL,NULL,210,40,1,1,0),(29,'2026-07-03','FIBISAFE 25 TAB','1','0','0','Before Diet','','3',0,NULL,NULL,220,332,1,3,0),(30,'2026-07-03','AB  PHYLLINE','1','0','0','Before Diet','','5',0,NULL,NULL,220,40,1,5,0),(31,'2026-07-03','APCCOD SACHET','1','0','0','Before Diet','','5',0,NULL,NULL,220,72,1,5,0),(32,'2026-07-03','AVIL 25 TABLET','1','0','0','Before Diet','','5',0,NULL,NULL,219,100,1,5,0);
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `branch_id_id` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_proceduremaster_branch_id_id_2848f1dd` (`branch_id_id`),
  CONSTRAINT `ayurvedaapp_procedur_branch_id_id_2848f1dd_fk_ayurvedaa` FOREIGN KEY (`branch_id_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_proceduremaster`
--

LOCK TABLES `ayurvedaapp_proceduremaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_proceduremaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_proceduremaster` VALUES (1,'Observation Charge','consultation',500.00,'','Anu K','2026-06-08 11:04:40.503875',5,1),(2,'X-ray Chest','consultation',200.00,'','Anu K','2026-06-12 16:34:06.098291',5,1),(3,'NST Charge','consultation',400.00,'','Anu K','2026-06-12 16:37:00.643662',5,1),(4,'Nebulization','consultation',100.00,'','Anu K','2026-06-12 16:37:25.772353',5,1),(5,'ECG ','consultation',200.00,'','Anu K','2026-06-12 16:37:56.910358',5,1),(6,'Nebulization with O2','consultation',150.00,'','Anu K','2026-06-12 16:38:21.482483',5,1),(7,'Injection Charge','consultation',20.00,'','Anu K','2026-06-12 16:38:52.767409',5,1),(8,'Dressing & Suturing','consultation',20.00,'','Anu K','2026-06-12 16:39:19.323268',5,1),(9,'Procedure Charge','consultation',20.00,'','Anu K','2026-06-12 16:39:58.381148',5,1),(10,'BP Check','consultation',20.00,'','Anu K','2026-06-12 16:41:54.212722',5,1),(11,'Scanning Charge','consultation',100.00,'','Anu K','2026-06-12 16:43:34.772929',5,1),(12,'Medical Certificate','consultation',100.00,'','Anu K','2026-06-12 16:44:20.273547',5,1),(13,'Catheterization Charge','consultation',100.00,'','Anu K','2026-06-12 16:44:52.761210',5,1),(14,'Enemia Charge','consultation',100.00,'','Anu K','2026-06-12 16:45:19.125014',5,1),(15,'TT.Charge','consultation',100.00,'','Anu K','2026-06-12 16:45:49.790273',5,1);
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
-- Table structure for table `ayurvedaapp_purchaseinvoice`
--

DROP TABLE IF EXISTS `ayurvedaapp_purchaseinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_purchaseinvoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `supplier_bill_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supplier_bill_date` date DEFAULT NULL,
  `payment_terms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `total_discount` decimal(12,2) NOT NULL,
  `total_gst` decimal(12,2) NOT NULL,
  `shipping_charge` decimal(12,2) NOT NULL,
  `other_charge` decimal(12,2) NOT NULL,
  `grand_total` decimal(12,2) NOT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `stock_updated` tinyint(1) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  `created_by_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  `supplier_id` bigint NOT NULL,
  `amount_in_words` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `ayurvedaapp_purchase_branch_id_cacc4d6d_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_purchase_company_id_f944f0cb_fk_ayurvedaa` (`company_id`),
  KEY `ayurvedaapp_purchase_created_by_id_7ae1c70d_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_purchase_store_id_238a61da_fk_ayurvedaa` (`store_id`),
  KEY `ayurvedaapp_purchase_supplier_id_81c1ef68_fk_ayurvedaa` (`supplier_id`),
  CONSTRAINT `ayurvedaapp_purchase_branch_id_cacc4d6d_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_company_id_f944f0cb_fk_ayurvedaa` FOREIGN KEY (`company_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_created_by_id_7ae1c70d_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_store_id_238a61da_fk_ayurvedaa` FOREIGN KEY (`store_id`) REFERENCES `ayurvedaapp_storedetails` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_supplier_id_81c1ef68_fk_ayurvedaa` FOREIGN KEY (`supplier_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_purchaseinvoice`
--

LOCK TABLES `ayurvedaapp_purchaseinvoice` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseinvoice` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_purchaseinvoice` VALUES (7,'PI/PLK/26/27/0001','2026-06-17','','2026-06-17','Net 30',5000.00,0.00,250.00,0.00,0.00,5250.00,'','2026-06-17 07:04:02.258338','2026-06-17 07:04:02.258338',0,5,NULL,1,1,34,''),(8,'PI/PLK/26/27/0002','2026-06-17','',NULL,'Net 30',920.00,0.00,46.00,0.00,0.00,966.00,'','2026-06-17 07:08:14.404007','2026-06-17 07:08:14.404007',0,5,NULL,1,6,44,''),(9,'PI/PLK/26/27/0003','2026-06-17','',NULL,'Net 30',3600.00,0.00,180.00,0.00,0.00,3780.00,'','2026-06-17 07:09:12.979267','2026-06-17 07:09:12.979267',0,5,NULL,1,1,33,''),(11,'PI/PLK/26/27/0004','2026-06-17','',NULL,'Net 30',9800.00,0.00,490.00,0.00,0.00,10290.00,'','2026-06-17 07:12:53.678706','2026-06-17 07:12:53.678706',0,5,NULL,1,1,45,''),(12,'PI/PLK/26/27/0005','2026-06-17','',NULL,'Net 30',450.00,0.00,22.50,0.00,0.00,473.00,'','2026-06-17 07:15:07.446887','2026-06-17 07:15:07.446887',0,5,NULL,1,1,48,''),(13,'PI/PLK/26/27/0006','2026-06-17','6','2026-06-17','Net 30',45.00,0.00,2.25,0.00,0.00,47.00,'','2026-06-17 07:17:23.821880','2026-06-17 07:17:23.821880',0,5,NULL,1,2,44,''),(15,'PI/PLK/26/27/0007','2026-06-17','',NULL,'Net 30',4.00,0.00,0.20,0.00,0.00,4.00,'','2026-06-17 07:20:26.505891','2026-06-17 07:20:26.505891',0,5,NULL,1,1,42,''),(16,'PI/PLK/26/27/0008','2026-06-18','','2026-06-18','Net 30',546.00,0.00,27.30,0.00,0.00,573.00,'','2026-06-18 10:07:38.836623','2026-06-18 10:07:38.836623',0,5,NULL,1,1,33,''),(17,'PI/PLK/26/27/0009','2026-06-18','','2026-06-18','Net 30',560.00,0.00,28.00,0.00,0.00,588.00,'','2026-06-18 10:09:38.192399','2026-06-18 10:09:38.192399',0,5,NULL,1,1,33,''),(18,'PI/PLK/26/27/0010','2026-06-18','SP-27292','2026-06-02','Net 30',2500.00,0.00,125.00,0.00,0.00,2625.00,'','2026-06-18 10:19:34.189414','2026-06-18 10:19:34.189414',0,5,NULL,1,1,33,''),(19,'PI/PLK/26/27/0011','2026-06-18','','2026-06-03','Net 30',1100.00,0.00,55.00,0.00,0.00,1155.00,'','2026-06-18 10:21:42.797910','2026-06-18 10:21:42.797910',0,5,NULL,1,1,37,''),(20,'PI/PLK/26/27/0012','2026-06-20','','2026-06-20','Net 30',50.00,0.00,2.50,0.00,0.00,53.00,'','2026-06-20 04:26:46.854162','2026-06-20 04:26:46.854162',0,5,NULL,1,1,33,''),(21,'PI/PLK/26/27/0013','2026-06-20','','2026-06-20','Net 30',600.00,0.00,30.00,0.00,0.00,630.00,'','2026-06-20 04:57:47.329822','2026-06-20 04:57:47.330822',0,5,NULL,1,1,35,''),(22,'PI/PLK/26/27/0014','2026-06-20','','2026-06-20','Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-20 05:10:55.611851','2026-06-20 05:10:55.611851',0,5,NULL,1,1,33,''),(23,'PI/PLK/26/27/0015','2026-06-20','','2026-06-20','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-20 06:32:34.453682','2026-06-20 06:32:34.453682',0,5,NULL,1,1,73,''),(25,'PI/PLK/26/27/0016','2026-06-20','','2026-06-20','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-20 06:35:56.139344','2026-06-20 06:35:56.139344',0,5,NULL,1,1,68,''),(26,'PI/PLK/26/27/0017','2026-06-20','','2026-06-20','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-20 06:40:45.769209','2026-06-20 06:40:45.769209',0,5,NULL,1,1,34,''),(28,'PI/PLK/26/27/0018','2026-06-20','','2026-06-20','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-20 06:41:36.163164','2026-06-20 06:41:36.163164',0,5,NULL,1,1,68,''),(29,'PI/PLK/26/27/0019','2026-06-20','','2026-06-20','Net 30',3500.00,0.00,175.00,0.00,0.00,3675.00,'','2026-06-20 06:47:46.412411','2026-06-20 06:47:46.412411',0,5,NULL,1,1,68,''),(30,'PI/PLK/26/27/0020','2026-06-20','','2026-06-20','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-20 06:50:19.541106','2026-06-20 06:50:19.541106',0,5,NULL,1,1,68,''),(31,'PI/PLK/26/27/0021','2026-06-20','','2026-06-20','Net 30',50.00,0.00,2.50,0.00,0.00,53.00,'','2026-06-20 07:05:42.071051','2026-06-20 07:05:42.071051',0,5,NULL,1,1,33,''),(32,'PI/PLK/26/27/0022','2026-06-20','','2026-06-20','Net 30',50.00,0.00,2.50,0.00,0.00,53.00,'','2026-06-20 07:07:31.419704','2026-06-20 07:07:31.419704',0,5,NULL,1,1,33,''),(33,'PI/PLK/26/27/0023','2026-06-20','test','2026-06-20','Net 30',2220.00,0.00,111.00,0.00,0.00,2331.00,'','2026-06-20 07:13:24.432947','2026-06-20 07:13:24.432947',0,5,NULL,1,1,98,''),(34,'PI/PLK/26/27/0024','2026-06-20','',NULL,'Net 30',22000.00,0.00,0.00,0.00,0.00,22000.00,'','2026-06-20 07:17:37.672691','2026-06-20 07:17:37.672691',0,5,NULL,1,1,98,''),(35,'PI/PLK/26/27/0025','2026-06-20','','2026-06-20','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-20 08:32:37.297910','2026-06-20 08:32:37.297910',0,5,NULL,1,1,68,''),(39,'PI/PLK/26/27/0026','2026-06-20','','2026-06-20','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-20 08:35:31.043783','2026-06-20 08:35:31.043783',0,5,NULL,1,1,68,''),(41,'PI/PLK/26/27/0027','2026-06-20','','2026-06-20','Net 30',1000.00,0.00,50.00,0.00,0.00,1050.00,'','2026-06-20 09:28:19.117212','2026-06-20 09:28:19.117212',0,5,NULL,1,1,33,''),(42,'PI/PLK/26/27/0028','2026-06-20','','2026-06-20','Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-20 10:28:58.341187','2026-06-20 10:28:58.341187',0,5,NULL,1,1,33,''),(43,'PI/PLK/26/27/0029','2026-06-20','','2026-06-20','Net 30',560.00,0.00,28.00,0.00,0.00,588.00,'','2026-06-20 10:54:36.106574','2026-06-20 10:54:36.106574',0,5,NULL,1,1,94,''),(44,'PI/PLK/26/27/0030','2026-06-20','','2026-06-20','Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-20 10:58:40.849526','2026-06-20 10:58:40.849526',0,5,NULL,1,1,83,''),(45,'PI/PLK/26/27/0031','2026-06-20','','2026-06-20','Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-20 11:03:22.765491','2026-06-20 11:03:22.766285',0,5,NULL,1,1,83,''),(47,'PI/PLK/26/27/0032','2026-06-20','','2026-06-20','Net 30',50.00,0.00,2.50,0.00,0.00,53.00,'','2026-06-20 11:07:55.500687','2026-06-20 11:07:55.500687',0,5,NULL,1,1,83,''),(51,'PI/PLK/26/27/0033','2026-06-20','',NULL,'Net 30',250.00,0.00,12.50,0.00,0.00,263.00,'','2026-06-20 12:13:10.055600','2026-06-20 12:13:10.055600',0,5,NULL,1,1,34,''),(52,'PI/PLK/26/27/0034','2026-06-20','gsdga','2026-06-20','Net 30',250.00,0.00,12.50,0.00,0.00,263.00,'','2026-06-20 12:18:23.529893','2026-06-20 12:18:23.530891',0,5,NULL,1,1,60,''),(53,'PI/PLK/26/27/0035','2026-06-22','','2026-06-22','Net 30',1900.00,0.00,190.00,0.00,0.00,2090.00,'','2026-06-22 04:18:26.244678','2026-06-22 04:18:26.244678',0,5,NULL,1,1,83,''),(54,'PI/PLK/26/27/0036','2026-06-22','Sa-893','2026-06-22','Net 30',150.00,0.00,7.50,0.00,0.00,158.00,'','2026-06-22 06:08:35.299151','2026-06-22 06:08:35.299151',0,5,NULL,1,1,72,'One Hundred Fifty Eight Rupees Only'),(55,'PI/PLK/26/27/0037','2026-06-22','DFg-644','2026-06-02','Net 30',480.00,0.00,24.00,0.00,0.00,504.00,'','2026-06-22 06:48:26.347214','2026-06-22 06:48:26.348213',0,5,NULL,1,1,70,'Five Hundred Four Rupees Only'),(56,'PI/PLK/26/27/0038','2026-06-22','','2026-06-02','Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-22 06:51:17.058772','2026-06-22 06:51:17.058772',0,5,NULL,1,1,68,'Five Hundred Twenty Five Rupees Only'),(57,'PI/PLK/26/27/0039','2026-06-23','','2026-06-23','Net 30',50.00,0.00,2.50,0.00,0.00,53.00,'','2026-06-23 06:32:03.475270','2026-06-23 06:32:03.475270',0,5,NULL,1,1,83,''),(58,'PI/PLK/26/27/0040','2026-06-23','',NULL,'Net 30',150.00,0.00,7.50,0.00,0.00,157.50,'','2026-06-23 10:12:48.580193','2026-06-23 10:12:48.580193',0,5,NULL,1,1,34,''),(59,'PI/PLK/26/27/0041','2026-06-23','BAT-4567','2026-06-23','Net 30',150.00,3.00,7.50,0.00,0.00,154.50,'','2026-06-23 10:51:11.937863','2026-06-23 10:51:11.937863',0,5,NULL,1,1,83,''),(60,'PI/PLK/26/27/0042','2026-06-23','BAT-4567','2026-06-23','Net 30',150.00,3.00,7.50,0.00,0.00,154.50,'','2026-06-23 10:54:49.410055','2026-06-23 10:54:49.410055',0,5,NULL,1,1,83,''),(61,'PI/PLK/26/27/0043','2026-06-23','','2026-06-23','Net 30',120.00,0.00,6.00,0.00,0.00,120.00,'','2026-06-23 11:02:34.447580','2026-06-23 11:02:34.447580',0,5,NULL,1,1,83,''),(62,'PI/PLK/26/27/0044','2026-06-23','','2026-06-23','Net 30',70.00,0.00,3.50,0.00,0.00,70.00,'','2026-06-23 11:03:27.259722','2026-06-23 11:03:27.259722',0,5,NULL,1,1,34,''),(63,'PI/PLK/26/27/0045','2026-06-23','','2026-06-23','Net 30',50.00,0.50,2.50,0.00,0.00,52.00,'','2026-06-23 11:15:28.957641','2026-06-23 11:15:28.957641',0,5,NULL,1,1,34,''),(64,'PI/PLK/26/27/0046','2026-06-23','','2026-06-23','Net 30',50.00,0.50,2.50,0.00,0.00,52.00,'','2026-06-23 11:21:08.001934','2026-06-23 11:21:08.001934',0,5,NULL,1,1,34,''),(65,'PI/PLK/26/27/0047','2026-06-23','','2026-06-23','Net 30',50.00,0.00,2.50,0.00,0.00,52.50,'','2026-06-23 11:22:00.837319','2026-06-23 11:22:00.837319',0,5,NULL,1,1,34,''),(66,'PI/PLK/26/27/0048','2026-06-23','',NULL,'Net 30',50.00,0.00,2.50,0.00,0.00,52.50,'','2026-06-23 11:36:48.528178','2026-06-23 11:36:48.528178',0,5,NULL,1,1,34,''),(67,'PI/PLK/26/27/0049','2026-06-23','SA-87654','2026-06-23','Net 30',60.00,0.60,3.00,0.00,0.00,62.40,'','2026-06-23 11:41:49.923387','2026-06-23 11:41:49.923387',0,5,NULL,1,1,34,''),(68,'PI/PLK/26/27/0050','2026-06-23','','2026-06-23','Net 30',50.00,0.00,2.50,0.00,0.00,52.50,'','2026-06-23 11:48:15.430557','2026-06-23 11:48:15.430557',0,5,NULL,1,1,34,''),(69,'PI/PLK/26/27/0051','2026-06-24','','2026-06-24','Net 30',250.00,2.50,12.50,0.00,0.00,260.00,'','2026-06-24 04:28:23.243589','2026-06-24 04:28:23.243589',0,5,NULL,1,1,34,''),(70,'PI/PLK/26/27/0052','2026-06-24','',NULL,'Net 30',320.00,3.20,16.00,0.00,0.00,332.80,'','2026-06-24 04:58:47.555420','2026-06-24 04:58:47.555420',0,5,NULL,1,1,34,''),(71,'PI/PLK/26/27/0053','2026-06-24','',NULL,'Net 30',550.00,5.50,27.50,0.00,0.00,572.00,'','2026-06-24 05:13:16.158220','2026-06-24 05:13:16.158220',0,5,NULL,1,1,60,''),(72,'PI/PLK/26/27/0054','2026-06-24','','2026-06-24','Net 30',600.00,6.00,30.00,0.00,0.00,624.00,'','2026-06-24 05:45:00.787781','2026-06-24 05:45:00.787781',0,5,NULL,1,1,34,''),(73,'PI/PLK/26/27/0055','2026-06-24','','2026-06-24','Net 30',2500.00,25.00,125.00,0.00,0.00,2600.00,'','2026-06-24 06:50:16.820001','2026-06-24 06:50:16.820001',0,5,NULL,1,1,34,''),(74,'PI/PLK/26/27/0056','2026-06-24','','2026-06-24','Net 30',750.00,0.00,37.50,0.00,0.00,787.50,'','2026-06-24 07:45:25.536882','2026-06-24 07:45:25.536882',0,5,NULL,1,1,34,''),(77,'PI/PLK/26/27/0057','2026-06-24','',NULL,'Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-24 08:13:22.878279','2026-06-24 08:13:22.878279',0,5,NULL,1,1,34,''),(80,'PI/PLK/26/27/0058','2026-06-24','','2026-06-24','Net 30',600.00,0.00,30.00,0.00,0.00,630.00,'','2026-06-24 08:24:38.071481','2026-06-24 08:24:38.071481',0,5,NULL,1,1,72,''),(81,'PI/PLK/26/27/0059','2026-06-24','','2026-06-24','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-24 08:33:19.087452','2026-06-24 08:33:19.087452',0,5,NULL,1,1,34,''),(82,'PI/PLK/26/27/0060','2026-06-24','','2026-06-24','Net 30',700.00,7.00,35.00,0.00,0.00,728.00,'','2026-06-24 08:39:12.065519','2026-06-24 08:39:12.065519',0,5,NULL,1,1,34,''),(83,'PI/PLK/26/27/0061','2026-06-24','','2026-06-24','Net 30',1100.00,0.00,55.00,0.00,0.00,1155.00,'','2026-06-24 08:41:34.093303','2026-06-24 08:41:34.093303',0,5,NULL,1,1,83,''),(84,'PI/PLK/26/27/0062','2026-06-25','','2026-06-25','Net 30',589.00,5.89,29.45,0.00,0.00,612.56,'','2026-06-25 05:06:57.554245','2026-06-25 05:06:57.554245',0,5,NULL,1,1,94,''),(85,'PI/PLK/26/27/0063','2026-06-25','','2026-06-25','Net 30',6460.00,0.00,323.00,0.00,0.00,6783.00,'','2026-06-25 06:05:37.032322','2026-06-25 06:05:37.032322',0,5,NULL,1,1,34,''),(86,'PI/PLK/26/27/0064','2026-06-25','',NULL,'Net 30',750.00,0.00,37.50,0.00,0.00,787.50,'','2026-06-25 06:08:39.780429','2026-06-25 06:08:39.780429',0,5,NULL,1,1,34,''),(87,'PI/PLK/26/27/0065','2026-06-25','',NULL,'Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-25 06:30:26.983408','2026-06-25 06:30:26.983408',0,5,NULL,1,2,41,''),(88,'PI/PLK/26/27/0066','2026-06-25','SA-78892','2026-06-25','Net 30',1500.00,0.00,75.00,0.00,0.00,1575.00,'','2026-06-25 06:46:05.083133','2026-06-25 06:46:05.083133',0,5,NULL,1,1,60,''),(89,'PI/PLK/26/27/0067','2026-06-25','','2026-06-25','Net 30',1360.00,0.00,68.00,0.00,0.00,1428.00,'','2026-06-25 06:54:29.197392','2026-06-25 06:54:29.197392',0,5,NULL,1,1,67,''),(90,'PI/PLK/26/27/0068','2026-06-25','','2026-06-25','Net 30',1600.00,16.00,80.00,0.00,0.00,1664.00,'','2026-06-25 07:12:23.325386','2026-06-25 07:12:23.325386',0,5,NULL,1,6,70,''),(91,'PI/PLK/26/27/0069','2026-06-25','',NULL,'Net 30',1500.00,15.00,75.00,0.00,0.00,1560.00,'','2026-06-25 07:35:09.480505','2026-06-25 07:35:09.480505',0,5,NULL,1,1,34,''),(92,'PI/PLK/26/27/0070','2026-06-25','','2026-06-25','Net 30',600.00,6.00,30.00,0.00,0.00,624.00,'','2026-06-25 07:41:14.522834','2026-06-25 07:41:14.522834',0,5,NULL,1,1,34,''),(93,'PI/PLK/26/27/0071','2026-06-25','',NULL,'Net 30',4200.00,0.00,210.00,0.00,0.00,4410.00,'','2026-06-25 08:27:09.135113','2026-06-25 08:27:09.135113',0,5,NULL,1,2,98,''),(94,'PI/PLK/26/27/0072','2026-06-25','',NULL,'Net 30',2175.00,0.00,108.75,0.00,0.00,2283.75,'','2026-06-25 08:33:39.985722','2026-06-25 08:33:39.985722',0,5,NULL,1,1,98,''),(102,'PI/PLK/26/27/0073','2026-06-25','','2026-06-25','Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-25 09:28:10.349424','2026-06-25 09:28:10.349424',0,5,NULL,1,1,94,''),(103,'PI/PLK/26/27/0074','2026-06-25','','2026-06-25','Net 30',500.00,0.00,25.00,0.00,0.00,525.00,'','2026-06-25 09:29:39.987644','2026-06-25 09:29:39.987644',0,5,NULL,1,1,94,''),(104,'PI/PLK/26/27/0075','2026-06-25','','2026-06-25','Net 30',700.00,0.00,35.00,0.00,0.00,735.00,'','2026-06-25 09:34:16.232793','2026-06-25 09:34:16.232793',0,5,NULL,1,1,67,''),(105,'PI/PLK/26/27/0076','2026-07-01','BILL_2992','2026-07-01','Net 30',1540.00,15.40,77.00,0.00,0.00,1601.60,'','2026-07-01 05:53:32.580785','2026-07-01 05:53:32.580785',0,5,NULL,1,1,34,''),(106,'PI/PLK/26/27/0077','2026-07-01','St-1011','2026-07-01','Net 30',1320.00,0.00,66.00,0.00,0.00,1386.00,'','2026-07-01 06:21:48.519449','2026-07-01 06:21:48.519449',0,5,NULL,1,1,34,''),(107,'PI/PLK/26/27/0078','2026-07-01','','2026-07-01','Net 30',960.00,0.00,48.00,0.00,0.00,1008.00,'','2026-07-01 06:58:25.706515','2026-07-01 06:58:25.706515',0,5,NULL,1,1,34,''),(109,'PI/PLK/26/27/0079','2026-07-02','BAT-29921','2026-07-02','Net 30',1120.00,0.00,11.20,0.00,0.00,1131.20,'','2026-07-02 04:37:53.267747','2026-07-02 04:37:53.267747',0,5,NULL,1,1,34,'');
/*!40000 ALTER TABLE `ayurvedaapp_purchaseinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_purchaseinvoiceitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_purchaseinvoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_purchaseinvoiceitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `batch_no` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `hsn_code` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int NOT NULL,
  `free_quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount_percent` decimal(5,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `gst_percent` decimal(5,2) NOT NULL,
  `gst_amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `wholesalerate` decimal(10,2) NOT NULL,
  `retalrate` decimal(10,2) NOT NULL,
  `invoice_id` bigint NOT NULL,
  `medicine_id` bigint NOT NULL,
  `company_id` bigint DEFAULT NULL,
  `manufacturer_date` date DEFAULT NULL,
  `base_quantity` decimal(12,2) NOT NULL,
  `base_rate` decimal(12,2) NOT NULL,
  `total_base_quantity` decimal(12,2) DEFAULT NULL,
  `unt_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_purchase_invoice_id_6eff2001_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_purchase_medicine_id_d7acd0f4_fk_ayurvedaa` (`medicine_id`),
  KEY `ayurvedaapp_purchase_company_id_66bb5648_fk_ayurvedaa` (`company_id`),
  KEY `ayurvedaapp_purchase_unt_id_ecaf3905_fk_ayurvedaa` (`unt_id`),
  CONSTRAINT `ayurvedaapp_purchase_company_id_66bb5648_fk_ayurvedaa` FOREIGN KEY (`company_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_invoice_id_6eff2001_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_purchaseinvoice` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_medicine_id_d7acd0f4_fk_ayurvedaa` FOREIGN KEY (`medicine_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_unt_id_ecaf3905_fk_ayurvedaa` FOREIGN KEY (`unt_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_purchaseinvoiceitem`
--

LOCK TABLES `ayurvedaapp_purchaseinvoiceitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseinvoiceitem` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_purchaseinvoiceitem` VALUES (1,'tes','2026-06-17','',10,30,23.00,0.00,0.00,5.00,1.15,966.00,44.00,444.00,8,1680,NULL,NULL,0.00,0.00,0.00,NULL),(2,'test','2026-06-17','',1,0,45.00,0.00,0.00,5.00,2.25,47.25,0.00,45.00,13,1683,NULL,NULL,0.00,0.00,0.00,NULL),(3,'t','2026-06-17','',1,0,4.00,0.00,0.00,5.00,0.20,4.20,0.00,0.00,15,1715,NULL,NULL,0.00,0.00,0.00,NULL),(4,'GAT-1277','2026-07-11','',1,0,546.00,0.00,0.00,5.00,27.30,573.30,0.00,0.00,16,2926,NULL,NULL,0.00,0.00,0.00,NULL),(5,'BAR-2783','2026-07-03','',1,0,560.00,0.00,0.00,5.00,28.00,588.00,0.00,0.00,17,1712,153,NULL,0.00,0.00,0.00,NULL),(6,'STAB-7289','2026-06-26','',5,0,500.00,0.00,0.00,5.00,25.00,2625.00,0.00,0.00,18,2131,147,NULL,0.00,0.00,0.00,NULL),(7,'STag-8389','2026-07-10','',1,0,600.00,0.00,0.00,5.00,30.00,630.00,0.00,0.00,19,2108,150,NULL,0.00,0.00,0.00,NULL),(8,'hkhj-245','2026-07-10','',1,0,500.00,0.00,0.00,5.00,25.00,525.00,0.00,0.00,19,1817,151,NULL,0.00,0.00,0.00,NULL),(9,'barth','2026-07-11','',1,0,50.00,0.00,0.00,5.00,2.50,52.50,70.00,0.00,20,1738,159,'2026-06-20',0.00,0.00,0.00,NULL),(10,'zedrfgh','2026-07-01','',1,0,600.00,0.00,0.00,5.00,30.00,630.00,0.00,0.00,21,1878,154,'2026-02-01',0.00,0.00,0.00,NULL),(11,'SAZB','2026-12-01','',1,0,500.00,0.00,0.00,5.00,25.00,525.00,0.00,0.00,22,1746,147,'2026-06-01',0.00,0.00,0.00,NULL),(12,'DAT-356','2034-10-01','',1,0,700.00,0.00,0.00,5.00,35.00,735.00,0.00,0.00,23,1679,358,'2026-06-01',0.00,0.00,0.00,NULL),(13,'DAT-356','2034-10-01','',1,0,700.00,0.00,0.00,5.00,35.00,735.00,0.00,0.00,25,1679,358,'2026-06-01',0.00,0.00,0.00,NULL),(14,'DAT-356','2034-10-01','',1,0,700.00,0.00,0.00,5.00,35.00,735.00,0.00,0.00,26,1679,358,'2026-06-01',0.00,0.00,0.00,NULL),(15,'DAT-356','2034-10-01','',1,0,700.00,0.00,0.00,5.00,35.00,735.00,0.00,0.00,28,1679,358,'2026-06-01',0.00,0.00,0.00,NULL),(16,'DAT-356','2034-10-01','',5,0,700.00,0.00,0.00,5.00,35.00,3675.00,0.00,0.00,29,1878,358,'2026-06-01',0.00,0.00,0.00,NULL),(17,'DAT-356','2034-10-01','',1,0,700.00,0.00,0.00,5.00,35.00,735.00,0.00,0.00,30,1679,152,'2026-06-01',0.00,0.00,0.00,NULL),(18,'BAT-3732','2026-12-01','',1,1,50.00,0.00,0.00,5.00,2.50,52.50,0.00,0.00,31,1746,152,'2026-06-01',0.00,0.00,0.00,NULL),(19,'BAT-3732','2026-12-01','',1,1,50.00,0.00,0.00,5.00,2.50,52.50,0.00,0.00,32,1746,152,'2026-06-01',0.00,0.00,0.00,NULL),(20,'ab12300','2027-08-01','',10,2,22.00,0.00,0.00,5.00,1.10,231.00,220.00,220.00,33,1679,212,'2026-08-01',0.00,0.00,0.00,NULL),(21,'test','2026-12-01','',10,10,200.00,0.00,0.00,5.00,10.00,2100.00,0.00,800.00,33,1678,148,'2026-06-01',0.00,0.00,0.00,NULL),(22,'ab12300','2027-08-01','',100,20,220.00,0.00,0.00,0.00,0.00,22000.00,500.00,700.00,34,1679,212,'2026-08-01',0.00,0.00,0.00,NULL),(23,'DAT-356','2026-12-01','',1,0,700.00,0.00,0.00,5.00,35.00,735.00,0.00,800.00,35,1878,358,'2026-06-01',0.00,0.00,0.00,NULL),(24,'DAT-356','2026-12-01','',1,0,700.00,0.00,0.00,5.00,35.00,735.00,0.00,800.00,39,1878,358,'2026-06-01',0.00,0.00,0.00,NULL),(25,'BAR-2783','2026-07-01','',5,5,200.00,0.00,0.00,5.00,10.00,1050.00,250.00,300.00,41,1712,153,'2026-06-01',0.00,0.00,0.00,NULL),(26,'STAB-7289','2026-06-01','',1,1,500.00,0.00,0.00,5.00,25.00,525.00,0.00,0.00,42,2131,147,'2026-06-01',0.00,0.00,0.00,NULL),(27,'SACh-2789','2026-06-01','',1,1,560.00,0.00,0.00,5.00,28.00,588.00,0.00,0.00,43,2131,358,'2026-06-01',0.00,0.00,0.00,NULL),(28,'SA-78728','2026-12-01','',1,1,500.00,0.00,0.00,5.00,25.00,525.00,600.00,0.00,44,1746,149,'2026-06-01',0.00,0.00,0.00,NULL),(29,'BAT-24656','2026-12-01','',1,0,500.00,0.00,0.00,5.00,25.00,525.00,0.00,0.00,45,1746,422,'2026-06-01',0.00,0.00,0.00,NULL),(30,'ygh','2026-12-01','',1,1,50.00,0.00,0.00,5.00,2.50,52.50,0.00,0.00,47,1746,422,'2026-06-01',0.00,0.00,0.00,NULL),(31,'SAC5t6','2026-12-01','',5,2,50.00,0.00,0.00,0.00,0.00,250.00,0.00,50.00,51,1746,422,'2026-06-01',0.00,0.00,0.00,NULL),(32,'BAT-3939','2026-12-01','',5,5,50.00,0.00,0.00,0.00,0.00,250.00,0.00,50.00,52,1746,225,'2026-06-01',0.00,0.00,0.00,NULL),(33,'BAT-3682','2026-12-01','',2,1,700.00,0.00,0.00,0.00,0.00,1400.00,0.00,700.00,53,1738,422,'2026-06-01',0.00,0.00,0.00,NULL),(34,'BAT-3788','2026-12-01','',1,1,500.00,0.00,0.00,0.00,0.00,500.00,0.00,500.00,53,1738,390,'2026-04-01',0.00,0.00,0.00,NULL),(35,'BAT-2672','2026-06-01','5673',3,1,50.00,0.00,0.00,0.00,0.00,150.00,0.00,70.00,54,2196,358,'2026-06-01',0.00,0.00,0.00,NULL),(36,'SACGhj-4567','2026-12-01','',8,5,60.00,0.00,0.00,0.00,0.00,480.00,0.00,90.00,55,1746,293,'2026-06-01',0.00,0.00,0.00,NULL),(37,'BATc-3443','2026-12-01','',5,3,100.00,0.00,0.00,0.00,0.00,500.00,0.00,0.00,56,2194,225,'2026-06-01',0.00,0.00,0.00,NULL),(38,'BATw-893','2026-12-01','30049099',1,1,50.00,0.00,0.00,0.00,0.00,50.00,0.00,70.00,57,1659,358,'2026-06-01',0.00,0.00,0.00,NULL),(39,'BAT-2892','2026-12-01','',3,1,50.00,0.00,0.00,0.00,0.00,150.00,0.00,90.00,58,1746,212,'2026-06-01',0.00,0.00,0.00,NULL),(40,'BAT-27892','2026-12-01','',3,1,50.00,0.00,0.00,0.00,0.00,150.00,0.00,90.00,59,1738,212,'2026-06-01',0.00,0.00,0.00,NULL),(41,'BAT-27892','2026-12-01','',3,1,50.00,0.00,0.00,0.00,0.00,150.00,0.00,90.00,60,1738,212,'2026-06-01',0.00,0.00,0.00,NULL),(42,'SA-4677','2026-12-01','',2,1,60.00,0.00,0.00,0.00,0.00,120.00,0.00,90.00,61,1738,422,'2026-06-01',0.00,0.00,0.00,NULL),(43,'BAt-4567','2026-12-01','',1,1,70.00,0.00,0.00,0.00,0.00,70.00,0.00,90.00,62,1746,422,'2026-06-01',0.00,0.00,0.00,NULL),(44,'BAT-37898','2026-12-01','',1,1,50.00,0.00,0.00,0.00,0.00,50.00,0.00,60.00,63,1738,422,'2026-06-01',0.00,0.00,0.00,NULL),(45,'BAT-28892','2026-12-01','',1,1,50.00,0.00,0.00,0.00,0.00,50.00,0.00,0.00,64,1746,422,'2026-06-01',0.00,0.00,0.00,NULL),(46,'BAT-28892','2026-12-01','',1,1,50.00,0.00,0.00,0.00,0.00,50.00,0.00,0.00,65,1746,422,'2026-06-01',0.00,0.00,0.00,NULL),(47,'BAT-2892','2026-12-01','',1,1,50.00,0.00,0.00,0.00,0.00,50.00,0.00,90.00,66,1746,212,'2026-06-01',0.00,0.00,0.00,NULL),(48,'SAT-34567','2026-12-01','',1,1,60.00,0.00,0.00,0.00,0.00,60.00,0.00,90.00,67,1738,422,'2026-06-01',0.00,0.00,0.00,NULL),(49,'BAT-2899','2026-12-01','',1,1,50.00,0.00,0.00,0.00,0.00,50.00,0.00,0.00,68,1738,422,'2026-06-01',0.00,0.00,0.00,NULL),(50,'SAP-7892','2026-12-01','',1,1,250.00,0.00,0.00,0.00,0.00,250.00,0.00,270.00,69,1746,371,'2026-06-01',5.00,50.00,5.00,NULL),(51,'BAT-23456','2026-12-01','',10,1,25.00,0.00,0.00,0.00,0.00,250.00,0.00,50.00,70,1753,212,'2026-06-01',5.00,10.00,50.00,NULL),(52,'BAT-2782','2026-12-01','',1,1,70.00,0.00,0.00,0.00,0.00,70.00,0.00,90.00,70,1746,422,'2026-06-01',0.00,0.00,0.00,NULL),(53,'BAT-689302','2026-12-01','',5,3,60.00,0.00,0.00,0.00,0.00,300.00,0.00,90.00,71,1746,212,'2026-06-01',1.00,0.00,0.00,NULL),(54,'BAt-3455','2026-12-01','',5,1,50.00,0.00,0.00,0.00,0.00,250.00,0.00,60.00,71,1878,422,'2026-06-01',10.00,6.00,50.00,NULL),(55,'BAT-27898','2026-12-01','',6,1,50.00,0.00,0.00,0.00,0.00,300.00,0.00,120.00,72,1700,422,'2026-06-01',15.00,8.00,90.00,NULL),(56,'BAT-82921','2026-12-01','',6,1,50.00,0.00,0.00,0.00,0.00,300.00,0.00,90.00,72,2131,195,'2026-06-01',1.00,0.00,0.00,NULL),(57,'BAt-2783','2026-12-01','',10,5,200.00,0.00,0.00,0.00,0.00,2000.00,0.00,240.00,73,1878,358,'2026-06-01',20.00,12.00,200.00,NULL),(58,'BAT-178993','2026-12-01','',10,20,50.00,0.00,0.00,0.00,0.00,500.00,0.00,90.00,73,1738,422,'2026-06-01',0.00,0.00,0.00,NULL),(59,'BAT-2682','2026-12-01','',15,0,50.00,0.00,0.00,0.00,0.00,750.00,0.00,60.00,74,1742,212,'2026-06-01',10.00,6.00,150.00,NULL),(60,'BAT-2682','2026-12-01','',10,0,50.00,0.00,0.00,0.00,0.00,500.00,0.00,60.00,77,1742,212,'2026-06-01',10.00,6.00,100.00,45),(63,'BAT-29892','2026-12-01','',10,5,60.00,0.00,0.00,0.00,0.00,600.00,0.00,90.00,80,1746,212,'2026-06-01',0.00,0.00,0.00,7),(64,'APP-7892','2026-12-01','',10,2,50.00,0.00,0.00,0.00,0.00,500.00,0.00,70.00,81,1746,212,'2026-06-01',0.00,0.00,0.00,10),(65,'BAT-1899','2026-12-01','',10,5,20.00,0.00,0.00,0.00,0.00,200.00,0.00,40.00,81,1720,371,'2026-06-01',10.00,4.00,100.00,45),(66,'APP-7892','2026-12-01','',10,2,50.00,0.00,0.00,0.00,0.00,500.00,0.00,70.00,82,1746,212,'2026-06-01',0.00,0.00,0.00,10),(67,'BAT-1899','2026-12-01','',10,5,20.00,0.00,0.00,0.00,0.00,200.00,0.00,40.00,82,1720,371,'2026-06-01',10.00,4.00,100.00,45),(68,'BTA-25666','2026-12-01','',10,2,50.00,0.00,0.00,0.00,0.00,500.00,0.00,90.00,83,1746,212,'2026-06-01',0.00,0.00,0.00,7),(69,'BAT-2922','2026-12-01','',10,5,60.00,0.00,0.00,0.00,0.00,600.00,0.00,70.00,83,1881,422,'2026-06-01',15.00,4.67,225.00,46),(70,'BAT-7892','2026-12-01','',1,0,89.00,0.00,0.00,0.00,0.00,89.00,0.00,95.00,84,1746,371,'2026-06-01',20.00,4.75,20.00,47),(71,'BAT-2782','2026-12-01','',10,5,50.00,0.00,0.00,0.00,0.00,500.00,0.00,80.00,84,1741,422,'2026-06-01',0.00,0.00,0.00,9),(72,'Bat-267','2026-12-01','',10,1,40.00,0.00,0.00,0.00,0.00,400.00,0.00,50.00,85,1746,212,'2026-06-01',20.00,2.50,220.00,47),(73,'BAT-2455','2026-12-01','',1,0,60.00,0.00,0.00,0.00,0.00,60.00,0.00,80.00,85,1878,358,'2026-06-01',0.00,0.00,0.00,10),(74,'BAT-37883','2026-12-01','',10,5,100.00,0.00,0.00,0.00,0.00,1000.00,0.00,120.00,85,1878,293,'2026-06-01',20.00,6.00,300.00,47),(75,'AN-3783','2026-12-01','',10,2,500.00,0.00,0.00,0.00,0.00,5000.00,0.00,300.00,85,1881,212,'2026-06-01',0.00,0.00,0.00,10),(76,'BAT-26778','2026-12-01','',3,5,50.00,0.00,0.00,0.00,0.00,150.00,0.00,80.00,86,1746,195,'2026-06-01',20.00,4.00,0.00,47),(77,'BAT-2892','2026-12-01','',10,5,60.00,0.00,0.00,0.00,0.00,600.00,0.00,90.00,86,2131,358,'2026-06-01',0.00,0.00,0.00,10),(78,'twest','2026-12-01','',10,5,20.00,0.00,0.00,0.00,0.00,200.00,12.00,40.00,87,1680,294,'2026-06-01',10.00,4.00,150.00,45),(79,'BAT-2678','2026-12-01','',10,5,30.00,0.00,0.00,0.00,0.00,300.00,0.00,50.00,87,1746,212,'2026-06-01',0.00,0.00,150.00,10),(80,'BAT-288990','2026-12-01','',10,5,60.00,0.00,0.00,0.00,0.00,600.00,0.00,80.00,88,1878,422,'2026-06-01',10.00,8.00,150.00,45),(81,'BAT-2445','2026-12-01','',10,5,50.00,0.00,0.00,0.00,0.00,500.00,0.00,80.00,88,1803,358,'2026-03-01',0.00,0.00,0.00,10),(82,'BAT-2782','2026-12-01','',10,2,40.00,0.00,0.00,0.00,0.00,400.00,0.00,70.00,88,1752,358,'2026-06-01',0.00,0.00,0.00,9),(83,'BAT-8900','2026-12-01','',10,0,60.00,0.00,0.00,0.00,0.00,600.00,0.00,80.00,89,1753,358,'2026-06-01',12.00,6.67,120.00,49),(84,'BAT-8999','2026-12-01','',1,4,60.00,0.00,0.00,0.00,0.00,60.00,0.00,90.00,89,2131,358,'2026-06-01',0.00,0.00,0.00,22),(85,'BAT-7889','2026-12-01','',10,5,70.00,0.00,0.00,0.00,0.00,700.00,0.00,100.00,89,2194,358,'2026-06-01',25.00,4.00,375.00,48),(86,'T-352','2026-12-01','',10,2,50.00,0.00,0.00,0.00,0.00,500.00,0.00,70.00,90,2194,371,'2026-06-01',0.00,0.00,0.00,22),(87,'BAt-789','2026-12-01','',12,0,50.00,0.00,0.00,0.00,0.00,600.00,0.00,80.00,90,1881,358,'2026-06-01',20.00,4.00,240.00,48),(88,'AT-7822','2026-12-01','',10,2,50.00,0.00,0.00,0.00,0.00,500.00,0.00,60.00,90,1754,195,'2026-06-01',0.00,0.00,0.00,18),(89,'BAT-67892','2026-12-01','',2,2,50.00,0.00,0.00,0.00,0.00,100.00,0.00,90.00,91,1878,293,'2026-02-01',25.00,3.60,100.00,48),(90,'BAt-39902','2026-12-01','',10,2,50.00,0.00,0.00,0.00,0.00,500.00,0.00,60.00,91,2131,358,'2026-02-01',10.00,6.00,120.00,45),(91,'BAT-8921','2026-12-01','',15,2,60.00,0.00,0.00,0.00,0.00,900.00,0.00,90.00,91,2996,358,'2026-06-01',10.00,9.00,170.00,45),(92,'BAT-8921','2026-12-01','',10,2,60.00,0.00,0.00,0.00,0.00,600.00,0.00,90.00,92,2996,358,'2026-06-01',10.00,8.00,120.00,45),(93,'ab12300','2027-08-01','',10,20,25.00,0.00,0.00,0.00,0.00,250.00,15.00,30.00,93,1679,212,'2026-08-01',0.00,0.00,0.00,18),(94,'test','2026-12-01','',10,0,45.00,0.00,0.00,0.00,0.00,450.00,12.00,50.00,93,1678,148,'2026-06-01',1.00,50.00,10.00,8),(95,'teststrip','2026-12-01','',100,0,35.00,0.00,0.00,0.00,0.00,3500.00,0.00,56.00,93,3072,212,'2026-01-01',10.00,5.60,1000.00,45),(96,'test','2026-08-01','',10,0,200.00,0.00,0.00,0.00,0.00,2000.00,0.00,200.00,94,1678,148,'2026-06-01',1.00,200.00,10.00,8),(97,'teststrip','2026-12-01','',5,3,35.00,0.00,0.00,0.00,0.00,175.00,0.00,56.00,94,3072,212,'2026-01-01',10.00,5.60,80.00,45),(102,'BAT-7889','2026-12-01','',10,5,50.00,0.00,0.00,0.00,0.00,500.00,0.00,60.00,102,1738,293,'2026-06-01',0.00,0.00,0.00,15),(103,'BAT-7889','2026-12-01','',10,5,50.00,0.00,0.00,0.00,0.00,500.00,0.00,60.00,103,1738,293,'2026-06-01',0.00,0.00,0.00,15),(104,'BAT-7889','2026-12-01','',10,10,70.00,0.00,0.00,0.00,0.00,700.00,0.00,100.00,104,2194,358,'2026-06-01',25.00,4.00,500.00,48),(105,'BAT-38003','2026-12-01','',14,4,60.00,0.00,0.00,0.00,0.00,840.00,0.00,90.00,105,1742,225,'2026-07-01',0.00,0.00,0.00,15),(106,'BAT-2902','2026-12-01','',14,4,50.00,0.00,0.00,0.00,0.00,700.00,0.00,90.00,105,3094,195,'2026-07-01',12.00,7.50,216.00,49),(107,'BAT-1002','2026-12-01','',10,5,60.00,0.00,0.00,0.00,0.00,600.00,0.00,90.00,106,1700,422,'2026-07-01',10.00,9.00,150.00,45),(108,'BAT-29012','2026-12-01','',12,0,60.00,0.00,0.00,0.00,0.00,720.00,0.00,90.00,106,1701,212,'2026-07-01',0.00,0.00,0.00,10),(109,'BAt-1001','2026-12-01','',15,5,60.00,0.00,0.00,0.00,0.00,900.00,0.00,90.00,107,1699,212,'2026-07-01',0.00,0.00,0.00,7),(110,'dgrr','2026-12-01','30049099',1,0,60.00,0.00,0.00,0.00,0.00,60.00,0.00,90.00,107,1659,422,'2026-07-01',0.00,0.00,0.00,7),(111,'BAT-2002','2026-12-01','',14,3,80.00,0.00,0.00,0.00,0.00,1120.00,0.00,100.00,109,2110,209,NULL,15.00,6.67,255.00,46);
/*!40000 ALTER TABLE `ayurvedaapp_purchaseinvoiceitem` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_reorderleveldetails`
--

LOCK TABLES `ayurvedaapp_reorderleveldetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_reorderleveldetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_reorderleveldetails` VALUES (2,'1',146,1659),(3,'100',146,3237);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_role`
--

LOCK TABLES `ayurvedaapp_role` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_role` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_role` VALUES (1,'Admin',1),(9,'CMO',1),(10,'Resident Doctor',1),(12,'Wellness Therapist - Male',1),(13,'Wellness Therapist - Female',1),(15,'Front Office',1),(16,'Tisser Role',1),(18,'superadmin',1),(21,'Front office & Pharmacy',1),(23,'zoho front office',1),(25,'Doctor',1),(26,'Inventory Management',1),(27,'Pharmacist',1),(28,'lab',1),(29,'Nu',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_roleassign`
--

LOCK TABLES `ayurvedaapp_roleassign` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_roleassign` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_roleassign` VALUES (168,1,5,1,1),(173,1,5,26,185),(174,1,5,27,189),(175,1,5,15,190),(176,1,5,25,193),(177,1,5,25,196),(178,1,5,25,198),(179,1,5,25,201),(180,1,5,28,202),(181,1,5,29,203);
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
  `nursing_charge` decimal(10,2) DEFAULT NULL,
  `water_electricity_charge` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_room_det_branchidrm_id_204c936d_fk_ayurvedaa` (`branchidrm_id`),
  CONSTRAINT `ayurvedaapp_room_det_branchidrm_id_204c936d_fk_ayurvedaa` FOREIGN KEY (`branchidrm_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_room_details`
--

LOCK TABLES `ayurvedaapp_room_details` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_room_details` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_room_details` VALUES (1,'floor 1','1',NULL,NULL,0,'single','400',5,'122','Ward',NULL,NULL),(2,'Floor 2','blck1','Room1','Premium',0,'single','500',5,NULL,'Room',NULL,NULL),(3,'2','2',NULL,NULL,0,'single','100',5,'121','Ward',NULL,NULL),(4,'2','2','121','Single',1,'single','500',5,NULL,'Room',NULL,NULL),(5,'1','212','21','Premium',0,'single','120',5,NULL,'Room',150.00,150.00),(6,'3','5','125','Single',1,'single','100',5,NULL,'Room',200.00,300.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_roomchangelog`
--

LOCK TABLES `ayurvedaapp_roomchangelog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_roomchangelog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_roomchangelog` VALUES (1,'2026-06-22','09:57:44.340160',1,500.00,500.00,'','2026-06-22 09:57:44.344156',NULL,2,9,2),(2,'2026-06-22','09:58:20.522798',1,500.00,500.00,'','2026-06-22 09:58:20.525797',NULL,2,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_staffallocation`
--

LOCK TABLES `ayurvedaapp_staffallocation` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_staffallocation` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_staffallocation` VALUES (1,'active','mnsadmin','mnsadmin',5,8,3,1),(168,'active','teststaff','teststaff',5,4,13,174),(177,'inactive','anu','anu',5,5,5,184),(178,'active','invmanager','invmanager',5,9,12,185),(179,'active','test','test',5,9,1,186),(180,'active','pharmacist','pharmacist',5,6,4,189),(181,'active','frntstaff','frntstaff',5,3,8,190),(182,'active','VIJAYALAKSHMI','1234',5,15,13,193),(183,'active','kamna123','kamna123',5,16,13,195),(184,'active','abdul123','abdul123',5,17,13,196),(185,'active','fayiz123','fayiz123',5,18,13,197),(186,'active','akhil123','akhil123',5,19,13,198),(187,'active','doctor','doctor',5,14,13,201),(188,'active','lab','lab',5,10,10,202),(189,'active','nurse','nurse',5,4,17,203),(190,'active','doc','doc',5,15,3,204),(191,'active','testpeter','testpeter',5,4,3,205);
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_staffdetails`
--

LOCK TABLES `ayurvedaapp_staffdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_staffdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_staffdetails` VALUES (1,'Anu','K','testaddress','Female','anu@gmail.com','9087675645','BNYS\r\n                    ','2025-07-01','ertt',0,NULL),(174,'test Staff','staff','','Male','teststaff@gmail.com','9048087187','                                            \r\n           MBBS         \r\n                    ','2026-03-17','234567',0,NULL),(184,'Anu','','','Female','','','                      \r\n                    ',NULL,'',1,'2026-05-05'),(185,'inventory manager','','','Female','','','                      \r\n                    ',NULL,'',1,'2026-05-05'),(186,'test Staff1','tst','tstt','Male','test@gmail.com','0123456789','                      \r\n                    ',NULL,'',0,NULL),(187,'staff11','','','Male','','9999998989','                      \r\n                    ',NULL,'',0,NULL),(188,'test stf','','','Male','','9999998989','                      \r\n                    ','2026-05-12','',0,NULL),(189,'pharmacist','','','Female','','','                      \r\n                    ',NULL,'',0,NULL),(190,'frontofficestaff','','','Female','','','                      \r\n                    ',NULL,'',0,NULL),(191,'Dr.Kamnakrishnakumar','Krishnakumar','','Female','','0491-2556326','                                  MS Gynaec&Obs.          \r\n                    \r\n                    ','2026-05-27','',0,NULL),(192,'Dr.Kamnakrishnakumar','','','Female','','','                      \r\n                    ',NULL,'',0,NULL),(193,'VIJAYALAKSHMI','K','','Female','','','                      \r\n                    ','2026-06-11','',0,NULL),(194,'AKHIL MATHEW JACOB','','','Male','','','                      ORTHOPEDIACS\r\n                    ','2026-06-11','',0,NULL),(195,'DR KAMNA KRISHNAKUMAR','','','Female','','','                      \r\n                    ',NULL,'',0,NULL),(196,'DR. ABDHUL NAWAS','','','Male','','','                      \r\n                    ',NULL,'',0,NULL),(197,'DR. FAYIZ ','','','Male','','','                      \r\n                    ',NULL,'',0,NULL),(198,'DR. Akhil mathew jacob ','','','Male','','','                      \r\n                    ',NULL,'',0,NULL),(199,'DR.FAYIZ','','','Male','','','                      SURGEON\r\n                    ','2026-06-11','',0,NULL),(200,'Dr.Abdul Nawas','.','palakkad','Male','','0491-2556326','                      MBBS DCH\r\n                    ','2026-06-01','',0,NULL),(201,'Kanagamani','','','Female','','134567891','                                            \r\n                    \r\n                    ',NULL,'',0,NULL),(202,'lab','','','Male','','1234567890','                      \r\n                    ','2026-06-16','',0,NULL),(203,'Nurses','','','Female','','1234567890','                      \r\n                    ','2026-06-16','',0,NULL),(204,'test doctor','d','','Male','','','                      \r\n                    ',NULL,'',0,NULL),(205,'testpeter','pp','ghfhfgjfghjfghfghfghfgh','Male','test123@gmail.com','8909878789','                      \r\n                    ','2026-07-16','',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stockauditlog`
--

LOCK TABLES `ayurvedaapp_stockauditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stockauditlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_stockauditlog` VALUES (9,'DELETE',205,'2026-06-16','16:10:28.050928',5,3113,189,97,6,NULL),(10,'PURCHASE',40,'2026-06-17','07:08:14.452846',5,1680,1,1036,6,'Invoice: PI/PLK/26/27/0002 | Supplier Bill:  | Batch: tes'),(11,'PURCHASE',1,'2026-06-17','07:20:26.577865',5,1715,1,1037,1,'Invoice: PI/PLK/26/27/0007 | Supplier Bill:  | Batch: t'),(12,'PURCHASE',1,'2026-06-18','10:07:38.946980',5,2926,1,1038,1,'Invoice: PI/PLK/26/27/0008 | Supplier Bill:  | Batch: GAT-1277'),(13,'PURCHASE',1,'2026-06-18','10:09:38.253901',5,1712,1,1039,1,'Invoice: PI/PLK/26/27/0009 | Supplier Bill:  | Batch: BAR-2783'),(14,'PURCHASE',5,'2026-06-18','10:19:34.255689',5,2131,1,1040,1,'Invoice: PI/PLK/26/27/0010 | Supplier Bill: SP-27292 | Batch: STAB-7289'),(15,'PURCHASE',1,'2026-06-18','10:21:42.875720',5,2108,1,1041,1,'Invoice: PI/PLK/26/27/0011 | Supplier Bill:  | Batch: STag-8389'),(16,'PURCHASE',1,'2026-06-18','10:21:42.939384',5,1817,1,1042,1,'Invoice: PI/PLK/26/27/0011 | Supplier Bill:  | Batch: hkhj-245'),(17,'PURCHASE',1,'2026-06-20','04:26:46.922186',5,1738,1,1043,1,'Invoice: PI/PLK/26/27/0012 | Supplier Bill:  | Batch: barth'),(18,'PURCHASE',1,'2026-06-20','04:57:47.427493',5,1878,1,1044,1,'Invoice: PI/PLK/26/27/0013 | Supplier Bill:  | Batch: zedrfgh'),(19,'PURCHASE',1,'2026-06-20','05:10:55.707751',5,1746,1,1045,1,'Invoice: PI/PLK/26/27/0014 | Supplier Bill:  | Batch: SAZB'),(27,'PURCHASE',2,'2026-06-20','07:05:42.141983',5,1746,1,1050,1,'Invoice: PI/PLK/26/27/0021 | Supplier Bill:  | Batch: BAT-3732'),(28,'PURCHASE',2,'2026-06-20','07:07:31.471655',5,1746,1,1050,1,'Invoice: PI/PLK/26/27/0022 | Supplier Bill:  | Batch: BAT-3732'),(30,'PURCHASE',20,'2026-06-20','07:13:24.535852',5,1678,1,1052,1,'Invoice: PI/PLK/26/27/0023 | Supplier Bill: test | Batch: test'),(32,'PURCHASE',1,'2026-06-20','08:35:31.093918',5,1878,1,1046,1,'Invoice: PI/PLK/26/27/0026 | Supplier Bill:  | Batch: DAT-356'),(33,'PURCHASE',10,'2026-06-20','09:28:19.169790',5,1712,1,1039,1,'Invoice: PI/PLK/26/27/0027 | Supplier Bill:  | Batch: BAR-2783'),(34,'PURCHASE',2,'2026-06-20','10:28:58.389733',5,2131,1,1040,1,'Invoice: PI/PLK/26/27/0028 | Supplier Bill:  | Batch: STAB-7289'),(35,'PURCHASE',2,'2026-06-20','10:54:36.167725',5,2131,1,1057,1,'Invoice: PI/PLK/26/27/0029 | Supplier Bill:  | Batch: SACh-2789'),(36,'PURCHASE',2,'2026-06-20','10:58:40.883202',5,1746,1,1058,1,'Invoice: PI/PLK/26/27/0030 | Supplier Bill:  | Batch: SA-78728'),(37,'PURCHASE',1,'2026-06-20','11:03:22.793157',5,1746,1,1059,1,'Invoice: PI/PLK/26/27/0031 | Supplier Bill:  | Batch: BAT-24656'),(38,'PURCHASE',2,'2026-06-20','11:07:55.527765',5,1746,1,1060,1,'Invoice: PI/PLK/26/27/0032 | Supplier Bill:  | Batch: ygh'),(39,'PURCHASE',7,'2026-06-20','12:13:10.105126',5,1746,1,1061,1,'Invoice: PI/PLK/26/27/0033 | Supplier Bill:  | Batch: SAC5t6'),(40,'PURCHASE',10,'2026-06-20','12:18:23.559864',5,1746,1,1062,1,'Invoice: PI/PLK/26/27/0034 | Supplier Bill: gsdga | Batch: BAT-3939'),(41,'PURCHASE',3,'2026-06-22','04:18:26.459719',5,1738,1,1063,1,'Invoice: PI/PLK/26/27/0035 | Supplier Bill:  | Batch: BAT-3682'),(42,'PURCHASE',2,'2026-06-22','04:18:26.476739',5,1738,1,1064,1,'Invoice: PI/PLK/26/27/0035 | Supplier Bill:  | Batch: BAT-3788'),(43,'PURCHASE',4,'2026-06-22','06:08:35.460354',5,2196,1,1065,1,'Invoice: PI/PLK/26/27/0036 | Supplier Bill: Sa-893 | Batch: BAT-2672'),(44,'PURCHASE',13,'2026-06-22','06:48:26.457271',5,1746,1,1066,1,'Invoice: PI/PLK/26/27/0037 | Supplier Bill: DFg-644 | Batch: SACGhj-4567'),(45,'PURCHASE',8,'2026-06-22','06:51:17.116337',5,2194,1,1067,1,'Invoice: PI/PLK/26/27/0038 | Supplier Bill:  | Batch: BATc-3443'),(46,'PURCHASE',2,'2026-06-23','06:32:03.515862',5,1659,1,1068,1,'Invoice: PI/PLK/26/27/0039 | Supplier Bill:  | Batch: BATw-893'),(47,'PURCHASE',4,'2026-06-23','10:12:48.633804',5,1746,1,1069,1,'Invoice: PI/PLK/26/27/0040 | Supplier Bill:  | Batch: BAT-2892'),(48,'PURCHASE',4,'2026-06-23','10:51:11.986361',5,1738,1,1070,1,'Invoice: PI/PLK/26/27/0041 | Supplier Bill: BAT-4567 | Batch: BAT-27892'),(49,'PURCHASE',4,'2026-06-23','10:54:49.440315',5,1738,1,1070,1,'Invoice: PI/PLK/26/27/0042 | Supplier Bill: BAT-4567 | Batch: BAT-27892'),(50,'PURCHASE',3,'2026-06-23','11:02:34.493372',5,1738,1,1071,1,'Invoice: PI/PLK/26/27/0043 | Supplier Bill:  | Batch: SA-4677'),(51,'PURCHASE',2,'2026-06-23','11:03:27.293578',5,1746,1,1072,1,'Invoice: PI/PLK/26/27/0044 | Supplier Bill:  | Batch: BAt-4567'),(52,'PURCHASE',2,'2026-06-23','11:15:28.987873',5,1738,1,1073,1,'Invoice: PI/PLK/26/27/0045 | Supplier Bill:  | Batch: BAT-37898'),(53,'PURCHASE',2,'2026-06-23','11:21:08.047043',5,1746,1,1074,1,'Invoice: PI/PLK/26/27/0046 | Supplier Bill:  | Batch: BAT-28892'),(54,'PURCHASE',2,'2026-06-23','11:22:00.860172',5,1746,1,1074,1,'Invoice: PI/PLK/26/27/0047 | Supplier Bill:  | Batch: BAT-28892'),(55,'PURCHASE',2,'2026-06-23','11:36:48.563755',5,1746,1,1069,1,'Invoice: PI/PLK/26/27/0048 | Supplier Bill:  | Batch: BAT-2892'),(56,'PURCHASE',2,'2026-06-23','11:41:49.952278',5,1738,1,1075,1,'Invoice: PI/PLK/26/27/0049 | Supplier Bill: SA-87654 | Batch: SAT-34567'),(57,'PURCHASE',2,'2026-06-23','11:48:15.466739',5,1738,1,1076,1,'Invoice: PI/PLK/26/27/0050 | Supplier Bill:  | Batch: BAT-2899'),(58,'PURCHASE',2,'2026-06-24','04:28:23.290322',5,1746,1,1077,1,'Invoice: PI/PLK/26/27/0051 | Supplier Bill:  | Batch: SAP-7892'),(59,'PURCHASE',11,'2026-06-24','04:58:47.581641',5,1753,1,1078,1,'Invoice: PI/PLK/26/27/0052 | Supplier Bill:  | Batch: BAT-23456'),(60,'PURCHASE',2,'2026-06-24','04:58:47.594630',5,1746,1,1079,1,'Invoice: PI/PLK/26/27/0052 | Supplier Bill:  | Batch: BAT-2782'),(61,'PURCHASE',8,'2026-06-24','05:13:16.194539',5,1746,1,1080,1,'Invoice: PI/PLK/26/27/0053 | Supplier Bill:  | Batch: BAT-689302'),(62,'PURCHASE',6,'2026-06-24','05:13:16.210693',5,1878,1,1081,1,'Invoice: PI/PLK/26/27/0053 | Supplier Bill:  | Batch: BAt-3455'),(63,'PURCHASE',7,'2026-06-24','05:45:00.824927',5,1700,1,1082,1,'Invoice: PI/PLK/26/27/0054 | Supplier Bill:  | Batch: BAT-27898'),(64,'PURCHASE',7,'2026-06-24','05:45:00.848203',5,2131,1,1083,1,'Invoice: PI/PLK/26/27/0054 | Supplier Bill:  | Batch: BAT-82921'),(65,'PURCHASE',15,'2026-06-24','06:50:16.854149',5,1878,1,1084,1,'Invoice: PI/PLK/26/27/0055 | Supplier Bill:  | Batch: BAt-2783'),(66,'PURCHASE',30,'2026-06-24','06:50:16.883797',5,1738,1,1085,1,'Invoice: PI/PLK/26/27/0055 | Supplier Bill:  | Batch: BAT-178993'),(67,'PURCHASE',15,'2026-06-24','07:45:25.572027',5,1742,1,1086,1,'Invoice: PI/PLK/26/27/0056 | Supplier Bill:  | Batch: BAT-2682'),(68,'PURCHASE',10,'2026-06-24','08:13:22.905617',5,1742,1,1086,1,'Invoice: PI/PLK/26/27/0057 | Supplier Bill:  | Batch: BAT-2682'),(69,'PURCHASE',15,'2026-06-24','08:24:38.120091',5,1746,1,1087,1,'Invoice: PI/PLK/26/27/0058 | Supplier Bill:  | Batch: BAT-29892'),(70,'PURCHASE',12,'2026-06-24','08:33:19.115836',5,1746,1,1088,1,'Invoice: PI/PLK/26/27/0059 | Supplier Bill:  | Batch: APP-7892'),(71,'PURCHASE',15,'2026-06-24','08:33:19.131941',5,1720,1,1089,1,'Invoice: PI/PLK/26/27/0059 | Supplier Bill:  | Batch: BAT-1899'),(72,'PURCHASE',12,'2026-06-24','08:39:12.093232',5,1746,1,1088,1,'Invoice: PI/PLK/26/27/0060 | Supplier Bill:  | Batch: APP-7892'),(73,'PURCHASE',15,'2026-06-24','08:39:12.110330',5,1720,1,1089,1,'Invoice: PI/PLK/26/27/0060 | Supplier Bill:  | Batch: BAT-1899'),(74,'PURCHASE',12,'2026-06-24','08:41:34.114359',5,1746,1,1090,1,'Invoice: PI/PLK/26/27/0061 | Supplier Bill:  | Batch: BTA-25666'),(75,'PURCHASE',15,'2026-06-24','08:41:34.131496',5,1881,1,1091,1,'Invoice: PI/PLK/26/27/0061 | Supplier Bill:  | Batch: BAT-2922'),(76,'PURCHASE',1,'2026-06-25','05:06:57.617361',5,1746,1,1092,1,'Invoice: PI/PLK/26/27/0062 | Supplier Bill:  | Batch: BAT-7892'),(77,'PURCHASE',15,'2026-06-25','05:06:57.642595',5,1741,1,1093,1,'Invoice: PI/PLK/26/27/0062 | Supplier Bill:  | Batch: BAT-2782'),(78,'PURCHASE',11,'2026-06-25','06:05:37.090253',5,1746,1,1094,1,'Invoice: PI/PLK/26/27/0063 | Supplier Bill:  | Batch: Bat-267'),(79,'PURCHASE',1,'2026-06-25','06:05:37.112310',5,1878,1,1095,1,'Invoice: PI/PLK/26/27/0063 | Supplier Bill:  | Batch: BAT-2455'),(80,'PURCHASE',15,'2026-06-25','06:05:37.124936',5,1878,1,1096,1,'Invoice: PI/PLK/26/27/0063 | Supplier Bill:  | Batch: BAT-37883'),(81,'PURCHASE',12,'2026-06-25','06:05:37.139811',5,1881,1,1097,1,'Invoice: PI/PLK/26/27/0063 | Supplier Bill:  | Batch: AN-3783'),(82,'PURCHASE',8,'2026-06-25','06:08:39.815040',5,1746,1,1098,1,'Invoice: PI/PLK/26/27/0064 | Supplier Bill:  | Batch: BAT-26778'),(83,'PURCHASE',15,'2026-06-25','06:08:39.832790',5,2131,1,1099,1,'Invoice: PI/PLK/26/27/0064 | Supplier Bill:  | Batch: BAT-2892'),(84,'PURCHASE',15,'2026-06-25','06:30:27.052759',5,1680,1,1100,2,'Invoice: PI/PLK/26/27/0065 | Supplier Bill:  | Batch: twest'),(85,'PURCHASE',15,'2026-06-25','06:30:27.069746',5,1746,1,1101,2,'Invoice: PI/PLK/26/27/0065 | Supplier Bill:  | Batch: BAT-2678'),(86,'PURCHASE',15,'2026-06-25','06:46:05.120478',5,1878,1,1102,1,'Invoice: PI/PLK/26/27/0066 | Supplier Bill: SA-78892 | Batch: BAT-288990'),(87,'PURCHASE',15,'2026-06-25','06:46:05.148555',5,1803,1,1103,1,'Invoice: PI/PLK/26/27/0066 | Supplier Bill: SA-78892 | Batch: BAT-2445'),(88,'PURCHASE',12,'2026-06-25','06:46:05.167768',5,1752,1,1104,1,'Invoice: PI/PLK/26/27/0066 | Supplier Bill: SA-78892 | Batch: BAT-2782'),(89,'PURCHASE',10,'2026-06-25','06:54:29.233717',5,1753,1,1105,1,'Invoice: PI/PLK/26/27/0067 | Supplier Bill:  | Batch: BAT-8900'),(90,'PURCHASE',5,'2026-06-25','06:54:29.253148',5,2131,1,1106,1,'Invoice: PI/PLK/26/27/0067 | Supplier Bill:  | Batch: BAT-8999'),(91,'PURCHASE',15,'2026-06-25','06:54:29.270937',5,2194,1,1107,1,'Invoice: PI/PLK/26/27/0067 | Supplier Bill:  | Batch: BAT-7889'),(92,'PURCHASE',12,'2026-06-25','07:12:23.357146',5,2194,1,1108,6,'Invoice: PI/PLK/26/27/0068 | Supplier Bill:  | Batch: T-352'),(93,'PURCHASE',12,'2026-06-25','07:12:23.375846',5,1881,1,1109,6,'Invoice: PI/PLK/26/27/0068 | Supplier Bill:  | Batch: BAt-789'),(94,'PURCHASE',12,'2026-06-25','07:12:23.397179',5,1754,1,1110,6,'Invoice: PI/PLK/26/27/0068 | Supplier Bill:  | Batch: AT-7822'),(95,'PURCHASE',4,'2026-06-25','07:35:09.517408',5,1878,1,1111,1,'Invoice: PI/PLK/26/27/0069 | Supplier Bill:  | Batch: BAT-67892'),(96,'PURCHASE',12,'2026-06-25','07:35:09.530065',5,2131,1,1112,1,'Invoice: PI/PLK/26/27/0069 | Supplier Bill:  | Batch: BAt-39902'),(97,'PURCHASE',17,'2026-06-25','07:35:09.559182',5,2996,1,1113,1,'Invoice: PI/PLK/26/27/0069 | Supplier Bill:  | Batch: BAT-8921'),(98,'PURCHASE',12,'2026-06-25','07:41:14.554918',5,2996,1,1113,1,'Invoice: PI/PLK/26/27/0070 | Supplier Bill:  | Batch: BAT-8921'),(99,'PURCHASE',30,'2026-06-25','08:27:09.153739',5,1679,1,1114,2,'Invoice: PI/PLK/26/27/0071 | Supplier Bill:  | Batch: ab12300'),(100,'PURCHASE',10,'2026-06-25','08:27:09.168018',5,1678,1,1115,2,'Invoice: PI/PLK/26/27/0071 | Supplier Bill:  | Batch: test'),(101,'PURCHASE',100,'2026-06-25','08:27:09.183386',5,3072,1,1116,2,'Invoice: PI/PLK/26/27/0071 | Supplier Bill:  | Batch: teststrip'),(102,'PURCHASE',10,'2026-06-25','08:33:40.002953',5,1678,1,1052,1,'Invoice: PI/PLK/26/27/0072 | Supplier Bill:  | Batch: test'),(103,'PURCHASE',8,'2026-06-25','08:33:40.017588',5,3072,1,1117,1,'Invoice: PI/PLK/26/27/0072 | Supplier Bill:  | Batch: teststrip'),(104,'PURCHASE',15,'2026-06-25','09:28:10.386224',5,1738,1,1118,1,'Invoice: PI/PLK/26/27/0073 | Supplier Bill:  | Batch: BAT-7889'),(105,'PURCHASE',15,'2026-06-25','09:29:40.015045',5,1738,1,1118,1,'Invoice: PI/PLK/26/27/0074 | Supplier Bill:  | Batch: BAT-7889'),(106,'PURCHASE',20,'2026-06-25','09:34:16.263056',5,2194,1,1107,1,'Invoice: PI/PLK/26/27/0075 | Supplier Bill:  | Batch: BAT-7889'),(107,'PURCHASE',18,'2026-07-01','05:53:32.722481',5,1742,1,1119,1,'Invoice: PI/PLK/26/27/0076 | Supplier Bill: BILL_2992 | Batch: BAT-38003'),(108,'PURCHASE',18,'2026-07-01','05:53:32.751748',5,3094,1,1120,1,'Invoice: PI/PLK/26/27/0076 | Supplier Bill: BILL_2992 | Batch: BAT-2902'),(109,'PURCHASE',15,'2026-07-01','06:21:48.560247',5,1700,1,1121,1,'Invoice: PI/PLK/26/27/0077 | Supplier Bill: St-1011 | Batch: BAT-1002'),(110,'PURCHASE',12,'2026-07-01','06:21:48.571674',5,1701,1,1122,1,'Invoice: PI/PLK/26/27/0077 | Supplier Bill: St-1011 | Batch: BAT-29012'),(111,'PURCHASE',20,'2026-07-01','06:58:25.741643',5,1699,1,1123,1,'Invoice: PI/PLK/26/27/0078 | Supplier Bill:  | Batch: BAt-1001'),(112,'PURCHASE',1,'2026-07-01','06:58:25.872242',5,1659,1,1124,1,'Invoice: PI/PLK/26/27/0078 | Supplier Bill:  | Batch: dgrr'),(113,'PURCHASE',17,'2026-07-02','04:37:53.321061',5,2110,1,1125,1,'Invoice: PI/PLK/26/27/0079 | Supplier Bill: BAT-29921 | Batch: BAT-2002');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stockeditlogtabl`
--

LOCK TABLES `ayurvedaapp_stockeditlogtabl` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stockeditlogtabl` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_stockeditlogtabl` VALUES (3,910,121,122,'2026-06-03 10:37:34.588732','2026-06-03',1),(4,110,125,125,'2026-06-11 16:36:45.670711','2026-06-11',1),(5,297,1,0,'2026-06-17 10:41:39.758728','2026-06-17',189),(6,298,7,15,'2026-06-17 10:45:51.609092','2026-06-17',189),(7,299,13,8,'2026-06-17 10:47:01.532726','2026-06-17',189),(8,300,11,11,'2026-06-17 10:48:18.976395','2026-06-17',189),(9,303,12,9,'2026-06-17 11:10:55.225269','2026-06-17',189),(10,304,9,3,'2026-06-17 11:38:52.028780','2026-06-17',189),(11,40,18,18,'2026-06-20 06:08:46.002281','2026-06-20',1),(12,40,18,18,'2026-06-20 06:10:18.362959','2026-06-20',1),(14,1051,12,12,'2026-06-20 07:14:16.873392','2026-06-20',1),(15,1051,132,264,'2026-06-20 07:32:38.029162','2026-06-20',1),(18,1050,4,4,'2026-06-20 08:04:41.882368','2026-06-20',1),(19,1050,4,4,'2026-06-20 08:10:22.139235','2026-06-20',1),(20,1050,4,8,'2026-06-20 08:10:43.979112','2026-06-20',1),(21,1045,1,1,'2026-06-20 08:11:07.221576','2026-06-20',1),(22,40,18,18,'2026-06-20 08:21:03.699805','2026-06-20',1),(23,45,1,1,'2026-06-20 08:38:02.427173','2026-06-20',1),(24,45,1,2,'2026-06-20 08:38:38.382408','2026-06-20',1),(25,43,0,1,'2026-06-20 08:41:31.496779','2026-06-20',1),(26,42,0,1,'2026-06-20 08:41:55.097932','2026-06-20',1),(27,43,1,1,'2026-06-20 08:42:48.025612','2026-06-20',1),(28,42,1,1,'2026-06-20 08:43:47.364052','2026-06-20',1),(29,43,1,1,'2026-06-20 08:44:03.687149','2026-06-20',1),(30,42,1,1,'2026-06-20 08:47:16.043090','2026-06-20',1),(31,42,1,2,'2026-06-20 08:47:27.549424','2026-06-20',1),(32,1053,600,600,'2026-06-20 08:53:06.449223','2026-06-20',1),(33,1053,600,600,'2026-06-20 08:54:17.355594','2026-06-20',1),(34,1053,600,600,'2026-06-20 08:56:56.617857','2026-06-20',1),(35,1045,1,2,'2026-06-20 09:11:27.638048','2026-06-20',1),(36,1045,2,7,'2026-06-20 09:11:51.268632','2026-06-20',1),(37,1055,3,8,'2026-06-20 09:19:16.696453','2026-06-20',1),(38,914,10,12,'2026-06-20 09:22:02.492277','2026-06-20',1),(39,1036,40,40,'2026-06-20 10:18:08.915669','2026-06-20',1),(40,1086,40,23,'2026-06-25 04:07:31.534391','2026-06-25',1),(41,1086,22,24,'2026-06-25 04:44:04.630585','2026-06-25',1),(42,1114,30,30,'2026-06-25 08:28:21.261932','2026-06-25',1),(43,1116,1000,1000,'2026-06-25 08:36:07.851378','2026-06-25',1),(44,1116,1000,1000,'2026-06-25 08:40:20.719772','2026-06-25',1),(45,2,60,60,'2026-07-09 10:03:50.346444','2026-07-09',1),(46,1,77,77,'2026-07-09 10:16:42.012761','2026-07-09',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_storedetails`
--

LOCK TABLES `ayurvedaapp_storedetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_storedetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_storedetails` VALUES (1,'Store1'),(2,'Store2'),(6,'Store'),(7,'store3'),(8,'store4'),(9,'Store5');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_supplier`
--

LOCK TABLES `ayurvedaapp_supplier` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_supplier` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_supplier` VALUES (31,'test supplier','test','','','9999999999'),(32,'','Noarch ','Chennai','','91503 68887'),(33,'1180','DHAN INFOTECH','4/1180 , Edappally-Pukkattupady road\r\nJudgemukku, Thrikkakara P.O\r\nErnakulam- 682021','','9656155666'),(34,'3047','AJDISTI INDIA PVT LTD','NAKSHATHRA BUILDING, THOUNDAYIL ROAD, PANAMPILLY NAGAR, COCHIN - 36 ERNAKULAM, KERALA, INDIA','','9745166084'),(35,NULL,'NEW VISWABHARATHY LINES PVT.LTD','','',''),(36,NULL,'PHARMA TRADE','','',''),(37,NULL,'DEFAULT SUPPLIER','','',''),(38,NULL,'AYYAPPA ENTERPRISES/AYYAPPA DISTRUBUTOR','','',''),(39,NULL,'MATHILAKATH PHARMA','','',''),(40,NULL,'SHRESH MARKETING','','',''),(41,NULL,'AYYAPPA ENTERPRISES','','',''),(42,NULL,'SAI PHARMA','','',''),(43,NULL,'PEEVEEAR MEDICAL AGENCIES','','',''),(44,NULL,'AYYAPPA DISTRIBUTOR','','',''),(45,NULL,'AYYAPPA DISTRUBUTOR','','',''),(46,NULL,'LIFE CARE/PHARMA AGENCIES','','',''),(47,NULL,'HOLIDAY','','',''),(48,NULL,'PHARMA AGENCIES','','',''),(49,NULL,'MONEY PHARMA','','',''),(50,NULL,'PHARMATRADE','','',''),(51,NULL,'VAXIMED PRIVATE LIMITED','','',''),(52,NULL,'KANMONEY PHARMA','','',''),(53,NULL,'MAXIMED','','',''),(54,NULL,'BRIGHT DRUGS','','',''),(55,NULL,'RAGHULAL ENERPRISES','','',''),(56,NULL,'VISWABHARATHI DISTRIBUTOR','','',''),(57,NULL,'AYYAPPA ENETRPRISES','','',''),(58,NULL,'VJ PHARMA','','',''),(59,NULL,'PARASURAM','','',''),(60,NULL,'ASWIN ENTERPRISES','','',''),(61,NULL,'K H P MEDICALS','','',''),(62,NULL,'GEETHA PHARMA','','',''),(63,NULL,'PHARMA AGENCY','','',''),(64,NULL,'PECHIYAPPA','','',''),(65,NULL,'MEDGROW HEALTH CARE','','',''),(66,NULL,'SRI SLV ENTERPRISESS','','',''),(67,NULL,'AYYAPPA  ENTERPRISES','','',''),(68,NULL,'AYYAPPA AGENCY','','',''),(69,NULL,'NEDSON AGENCY','','',''),(70,NULL,'ATHIRA ENTERPRISES','','',''),(71,NULL,'SRESH MARKETING','','',''),(72,NULL,'ASWINI AGENCIES','','',''),(73,NULL,'AYYAPPA AGENCIES','','',''),(74,NULL,'V.J PHARMA','','',''),(75,NULL,'PRANAVAM','','',''),(76,NULL,'MONEY&CO','','',''),(77,NULL,'PARAMVEER','','',''),(78,NULL,'SURGI PLUS / LIFE CARE','','',''),(79,NULL,'KRISHCO MEDICAL PRODUCTS','','',''),(80,NULL,'PALGHAT HOSPITAL SUPPLY','','',''),(81,NULL,'KHP MEDISALES','','',''),(82,NULL,'AYYAPPA ENNTERPRISE','','',''),(83,NULL,'ASWINI AGENCY','','',''),(84,NULL,'MAXIMED PRIVATE LIMITED','','',''),(85,NULL,'NANDHANAM PHARMA','','',''),(86,NULL,'GEETHA AGENCIES','','',''),(87,NULL,'SABARI DISTRIBUTION','','',''),(88,NULL,'MAXIMED/HOLIDAY','','',''),(89,NULL,'LIFE AGENCIES','','',''),(90,NULL,'LIFEON UNITED','','',''),(91,NULL,'LAKSHMI MEDICAL STORE','','',''),(92,NULL,'SHRI SLV ENTERPRISES','','',''),(93,NULL,'HOLIDAY/VAXIMED','','',''),(94,NULL,'ASWNI AGENCY','','',''),(95,NULL,'PRANAVAM PHARMA','','',''),(96,NULL,'ASWINI ENTERPRICES','','',''),(97,NULL,'NICOS LIFE','','',''),(98,'123','menons agencies','menon  olavakkode','menon@gmail.com','1234567890'),(99,'','SOnu Agencies','','','8765433423');
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
INSERT INTO `ayurvedaapp_taxmaster` VALUES (2,'12.0'),(3,'18.0'),(4,'28.0'),(6,'5.0'),(7,'0.0');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatment_master`
--

LOCK TABLES `ayurvedaapp_treatment_master` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_master` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_treatment_master` VALUES (2,'Test treatment','250','                                          \r\n                   \r\n                   ','active'),(3,'Surgery ','2500','                     \r\n                   ','active');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatmentinvoicechild`
--

LOCK TABLES `ayurvedaapp_treatmentinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatmentinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_treatmentinvoicechild` VALUES (1,2,'test treatment',356,712,'2026-04-09','TRMNO202604091','test','MRNO202604091 - test','9048272638',NULL,1),(2,1,'test treatment',356,356,'2026-05-12','TRMNO202605121','test','MRNO202604091 - test','9048272638',NULL,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatmentinvoicemaster`
--

LOCK TABLES `ayurvedaapp_treatmentinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatmentinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_treatmentinvoicemaster` VALUES (1,'TRMNO202604091','2026-04-09',712,1,0,712,'MRNO202604091 - test','9048272638','0','','',0,NULL,5,2,1,'Cash'),(2,'TRMNO202605121','2026-05-12',356,1,0,356,'MRNO202604091 - test','9048272638','0','','',1,NULL,5,2,1,'Cash');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_unitdt`
--

LOCK TABLES `ayurvedaapp_unitdt` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_unitdt` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_unitdt` VALUES (7,'BTL','1',48),(8,'STRP','1',49),(9,'SACH','1',50),(10,'NOS','1',51),(11,'PKT','1',52),(12,'0','1',53),(15,'CAPSULES','1',49),(16,'ML','100',55),(17,'g','1',56),(18,'TAB','1',57),(19,'CREAM','1',58),(20,'SURGICAL ITEM','1',60),(21,'TEST KIT','1',61),(22,'BOTTLE','1',62),(23,'INJECTION','1',63),(24,'PCS','1',64),(25,'SACHET','1',65),(26,'CAPSULE','1',66),(27,'RESPULES','1',67),(28,'SOAP','1',68),(29,'SHEET','1',69),(30,'OINMENT','1',70),(31,'GARGLE','1',71),(32,'VACCINE','1',72),(33,'INHALER','1',73),(34,'POWDER','1',74),(35,'GEL','1',75),(36,'SUPPOSITORY','1',76),(37,'DIAPER','1',77),(38,'FIXATOR','1',78),(39,'PAD','1',79),(40,'TABLET','1',80),(41,'TA','1',81),(42,'SOLUTION','1',82),(43,'SANITARY PAD','1',83),(44,'BRACE','1',84),(45,'1*10 STRP','10',57),(46,'1*15 STRP','15',57),(47,'20*1 STRP','20',57),(48,'1 * 25 STRP','25',57),(49,'12 STRP','12',57),(50,'24 STRP','24',57);
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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'ayurvedaapp','admin'),(129,'ayurvedaapp','adviceondischarge'),(172,'ayurvedaapp','appointmenteditlog'),(177,'ayurvedaapp','appointmentfee'),(168,'ayurvedaapp','appointmentfeerule'),(152,'ayurvedaapp','appointmentinvoicemaster'),(78,'ayurvedaapp','appointments'),(225,'ayurvedaapp','appointmentstatus'),(58,'ayurvedaapp','ashtavidhpariksha'),(221,'ayurvedaapp','asset'),(220,'ayurvedaapp','assetauditlog'),(222,'ayurvedaapp','assettransfer'),(175,'ayurvedaapp','assignedappointments'),(183,'ayurvedaapp','b2binvoice'),(184,'ayurvedaapp','b2binvoiceitem'),(215,'ayurvedaapp','b2brestockitem'),(214,'ayurvedaapp','b2brestockstatus'),(185,'ayurvedaapp','b2cinvoice'),(186,'ayurvedaapp','b2cinvoiceitem'),(217,'ayurvedaapp','b2crestockitem'),(216,'ayurvedaapp','b2crestockstatus'),(8,'ayurvedaapp','baseunit'),(9,'ayurvedaapp','batch'),(206,'ayurvedaapp','birthregister'),(10,'ayurvedaapp','branch'),(143,'ayurvedaapp','casehistorydietplan'),(144,'ayurvedaapp','casehistorydoctorsnote'),(105,'ayurvedaapp','casehistoryerrorlog'),(178,'ayurvedaapp','casehistorylabbill'),(149,'ayurvedaapp','casehistorylabresult'),(148,'ayurvedaapp','casehistorylabtestrequisition'),(145,'ayurvedaapp','casehistorymedicalandsurgicalhistory'),(113,'ayurvedaapp','casehistoryresultreport'),(146,'ayurvedaapp','casehistorytreatmentplan'),(11,'ayurvedaapp','casehistrypersonalinfo'),(147,'ayurvedaapp','casehistryvitals'),(12,'ayurvedaapp','casemedicalreport'),(198,'ayurvedaapp','casualityinvoicechild'),(197,'ayurvedaapp','casualityinvoicemaster'),(13,'ayurvedaapp','city'),(108,'ayurvedaapp','clairvedacasehistory'),(109,'ayurvedaapp','clairvedafollowup'),(110,'ayurvedaapp','clairvedafollowupreport'),(111,'ayurvedaapp','clairvedaprescription'),(112,'ayurvedaapp','clairvedcasehistrypersonalinfo'),(14,'ayurvedaapp','comapany'),(57,'ayurvedaapp','complaints'),(75,'ayurvedaapp','consultationinvdetails'),(15,'ayurvedaapp','country'),(82,'ayurvedaapp','creditdetailschild'),(74,'ayurvedaapp','creditdetailsmaster'),(166,'ayurvedaapp','creditnotechild'),(165,'ayurvedaapp','creditnotemaster'),(73,'ayurvedaapp','dailyreportforop'),(77,'ayurvedaapp','dailytreatmentdetails'),(133,'ayurvedaapp','dashboardallocation'),(132,'ayurvedaapp','dashboardesign'),(56,'ayurvedaapp','dashvidhpariksha'),(205,'ayurvedaapp','deathregister'),(201,'ayurvedaapp','debitnote'),(202,'ayurvedaapp','debitnoteitem'),(16,'ayurvedaapp','department'),(17,'ayurvedaapp','designation'),(55,'ayurvedaapp','diagnosis'),(106,'ayurvedaapp','diet'),(54,'ayurvedaapp','diet_chart'),(53,'ayurvedaapp','dietaryhistory'),(52,'ayurvedaapp','differentialdiagnosis'),(130,'ayurvedaapp','dischargemedicationprocedure'),(207,'ayurvedaapp','discount'),(18,'ayurvedaapp','district'),(51,'ayurvedaapp','doctorprescription'),(226,'ayurvedaapp','doctorrevisitsettings'),(101,'ayurvedaapp','enquiry'),(32,'ayurvedaapp','equipment_master'),(50,'ayurvedaapp','familyhistory'),(102,'ayurvedaapp','followup'),(114,'ayurvedaapp','followupcalldetails'),(153,'ayurvedaapp','food'),(49,'ayurvedaapp','generalphysicalexamination'),(223,'ayurvedaapp','goodsissuenote'),(224,'ayurvedaapp','goodsissuenoteitem'),(97,'ayurvedaapp','grnchild'),(72,'ayurvedaapp','grnheader'),(195,'ayurvedaapp','headerdetails'),(48,'ayurvedaapp','hopastillness'),(47,'ayurvedaapp','hopresentillness'),(19,'ayurvedaapp','hospitaldetails'),(208,'ayurvedaapp','inoutpunchdata'),(158,'ayurvedaapp','inventorycategory'),(159,'ayurvedaapp','inventorycompany'),(161,'ayurvedaapp','inventoryinvoicechild'),(160,'ayurvedaapp','inventoryinvoicemaster'),(162,'ayurvedaapp','inventorymaster'),(163,'ayurvedaapp','inventorystockdetails'),(81,'ayurvedaapp','invoicechild'),(20,'ayurvedaapp','invoiceerrorlog'),(71,'ayurvedaapp','invoicemaster'),(164,'ayurvedaapp','invreorderdetails'),(121,'ayurvedaapp','ipbill'),(118,'ayurvedaapp','ipdailymedicine'),(124,'ayurvedaapp','ipexpandedbillmedicinedetail'),(125,'ayurvedaapp','ipexpandedbillotherexpensesdetail'),(126,'ayurvedaapp','ipexpandedbillroomdetail'),(127,'ayurvedaapp','ipexpandedbilltreatmentdetail'),(134,'ayurvedaapp','ippackageextend'),(131,'ayurvedaapp','ippackagepayment'),(115,'ayurvedaapp','ippatientadmission'),(117,'ayurvedaapp','ippatientroombooking'),(119,'ayurvedaapp','iptreatmentdetails'),(36,'ayurvedaapp','itemaster'),(21,'ayurvedaapp','itemcategory'),(33,'ayurvedaapp','itemsubcategory'),(46,'ayurvedaapp','labinvestigation'),(193,'ayurvedaapp','labinvoicechild'),(192,'ayurvedaapp','labinvoicemaster'),(199,'ayurvedaapp','labrequisitionmaster'),(200,'ayurvedaapp','labresultmaster'),(141,'ayurvedaapp','labtestchild'),(142,'ayurvedaapp','labtestmaster'),(191,'ayurvedaapp','labunitmaster'),(45,'ayurvedaapp','med_history'),(107,'ayurvedaapp','medicalfollowup'),(34,'ayurvedaapp','medicalreportfile'),(44,'ayurvedaapp','medication'),(104,'ayurvedaapp','medicationentry'),(35,'ayurvedaapp','medicinemaster'),(156,'ayurvedaapp','medicinemaster_new'),(157,'ayurvedaapp','medicinemasterrate'),(37,'ayurvedaapp','menudetails'),(22,'ayurvedaapp','menuheadingdetails'),(67,'ayurvedaapp','menumanagement'),(43,'ayurvedaapp','menustralhistory'),(155,'ayurvedaapp','newinvoicechild'),(154,'ayurvedaapp','newinvoicemaster'),(103,'ayurvedaapp','nexdoctorprescription'),(86,'ayurvedaapp','nextreatmentdetailschild'),(42,'ayurvedaapp','nextreatmentdetailsmaster'),(194,'ayurvedaapp','normalvaluemaster'),(41,'ayurvedaapp','obghistory'),(40,'ayurvedaapp','obstretichistory'),(140,'ayurvedaapp','oppackagepayment'),(139,'ayurvedaapp','oppatientadmission'),(138,'ayurvedaapp','oppatienttimeslotbooking'),(136,'ayurvedaapp','oppatienttreamentroombooking'),(38,'ayurvedaapp','package_deatils'),(128,'ayurvedaapp','packagemaster'),(39,'ayurvedaapp','patient_details'),(59,'ayurvedaapp','patient_history'),(122,'ayurvedaapp','patientauditlog'),(120,'ayurvedaapp','patientdischarge'),(228,'ayurvedaapp','patientvisitcycleappointment'),(227,'ayurvedaapp','patientvisitcyclelog'),(169,'ayurvedaapp','patientvisittracking'),(167,'ayurvedaapp','paymentupdatelog'),(171,'ayurvedaapp','paymentupdatelognew'),(60,'ayurvedaapp','personalhistory'),(61,'ayurvedaapp','personalhistoryold'),(62,'ayurvedaapp','phy_sys_examination'),(80,'ayurvedaapp','physicalstockdetails'),(182,'ayurvedaapp','poitem'),(63,'ayurvedaapp','preliminarydata'),(23,'ayurvedaapp','prescription'),(176,'ayurvedaapp','prescriptioneditlog'),(150,'ayurvedaapp','prescriptionnew'),(64,'ayurvedaapp','prescriptiont'),(137,'ayurvedaapp','proceduredt'),(196,'ayurvedaapp','proceduremaster'),(179,'ayurvedaapp','proformainvoice'),(181,'ayurvedaapp','proformaitem'),(203,'ayurvedaapp','purchaseinvoice'),(204,'ayurvedaapp','purchaseinvoiceitem'),(180,'ayurvedaapp','purchaseorder'),(96,'ayurvedaapp','purchaseorderchild'),(70,'ayurvedaapp','purchaseorderheader'),(151,'ayurvedaapp','ratemaster'),(209,'ayurvedaapp','rawpunchdata'),(65,'ayurvedaapp','record_sheet'),(66,'ayurvedaapp','reorderleveldetails'),(24,'ayurvedaapp','role'),(76,'ayurvedaapp','roleassign'),(116,'ayurvedaapp','room_details'),(123,'ayurvedaapp','roomchangelog'),(68,'ayurvedaapp','sampraptighataka'),(100,'ayurvedaapp','sourcedetails'),(190,'ayurvedaapp','sourcelead'),(69,'ayurvedaapp','staffallocation'),(25,'ayurvedaapp','staffdetails'),(26,'ayurvedaapp','state'),(27,'ayurvedaapp','status'),(170,'ayurvedaapp','stockauditlog'),(79,'ayurvedaapp','stockeditlogtabl'),(95,'ayurvedaapp','stockentryphysicalstockdetails'),(187,'ayurvedaapp','stocktransfer'),(188,'ayurvedaapp','stocktransferitem'),(189,'ayurvedaapp','stocktransferlog'),(210,'ayurvedaapp','stocktransferorder'),(211,'ayurvedaapp','stocktransferorderitem'),(212,'ayurvedaapp','stocktransferverficationmaster'),(213,'ayurvedaapp','stocktransferverificationitem'),(28,'ayurvedaapp','storedetails'),(29,'ayurvedaapp','supplier'),(218,'ayurvedaapp','supplierpurchaseorder'),(219,'ayurvedaapp','supplierpurchaseorderitem'),(83,'ayurvedaapp','systematicexamination'),(30,'ayurvedaapp','taxmaster'),(84,'ayurvedaapp','treatment'),(85,'ayurvedaapp','treatment_chart'),(31,'ayurvedaapp','treatment_master'),(87,'ayurvedaapp','treatmentadvised'),(89,'ayurvedaapp','treatmentinvoicechild'),(88,'ayurvedaapp','treatmentinvoicemaster'),(135,'ayurvedaapp','treatmentroom_details'),(90,'ayurvedaapp','triggeraftersalereturn'),(94,'ayurvedaapp','triggerforafterupdatestock'),(93,'ayurvedaapp','triggerforstock'),(92,'ayurvedaapp','triggerupdate_purchaseorderchild'),(91,'ayurvedaapp','unitdt'),(98,'ayurvedaapp','vitals'),(99,'ayurvedaapp','vyadhipariksha'),(173,'ayurvedaapp','zohoaccesstoken'),(174,'ayurvedaapp','zohoconfig'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-04-07 17:41:19.634978'),(2,'auth','0001_initial','2026-04-07 17:41:20.369751'),(3,'admin','0001_initial','2026-04-07 17:41:20.504092'),(4,'admin','0002_logentry_remove_auto_add','2026-04-07 17:41:20.517054'),(5,'admin','0003_logentry_add_action_flag_choices','2026-04-07 17:41:20.531075'),(6,'contenttypes','0002_remove_content_type_name','2026-04-07 17:41:20.631026'),(7,'auth','0002_alter_permission_name_max_length','2026-04-07 17:41:20.720840'),(8,'auth','0003_alter_user_email_max_length','2026-04-07 17:41:20.772964'),(9,'auth','0004_alter_user_username_opts','2026-04-07 17:41:20.788921'),(10,'auth','0005_alter_user_last_login_null','2026-04-07 17:41:20.877086'),(11,'auth','0006_require_contenttypes_0002','2026-04-07 17:41:20.883023'),(12,'auth','0007_alter_validators_add_error_messages','2026-04-07 17:41:20.902019'),(13,'auth','0008_alter_user_username_max_length','2026-04-07 17:41:21.038321'),(14,'auth','0009_alter_user_last_name_max_length','2026-04-07 17:41:21.128965'),(15,'auth','0010_alter_group_name_max_length','2026-04-07 17:41:21.164874'),(16,'auth','0011_update_proxy_permissions','2026-04-07 17:41:21.191752'),(17,'auth','0012_alter_user_first_name_max_length','2026-04-07 17:41:21.386803'),(18,'ayurvedaapp','0001_initial','2026-04-07 17:41:44.652759'),(19,'ayurvedaapp','0002_alter_casehistrypersonalinfo_age_and_more','2026-04-07 17:41:44.989456'),(20,'ayurvedaapp','0003_alter_invoicemaster_currentdate','2026-04-07 17:41:45.227240'),(21,'ayurvedaapp','0004_remove_followup_enqid_remove_followup_followedby_and_more','2026-04-07 17:41:45.699814'),(22,'ayurvedaapp','0005_sourcedetails_enquiry_followup','2026-04-07 17:41:46.370440'),(23,'ayurvedaapp','0006_enquiry_language','2026-04-07 17:41:46.464232'),(24,'ayurvedaapp','0007_delete_nexdoctorprescription','2026-04-07 17:41:46.486770'),(25,'ayurvedaapp','0008_nexdoctorprescription_medicationentry','2026-04-07 17:41:46.943737'),(26,'ayurvedaapp','0009_casehistoryerrorlog','2026-04-07 17:41:46.965673'),(27,'ayurvedaapp','0010_enquiry_deleted_enquiry_deleted_date','2026-04-07 17:41:47.137064'),(28,'ayurvedaapp','0011_invoicechild_baseqty_invoicechild_tax_and_more','2026-04-07 17:41:47.508788'),(29,'ayurvedaapp','0012_alter_patient_details_district','2026-04-07 17:41:48.698990'),(30,'ayurvedaapp','0013_diet','2026-04-07 17:41:48.720555'),(31,'ayurvedaapp','0014_staffdetails_deleted_staffdetails_deleted_date','2026-04-07 17:41:48.977747'),(32,'ayurvedaapp','0015_medicalfollowup','2026-04-07 17:41:49.227468'),(33,'ayurvedaapp','0016_remove_nexdoctorprescription_diet_and_more','2026-04-07 17:41:49.512881'),(34,'ayurvedaapp','0017_clairvedacasehistory_clairvedafollowup_and_more','2026-04-07 17:41:50.994475'),(35,'ayurvedaapp','0018_clairvedacasehistory_prepairedby','2026-04-07 17:41:51.351305'),(36,'ayurvedaapp','0019_alter_clairvedcasehistrypersonalinfo_age_and_more','2026-04-07 17:41:51.875178'),(37,'ayurvedaapp','0020_casehistoryresultreport','2026-04-07 17:41:52.176284'),(38,'ayurvedaapp','0021_nextreatmentdetailschild_treatment_date_and_more','2026-04-07 17:41:52.611483'),(39,'ayurvedaapp','0022_patient_details_deleted_patient_details_deleted_date','2026-04-07 17:41:53.531591'),(40,'ayurvedaapp','0023_alter_followup_remarks','2026-04-07 17:41:53.656789'),(41,'ayurvedaapp','0024_appointments_contactno_appointments_status','2026-04-07 17:41:53.929326'),(42,'ayurvedaapp','0025_physicalstockdetails_deleted_and_more','2026-04-07 17:41:54.184158'),(43,'ayurvedaapp','0026_followupcalldetails','2026-04-07 17:41:54.415328'),(44,'ayurvedaapp','0027_remove_enquiry_uniqueid','2026-04-07 17:41:54.487145'),(45,'ayurvedaapp','0028_alter_hospitaldetails_email_and_more','2026-04-07 17:41:55.863808'),(46,'ayurvedaapp','0029_patient_details_address','2026-04-07 17:41:56.286380'),(47,'ayurvedaapp','0030_nextreatmentdetailschild_treatmenttime','2026-04-07 17:41:56.393684'),(48,'ayurvedaapp','0031_nextreatmentdetailschild_deletedstatus_and_more','2026-04-07 17:41:56.671954'),(49,'ayurvedaapp','0032_ippatientadmission_room_details_ippatientroombooking','2026-04-07 17:41:57.963230'),(50,'ayurvedaapp','0033_room_details_wardbedno_room_details_wardorroom_and_more','2026-04-07 17:41:58.311048'),(51,'ayurvedaapp','0034_ippatientroombooking_accommodation_type_and_more','2026-04-07 17:41:59.317393'),(52,'ayurvedaapp','0035_ippatientadmission_admittedstatus','2026-04-07 17:41:59.447931'),(53,'ayurvedaapp','0036_ippatientroombooking_ipno_ipdailymedicine_and_more','2026-04-07 17:42:00.362095'),(54,'ayurvedaapp','0037_iptreatmentdetails_treatmentcount','2026-04-07 17:42:00.464806'),(55,'ayurvedaapp','0038_patientdischarge','2026-04-07 17:42:00.776780'),(56,'ayurvedaapp','0039_ipdailymedicine_physicalstock','2026-04-07 17:42:01.034468'),(57,'ayurvedaapp','0040_ipbill','2026-04-07 17:42:01.457910'),(58,'ayurvedaapp','0041_patientauditlog','2026-04-07 17:42:01.800300'),(59,'ayurvedaapp','0042_clairvedaprescription_physicalstock','2026-04-07 17:42:01.983799'),(60,'ayurvedaapp','0043_clairvedacasehistory_deletestatus','2026-04-07 17:42:02.230810'),(61,'ayurvedaapp','0044_roomchangelog','2026-04-07 17:42:02.777619'),(62,'ayurvedaapp','0045_ipbill_ipinvoicenumber_ipbill_subtotal','2026-04-07 17:42:02.923810'),(63,'ayurvedaapp','0046_ipbill_billingstaff','2026-04-07 17:42:03.127457'),(64,'ayurvedaapp','0047_ipexpandedbillmedicinedetail_and_more','2026-04-07 17:42:04.396219'),(65,'ayurvedaapp','0048_packagemaster','2026-04-07 17:42:06.715274'),(66,'ayurvedaapp','0049_alter_invoicechild_suppid','2026-04-07 17:42:09.492322'),(67,'ayurvedaapp','0050_ippatientadmission_address','2026-04-07 17:46:58.264296'),(68,'ayurvedaapp','0051_patientdischarge_accomadationtype_and_more','2026-04-07 17:46:59.186453'),(69,'ayurvedaapp','0052_ippatientadmission_advance_amount_and_more','2026-04-07 17:47:00.804025'),(70,'ayurvedaapp','0053_ippackagepayment','2026-04-07 17:47:01.140511'),(71,'ayurvedaapp','0054_ippatientroombooking_admissionenddate','2026-04-07 17:47:01.384729'),(72,'ayurvedaapp','0055_ippatientroombooking_bookingcancel','2026-04-07 17:47:01.513288'),(73,'ayurvedaapp','0056_dashboardesign_dashboardallocation','2026-04-07 17:47:01.768885'),(74,'ayurvedaapp','0057_ippatientadmission_advancedue_and_more','2026-04-07 17:47:03.586538'),(75,'ayurvedaapp','0058_treatmentroom_details_oppatienttreamentroombooking','2026-04-07 17:47:04.112097'),(76,'ayurvedaapp','0059_oppatienttreamentroombooking_bookingenddate','2026-04-07 17:47:04.241426'),(77,'ayurvedaapp','0060_proceduredt_oppatienttimeslotbooking','2026-04-07 17:47:04.750058'),(78,'ayurvedaapp','0061_oppatientadmission_oppackagepayment','2026-04-07 17:47:05.288139'),(79,'ayurvedaapp','0062_followup_branch','2026-04-07 17:47:05.497579'),(80,'ayurvedaapp','0063_ippatientadmission_admittedbranch','2026-04-07 17:47:05.908738'),(81,'ayurvedaapp','0064_physicalstockdetails_stockbranch','2026-04-07 17:47:06.180576'),(82,'ayurvedaapp','0065_labtestchild_labtestmaster_and_more','2026-04-07 17:47:09.850450'),(83,'ayurvedaapp','0066_casehistorydietplan_patient_and_more','2026-04-07 17:47:12.300610'),(84,'ayurvedaapp','0067_branch_gstno','2026-04-07 17:47:12.635688'),(85,'ayurvedaapp','0068_prescriptionnew_qtyprescriped','2026-04-07 17:47:12.832005'),(86,'ayurvedaapp','0069_ratemaster_appointments_fee_appointmentinvoicemaster','2026-04-07 17:47:13.459403'),(87,'ayurvedaapp','0070_casehistorytreatmentplan_followup','2026-04-07 17:47:13.813883'),(88,'ayurvedaapp','0071_food','2026-04-07 17:47:13.891946'),(89,'ayurvedaapp','0072_appointmentinvoicemaster_payementmode_and_more','2026-04-07 17:47:14.225210'),(90,'ayurvedaapp','0073_invoicechild_cgst_invoicechild_sgst','2026-04-07 17:47:14.451552'),(91,'ayurvedaapp','0074_casehistorylabresult_labtestdate','2026-04-07 17:47:14.643160'),(92,'ayurvedaapp','0075_invoicechild_cgstamount_invoicechild_sgstamount_and_more','2026-04-07 17:47:15.520948'),(93,'ayurvedaapp','0076_branch_hosporclinic_alter_branch_branch_address','2026-04-07 17:47:16.061406'),(94,'ayurvedaapp','0077_branch_compositiontax_alter_branch_branch_address','2026-04-07 17:47:16.640716'),(95,'ayurvedaapp','0078_invoicemaster_card_amount_invoicemaster_cash_amount_and_more','2026-04-07 17:47:17.155825'),(96,'ayurvedaapp','0079_alter_invoicemaster_shipping_and_more','2026-04-07 17:47:18.042143'),(97,'ayurvedaapp','0080_newinvoicemaster_newinvoicechild','2026-04-07 17:47:19.180534'),(98,'ayurvedaapp','0081_medicinemaster_new_medicinemasterrate','2026-04-07 17:47:19.878348'),(99,'ayurvedaapp','0082_inventorycategory_inventorycompany_and_more','2026-04-07 17:47:22.550575'),(100,'ayurvedaapp','0083_alter_prescriptionnew_case_history','2026-04-07 17:47:22.925706'),(101,'ayurvedaapp','0084_alter_casehistorydietplan_case_history_and_more','2026-04-07 17:47:24.370061'),(102,'ayurvedaapp','0085_alter_casehistorylabtestrequisition_case_history','2026-04-07 17:47:24.736577'),(103,'ayurvedaapp','0086_treatmentinvoicemaster_paymentmode','2026-04-07 17:47:24.985020'),(104,'ayurvedaapp','0087_creditnotemaster_creditnotechild','2026-04-07 17:47:25.778982'),(105,'ayurvedaapp','0088_branch_inactive','2026-04-07 17:47:26.233778'),(106,'ayurvedaapp','0089_newinvoicechild_returned_qty','2026-04-07 17:47:26.392988'),(107,'ayurvedaapp','0090_alter_casehistorylabresult_created_at','2026-04-07 17:47:26.584812'),(108,'ayurvedaapp','0091_newinvoicechild_manufacturedate','2026-04-07 17:47:26.759984'),(109,'ayurvedaapp','0092_paymentupdatelog','2026-04-07 17:47:27.102166'),(110,'ayurvedaapp','0093_appointmentfeerule_patientvisittracking','2026-04-07 17:47:27.431500'),(111,'ayurvedaapp','0094_stockauditlog','2026-04-07 17:47:27.999274'),(112,'ayurvedaapp','0095_paymentupdatelog_previous_status_and_more','2026-04-07 17:47:28.117613'),(113,'ayurvedaapp','0096_paymentupdatelognew','2026-04-07 17:47:28.487848'),(114,'ayurvedaapp','0097_appointmenteditlog','2026-04-07 17:47:28.889581'),(115,'ayurvedaapp','0098_zohoaccesstoken_zohoconfig_and_more','2026-04-07 17:47:30.472587'),(116,'ayurvedaapp','0099_patientauditlog_field_name_patientauditlog_new_value_and_more','2026-04-07 17:47:31.107477'),(117,'ayurvedaapp','0100_appointments_visit_duration_and_more','2026-04-07 17:47:31.638287'),(118,'ayurvedaapp','0101_assignedappointments','2026-04-07 17:47:32.275394'),(119,'ayurvedaapp','0102_prescriptioneditlog','2026-04-07 17:47:32.799331'),(120,'ayurvedaapp','0103_appointmentfee','2026-04-07 17:47:33.123414'),(121,'ayurvedaapp','0104_casehistorylabbill','2026-04-07 17:47:33.550004'),(122,'ayurvedaapp','0105_casehistorylabresult_bill','2026-04-07 17:47:33.886689'),(123,'ayurvedaapp','0106_alter_appointmentfee_visit_type','2026-04-07 17:47:33.987418'),(124,'sessions','0001_initial','2026-04-07 17:47:34.030614'),(125,'ayurvedaapp','0107_proformainvoice_purchaseorder_proformaitem_poitem','2026-04-08 09:36:57.715748'),(126,'ayurvedaapp','0108_alter_purchaseorder_approved_by','2026-04-08 09:36:57.729708'),(127,'ayurvedaapp','0109_proformainvoice_branch_purchaseorder_branch_and_more','2026-04-08 09:36:58.417802'),(128,'ayurvedaapp','0110_proformainvoice_payment_date_and_more','2026-04-08 09:36:58.688621'),(129,'ayurvedaapp','0111_alter_proformainvoice_payment_updated_by','2026-04-08 09:36:59.037854'),(130,'ayurvedaapp','0112_alter_purchaseorder_proforma_reference','2026-04-08 09:36:59.163522'),(131,'ayurvedaapp','0113_b2binvoice_b2binvoiceitem_b2cinvoice_b2cinvoiceitem','2026-04-08 09:37:00.598514'),(132,'ayurvedaapp','0114_b2binvoice_buyer_state_b2binvoice_buyer_state_code_and_more','2026-04-08 09:37:02.612691'),(133,'ayurvedaapp','0115_alter_proformainvoice_payment_status','2026-04-08 09:37:02.720275'),(134,'ayurvedaapp','0116_b2binvoiceitem_batch_no_b2binvoiceitem_company_id_and_more','2026-04-08 09:37:02.951072'),(135,'ayurvedaapp','0117_purchaseorder_destination_branch_and_more','2026-04-08 09:37:03.652803'),(136,'ayurvedaapp','0118_branch_is_franchise','2026-04-08 09:37:04.153878'),(137,'ayurvedaapp','0119_stocktransfer_stocktransferitem_stocktransferlog','2026-04-08 09:37:05.538166'),(138,'ayurvedaapp','0120_stockauditlog_remarks','2026-04-08 09:37:05.684000'),(139,'ayurvedaapp','0121_proformainvoice_purchase_order','2026-04-08 09:37:05.976113'),(140,'ayurvedaapp','0122_grnchild_purchase_rate','2026-05-05 14:14:52.178411'),(141,'ayurvedaapp','0123_physicalstockdetails_purchase_rate','2026-05-05 14:35:27.226467'),(142,'ayurvedaapp','0122_sourcelead','2026-05-11 05:09:12.449162'),(143,'ayurvedaapp','0123_patient_details_source_lead','2026-05-11 05:09:13.404211'),(144,'ayurvedaapp','0124_designation_department_name','2026-05-11 05:09:13.675911'),(145,'ayurvedaapp','0125_remove_designation_department_name','2026-05-11 05:09:14.042267'),(146,'ayurvedaapp','0126_designation_department_designation_flag','2026-05-11 05:09:14.338411'),(147,'ayurvedaapp','0127_remove_designation_department_and_more','2026-05-11 05:09:14.663315'),(148,'ayurvedaapp','0128_alter_appointmentfee_visit_type','2026-05-11 05:09:14.782458'),(149,'ayurvedaapp','0129_grnchild_purchase_rate','2026-05-11 05:51:59.167045'),(150,'ayurvedaapp','0130_patient_details_house_name_patient_details_place_and_more','2026-05-11 05:52:16.195810'),(151,'ayurvedaapp','0131_remove_patient_details_house_name_and_more','2026-05-11 06:32:35.532350'),(152,'ayurvedaapp','0124_labtestmaster_rate','2026-06-08 10:39:58.637521'),(153,'ayurvedaapp','0125_labtestchild_rate','2026-06-08 10:39:58.700897'),(154,'ayurvedaapp','0126_labunitmaster_labinvoicemaster_labinvoicechild_and_more','2026-06-08 10:39:59.950405'),(155,'ayurvedaapp','0127_headerdetails','2026-06-08 10:39:59.988107'),(156,'ayurvedaapp','0128_labinvoicemaster_card_amount_and_more','2026-06-08 10:40:01.214222'),(157,'ayurvedaapp','0129_proceduremaster','2026-06-08 10:40:01.262774'),(158,'ayurvedaapp','0130_alter_proceduremaster_branch_id','2026-06-08 10:40:01.901035'),(159,'ayurvedaapp','0131_casualityinvoicemaster_casualityinvoicechild','2026-06-08 10:40:03.156345'),(160,'ayurvedaapp','0132_labinvoicemaster_cancelled_at_and_more','2026-06-10 10:13:35.655963'),(161,'ayurvedaapp','0133_alter_casehistorylabresult_bill','2026-06-10 10:13:36.106726'),(162,'ayurvedaapp','0134_casehistorylabtestrequisition_invoice','2026-06-10 10:13:36.402961'),(163,'ayurvedaapp','0135_alter_casehistorylabtestrequisition_created_at','2026-06-10 10:13:36.618803'),(164,'ayurvedaapp','0136_labinvoicemaster_patient','2026-06-10 10:13:37.143221'),(165,'ayurvedaapp','0137_labrequisitionmaster_and_more','2026-06-10 10:13:38.189306'),(166,'ayurvedaapp','0138_remove_labinvoicemaster_patient_mr_and_more','2026-06-10 10:13:38.867666'),(167,'ayurvedaapp','0139_labresultmaster_casehistorylabresult_result_master','2026-06-10 10:13:39.968296'),(168,'ayurvedaapp','0140_labinvoicechild_test','2026-06-10 10:13:40.259593'),(169,'ayurvedaapp','0141_labinvoicemaster_result','2026-06-15 16:06:16.755594'),(170,'ayurvedaapp','0142_debitnote_debitnoteitem','2026-06-15 16:06:17.656318'),(171,'ayurvedaapp','0143_physicalstockdetails_wholesale_rate_purchaseinvoice_and_more','2026-06-16 14:26:19.209109'),(172,'ayurvedaapp','0144_debitnoteitem_remarks','2026-06-17 06:39:12.071656'),(173,'ayurvedaapp','0145_casehistryvitals_pr_casehistryvitals_spo2_and_more','2026-06-17 06:39:12.856163'),(174,'ayurvedaapp','0146_purchaseinvoiceitem_company','2026-06-18 10:00:30.780223'),(175,'ayurvedaapp','0147_newinvoicemaster_discount_percent','2026-06-18 11:47:43.811316'),(176,'ayurvedaapp','0148_alter_newinvoicemaster_discount_percent','2026-06-18 11:54:44.017274'),(177,'ayurvedaapp','0149_purchaseinvoiceitem_manufacturer_date','2026-06-20 04:19:13.740938'),(178,'ayurvedaapp','0150_purchaseinvoice_amount_in_words','2026-06-22 06:06:07.787409'),(179,'ayurvedaapp','0151_remove_ippackagepayment_admission_and_more','2026-06-22 07:29:37.385399'),(180,'ayurvedaapp','0152_ippatientadmission_ipnumber','2026-06-23 07:11:27.619234'),(181,'ayurvedaapp','0153_purchaseinvoiceitem_base_quantity_and_more','2026-06-24 04:14:47.568692'),(182,'ayurvedaapp','0154_physicalstockdetails_base_quantity_and_more','2026-06-24 04:21:15.814944'),(183,'ayurvedaapp','0155_physicalstockdetails_total_base_quantity_and_more','2026-06-24 07:27:31.192335'),(184,'ayurvedaapp','0156_purchaseinvoiceitem_unt','2026-06-24 08:04:31.838602'),(185,'ayurvedaapp','0157_alter_physicalstockdetails_total_base_quantity_and_more','2026-06-24 08:23:40.969643'),(186,'ayurvedaapp','0158_birthregister_deathregister','2026-06-29 04:54:44.725150'),(187,'ayurvedaapp','0159_birthregister_child_op','2026-06-29 06:36:58.648363'),(188,'ayurvedaapp','0160_alter_birthregister_child_op_and_more','2026-06-29 07:01:13.069200'),(189,'ayurvedaapp','0161_casehistorylabtestrequisition_labtestgroup','2026-07-01 07:52:47.794430'),(190,'ayurvedaapp','0162_labinvoicechild_group','2026-07-01 11:50:47.322413'),(191,'ayurvedaapp','0163_casehistorytreatmentplan_deletedstatus_and_more','2026-07-02 10:08:02.756479'),(192,'ayurvedaapp','0164_casehistorylabresult_result','2026-07-04 06:28:58.805717'),(193,'ayurvedaapp','0076_invoicemaster_card_amount_invoicemaster_cash_amount_and_more','2026-07-06 04:14:10.776912'),(194,'ayurvedaapp','0077_treatmentinvoicemaster_paymentmode','2026-07-06 04:14:57.716014'),(195,'ayurvedaapp','0078_invoicemaster_discount_percentage_and_more','2026-07-06 04:14:57.725296'),(196,'ayurvedaapp','0079_invoicemaster_printstatus','2026-07-06 04:14:57.736329'),(197,'ayurvedaapp','0080_discount','2026-07-06 04:14:57.741872'),(198,'ayurvedaapp','0081_alter_prescriptionnew_case_history','2026-07-06 04:14:57.756598'),(199,'ayurvedaapp','0082_casehistorylabresult_case_history','2026-07-06 04:14:57.758933'),(200,'ayurvedaapp','0083_alter_casehistorylabtestrequisition_case_history','2026-07-06 04:14:57.775320'),(201,'ayurvedaapp','0084_alter_casehistorytreatmentplan_case_history','2026-07-06 04:14:57.785433'),(202,'ayurvedaapp','0085_alter_casehistorymedicalandsurgicalhistory_case_history','2026-07-06 04:14:57.792175'),(203,'ayurvedaapp','0086_alter_casehistorydoctorsnote_case_history','2026-07-06 04:14:57.805246'),(204,'ayurvedaapp','0087_inoutpunchdata_rawpunchdata','2026-07-06 04:14:57.818788'),(205,'ayurvedaapp','0088_staffallocation_employee_code','2026-07-06 04:14:57.825509'),(206,'ayurvedaapp','0089_stocktransferorder_stocktransferorderitem','2026-07-06 04:14:57.835405'),(207,'ayurvedaapp','0090_branch_inactive_branch_is_franchise','2026-07-06 04:14:57.842184'),(208,'ayurvedaapp','0091_stockauditlog_stocktransfer_stocktransferitem_and_more','2026-07-06 04:14:57.858873'),(209,'ayurvedaapp','0092_branch_compositiontax_branch_hosporclinic_and_more','2026-07-06 04:14:57.871752'),(210,'ayurvedaapp','0093_b2binvoice_b2binvoiceitem_b2brestockstatus_and_more','2026-07-06 04:14:57.875742'),(211,'ayurvedaapp','0094_purchaseinvoice_purchaseinvoiceitem_and_more','2026-07-06 04:14:57.892367'),(212,'ayurvedaapp','0165_asset_assetauditlog_assettransfer','2026-07-09 04:06:13.672504'),(213,'ayurvedaapp','0166_alter_assettransfer_options_and_more','2026-07-09 04:41:05.996074'),(214,'ayurvedaapp','0167_assettransfer_branch_assettransfer_from_department_and_more','2026-07-09 04:47:39.996150'),(215,'ayurvedaapp','0168_goodsissuenote_goodsissuenoteitem','2026-07-09 07:34:16.334052'),(216,'ayurvedaapp','0169_appointmentstatus','2026-07-10 10:00:58.412398'),(217,'ayurvedaapp','0170_alter_appointmentstatus_table','2026-07-10 10:09:50.737768'),(218,'ayurvedaapp','0171_alter_appointmentfee_visit_type','2026-07-10 10:16:53.614057'),(219,'ayurvedaapp','0172_alter_appointmentfee_visit_type','2026-07-10 10:25:04.476071'),(220,'ayurvedaapp','0173_alter_appointmentstatus_status_name','2026-07-13 04:54:47.012353'),(221,'ayurvedaapp','0174_alter_appointmentstatus_status_name','2026-07-13 04:59:41.747003'),(222,'ayurvedaapp','0175_alter_appointmentfee_visit_type','2026-07-13 05:08:05.447766'),(223,'ayurvedaapp','0176_doctorrevisitsettings','2026-07-13 05:29:08.820780'),(224,'ayurvedaapp','0177_appointmentfee_max_visit_count_and_more','2026-07-13 05:53:48.738687'),(225,'ayurvedaapp','0178_alter_appointmentfee_max_visit_count_and_more','2026-07-15 08:28:24.936546'),(226,'ayurvedaapp','0179_alter_appointmentfee_max_visit_count_and_more','2026-07-15 08:29:40.354116');
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
INSERT INTO `django_session` VALUES ('0tjthz7x150dnu3bn3pbvkexxwspvgo9','.eJyrVsrJT8_MKy5JTEtTsjK0MNBBEkhJLc5Mz1OyMtFRAvMzU0BKLHWUkooS85IzQFxTZPXxeYm5qYZKVkoFGYlFuYnJmcUlCkow1XDJAEcfR29vRxeEDNSgovycVBDTyBzGLlayijYyj60FABI6Ni8:1wXuiQ:G1IS13Amf_eKliL6O8uE0PGxTt4bVC-Oe_Z4vYa8LzQ','2026-06-26 11:16:02.063423'),('0uewv0337prm0224lfsm8ulndhxi95cv','.eJx1ldFygjAURH-lk2cfFMWqv9BP6HQ6kUSkleBAbKfT6b8XhJDdi7zBWdi9uVySX3Wp8sI1Xp9O6rB63i0AGNsUuWtxslB3UJj2Zpcu1LHWLjt3tym-8O50aVfqoAr3ZZ2v6p-nUjud2_pJhZfGZ14q7_WPLlulri62M0u24bpRh9dk-7ZQmfY2b43KvGwNjx_dY2q9SZ7VVNOmE1cPlK_Cfs9I1hR-RjL2Yr0dxOZ2zLysYieFWAJhyCcO4cQpubSmdHmI3I8kZvX3ENIDcO8B2WZVeaXVrJdEoZsjwz6OEDs4Qu6dr7JPCEIGHRsINmtA2KcBUUBtq9oE9yQAcg8E3AMC94DI_VpnZ_IaAFgNBJwGQkZ57VoUP-Z6gzD6j4ha0f5g0MMdMOxhTx68SD3skfhIp5O-ZBCxJ4ohgVFMgBQUoJhodzsb8TOl64mCE46cJh0FmngUJvEyfCM4R88Ez8Q-DO32NRmaCg7TChQnFjBOLeBJqG6a_D5OInw7o3MRUhXFSFkUJWUqzjTn_oThuvZTKZYkBKhGKFCIUHgTdL7d7-88_pab5USBzZA4bogk4KZIArfADv2J2SljWHqEuOxIccmRikPseqW4dEkUj6_A6OwKkA6uACHq7x-eCceQ:1wLFHi:JIFEg2HuR28NNTZ3zXh6gIBRxh6504Q7P9fntlemVYc','2026-05-22 12:36:06.243892'),('16dxutqn82zdz5dior1fvep0fw5jgdp8','.eJxt00FvgyAUwPGvsnD2MGw1qTeT3dxh92VpUKiyKBBh22HZd5-g871nl_RQf1D-QOw3G22vjQ_idmMVz9CjVF73hlWnjKVnLdOEdhamG-JDgWdfjZgUZxWrzcdDw_7m7fxSP9dNUz_ByLbEbEe1Lb1-9ax65W8Z024yfRxhRc7PLIJt3xcTMiJH8qnV14GU1OFAUo0qqA2l9t0w98tI2kfOS2yQAEMRQJQBJKHZ2mntr2fhl4IopMBQChClAEkqiLYTXg0-uJBi_FKufNXO2HTjLI_kggxkU-UjKOxoA7SdTdBeNiEbccsbEdT8XwEN4A5iUkNOmsjpFSgfpuWzvzn5iSg0wVAQENUA71LLH2GUKHbGTluJDqlkh1IyEhLOoWuMYs2ojbp3ckB6Mnqk41nWBcnPd0KL7IaW2g0t-PMLRohnJg:1wfbid:_8XE2hBcV1PxKcS7bL2bBRXBiXQPEa45NYA9jsdX4l4','2026-07-17 11:06:03.251648'),('2hqbm6nu9gr16ovh67v1bn4qsibczlmd','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jC2FgCYczIo:1wgdXn:ggK08kiltIAYbpNGAJRE6Zo27UbuJ61gvFSg-rmc-zE','2026-07-20 07:15:07.013473'),('2qcqwp0vojsojfgcjjaz2zidxyid6jq0','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wQfzS:zw9UDwuUJ3BAWXJ0TNAbxhiqvdjAZq33jdeL5T3B7II','2026-06-06 12:07:42.395902'),('34j5v85swpw80rh8yilelpd7gm31rz3n','.eJyrVsrJT8_MKy5JTEtTsjK0MNRBEkhJLc5Mz1OystBRAvMzU4BKLA10lJKKEvOSM0BcU2T18XmJuamGSlZKaUX5eSX5QA3JqWAJBSWYHrgS7_ySksTKxFyEDNS4ovycVLBFcHaxklW0oWlsLQDAFzm0:1wWq9V:uv3FbA3IEQ0OkN16ByfFfvMkduNg7c-q37RTiIwcFS0','2026-06-23 12:11:33.743254'),('3lq5zpnizjju6x2q9kfxxbqkbl2tdr5r','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jBWR6kkMSk5sTg1o7ikoASkQMnQ0kypFgB2TTmJ:1weR7x:tpt4K5Z8C-xtTcygXjB5aWbPJORcjGsx5E7DxZ642Ek','2026-07-14 05:35:21.843797'),('4iqpwyqm1ao6exwpj4u3hukg7em8xgps','.eJxtkbFOwzAURX8Fec5QA43UbJHYwsCOKuTWz8EodqLELQPi30lqk3cd2HLPe74nsr9E17fWT0EZIypZQNQ02daL6qEQt2z1beE0Kn9-X8Iet9-8ciRFJWp_uWvE796KX-rnumnqJ56kirHvKFXHz0lUr_JYCDUMzrfLSJTyfjcf7H1nPf3lc1R6yTKGq6VPTqRt4KSpo0Apx8Ls-IqgZGVQtbKscArGqO7cnz7i_-0ey4yyhxmIGIKJ4UY13zqI9sBQE0kmiShTRJQJHPmLa50PLCkPGw7XDhTvHzA-BOBMOgS9MH5geWDKtgRAlAg4EtnUKxNo_M8AA_QAzmzAMydwMH__ANDCGc4:1wkIbL:j03DX-lRcj_YHa93q5lPTD64y1yr8oT7vhI0DE62hg4','2026-07-30 09:41:55.954804'),('5vgp1cp2weqfayo8goqrpkeqbi8rrlha','.eJxlzbEOgjAQBuBXMTezVCQm3Zq41cHdGFPoUavQEig6GN9dwKJn2O7_7nL_EypvrOuCKkvgLCFRY2eNA54mMGWrp4O8Va64jCGj12enamTAQbh-JWG--_JB7IWUYvfbxBetrzC-_owd8CM7DaV90_j8WjszrmHDtilQVXpk9md3i48ForZhgRorDDhz8MVt8FiUrYmRmii0JBKtiEQKXm8yqXRf:1wbWDu:UHIwhouEDX89SGJFPkSWl-KeTVrN02JgAe00E5XF_WQ','2026-07-06 04:25:26.913320'),('6k52i81pbo7bwj5givk6hqo1aoqzmub5','.eJxtlN1uwjAMRl8F5bo3lL_CK-wRpgmFxA3Z2hSlgQ1Ne_elLaGfs92RY8cnri2-RdMZ6_og61oclruqAKCpt8ZFXBZiBFbHQ7UpxMlLp87DcYMXjk62tBQHYd2NXOj8fdFKJw35hUiXnjkvXQjyLtsY8V1DQ7Fym3734vBabt-KoVJnFR0v3rpwlEpR31NMDf5KhTDedaf31pnhtlitV2sBUOqBLhHdLH0-2MWrc4Rz0gP8TSFtAyeaGgr0YH1slNgz1nuOZwdA8AAFF9Dcpz4iTz0jY6aRcM2IuGNETKBkIBOH15o2DvEpKnf_xGZhHgFxHoIH5CHe6fWkQv6KKg9Az4ixceTYPXJmbknP4yz3TzK7pjNIJgDVJ8DKxnl6neZWJsB6SAQqJwS1E2LVg_zKPtZqw_GsAQgmoCADmi1iXctGgW7PKC5jYmwdE2QLmWCmin8vIKqAoWYiTDIhppgQCH5-AfB4pxI:1wKCki:WAUKILDaf3FNcHT1i53_LZVbcC_KdLzrZzdHan1HcLo','2026-05-19 15:41:44.194896'),('740fwd9wmbcns6viulkw59xw86y8gy1w','.eJx1kFsOgjAQRbdi5psfUJCwBZdgjBnpWKu0NaXREOPeLUJ18PHXOXd6T9MbNFYq03rc76FKl2XCgKBWSRNwlsATKBGGMk9g59DUh37M-YWtQU0pVKDMhYy3rptpNCjJzSBeeu2srPfYoQ6Jsw31ZVkRzy1U66zYJFCjJxmKtNShcHfs12C-yJbwnaHow_RHclF0_RORUP5PJKghT2PYeluf3g-Yc_YWR8KEETFRRB-C8INMUDLGBQOZCAY0EQxoIji7-jDpGgGrGglrGgkruj8AeJ-56A:1wKXfL:97bEU_tpaohF5Vnob6fDSCnIEPIOePidPjoUpoKoHXc','2026-05-20 14:01:35.221536'),('7rbt68m1b0997wolld9mru5qx7x928nz','.eJx1zF0KwjAMwPGrSJ77sA9l2it4BBHJ2qyrrK20QRni3bWDyUD3luT3J08YgrE-MXYdyHJfiMVBU7LGg9wKmHarc3IQ0Eb0qs_rbtlfPDoqQcKtx-hQ2cQbmOsvHgMzjug-EsNA-UvVzHMCeaqaswCFTCbE0RnnObTXnEHdFDX8GuqM5R-5W3qsEGnLK6RpIKYJX29PbGJ0:1wQO5T:fSUSCHIc6yOGJaRGurYa-7ZiE3iJ11-61x-fbdIZ238','2026-06-05 17:00:43.042828'),('81s5qrzri2ng1t8y0eyctgfomv149m5g','.eJxtlcGOmzAURX-l8joLIMkQsovU3XQx-1EVOeAQWjDIeKaqqv57ocb2vZ7ZwbnkHct-z_kj-rHt9Gzl_S7O-SnbAWjU3LVanA878f-9a9ZPqp24Ganrx_p6xO-vWg4qF2cxPaQZZN3N9ovwX4fw5fLt8vx8-RqTrZAZe7U-FqV_nsX5tSi_r_qx_jnefqyx2JdZKSKTzQpzIO-d-pUg1XQ2QY3qlVUBLusPgtM-A4YCR0jgEAkcSgT3u-xrUDBFiWek8ZBEHpKqmeyg7UIH3XrZKeFRhxSEiEGJmKXLYZtE-pRwkAJFKWCUAmapmlvNzooxKCNEY6QojJR8g2qCqsyOgUSLeweBA1DbASpbS6va0fweWre3TlBVh0-yqEoTkKYR6NMoadLRKNjPQ5aXjGnYPOR585RHzlPyyWmKR5fvFzLqvtPqI-dN5h3m7U0UriD9PCAoEhiUCowKdvp97Gp1nUyn7VXWtZpntZS25k3txGQbHoK8EIHGJWwAFrAR0G-E5NNytVhlPjNAgB7AZANOTuDc-toaJe3mLLKIBo0nsyE6n43RKW2M52AcJpyAU3EkCr0fGHZ9gNjvAfLNMT_cvxv5nqqPEdwgHOAtwgneJJzQGpaRMI2f9coDUnoCLo9A4hHP8tuttumNckwDmGfEONHIcaaRc5Oa-sHd7gD2nyPYeY5Aob__ADhp0v0:1wZjSG:psOk-zLWoTyBeSRHwGW5JIYJ0EJeaRIobQymA2IvqPo','2026-07-01 11:38:52.302327'),('8p88erutjacj540qmbip6ufw98owujsi','.eJx1k91ygyAUhF8lw7UX0fyZvEIfodPpIKCxFcggTSfT6bsXI-ge09zJt7CL6_GHdbZpTe95XbNTfigzAFL1bWMCLjJ2B60Mi3KXscpxI87DcocH3g3XKmcn1pqrMt6620pzwxvlViwdmva8WO_5jeugONupwazYp-eenV6L_VvGBPeqCUa60cGw-hi2sc22OLBHjctBzP9Rrq36fiIp2fonklSd8iqK_Vcl_PIW5VKYr0Aw5BMO4YSTZK2kNk2KPE5kzhrXEDICcB8BsRVWX8jbbNaEQpsTwx4niA1OkHbnrfiEIGTQWCRYVkTYU0Qk4OLEmXhFAFaRgFMkxMgp62S6ZpEAsU4EvBMC84QWPYSfBHoogWEPIyE9jIj0MKJFQF3zTkDEkVAMSYzEJEiCEqTjY3z4U-7fep7O7fpBgTEiHEeJCDhORID43z8Grozw:1wKeQn:jn5nxPDfxBmJ_Tw5Y_gjAS29dVUh9URUEso-oeurer0','2026-05-20 21:15:01.246538'),('94ybuvxnxcxfngtppyf8yd7gnitq4mdc','.eJxt00FPgzAUwPGvYnreheHi4EbibR68G0O69oFVaElb5sH43QWkvPfQZIf1V9J_3ui-ROdaY0OUTSPK7ECWGoJprSjzg1jWRi8PXL206m1enOjTtZU9ZKIUlR3vLiI9t_Fz9VRdLtUj7qxHeNfBevTv1yDKl-x1jjr14a7v86a4z05HgSb1jBmRm4HPHYE2cUcaOoiQcByGyXrbromHnCmJbEYzG9LQhjwVnQfeOnJmEyXkQyXlcyVlPeX6obeR_HpcsYZGYoikhchSQ9SRTZafUbGzAomsQgqr7I6XTQT_X4Fs0A5hViPOmsRZOUKI_fTZssWZKTbRSBCR1BBZytibMwrqwRsba6kUhADT6dGPML_kppGdIi-zEFTp1UnGbk5CdnES_pl5-nN3mkxdUOdDL7SbebHdyIuR0PcP8Ed4LQ:1wat83:RWk3taTimeSQ1eheWxOY5agxLMtPAciape14DbdEJSU','2026-07-04 10:40:47.967898'),('9677ayzwy6vf6oy7i4htgwcjfaclhau7','.eJxt0rFugzAQgOFXqW5miElIVTakbnToHlWVwQbcgEH42g5V373gmNwZVWLA31n-EfAD_dga61A2DeQiYUulnWkt5McE_Noov6Gapa27dZHx3e9WDlpADoX9fChh23fn1-KlKMvimSbhiHnsdTj6dusgv4i3BMw02HadQJaKE6wwVh-LSbWiYPJl9PeOtDK4I6V7jTqgMq7u5naZ-OdIxZkbJchYhJBlCKOQw7G-hgxk4vGJGWU2YZGNWGKjKICyqqXTncMJzXYeaofDct3fYHqMlMpkrE3I6oRxf-Hlh-gVi524xy1Pu5S3XclbFJpQ4e1Lhnd5PpBSJABLBGGBILvjZYN6_q_ABrzDOKoxj5rMWfn3D868JPM:1wfDAk:dFKv1vj83Q_xfioadMPWTy_uf-21U_CAM6tvbGlSN0Y','2026-07-16 08:53:26.910694'),('99xmaw3e6km9dhr3y24ya1ice01l5s2j','.eJxlkD0PgjAQhv-KuZnBRiGmG4kbDu7GmEIPrKktAdTB-N_lq-WqW5_nru_b9A3aVsq0nShL4CwiKLFVlQG-iWBkJceFvBGmuA4Q0-2LEXdkwCE1j1UGbs_rY3pIsyzdL5M5orEa5-jp2AI_sXMEoq7vphpGkKzZrr9ojVYG_32PQg7MJngqfC2EUnULSdTY4cxTYHDdKxLiHYnyLggcv8Lmt_l125i4pcMZUuEUaXDqp6AshS5IRRJYWuJcUONkUOQkqfp8AS7WqwU:1wjUnL:_kwQCuOitJo-sro_HVDsP56RoPA4pSS_2UBDLll-aYE','2026-07-28 04:30:59.535518'),('a7ojtqzvzhvf4ugwnr9o112s0gddb7a7','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wOB6H:wrdGsRaXcf8ZbIqi66H1frxH05zUqdpRHcFNbNYRfGQ','2026-05-30 14:44:25.409984'),('br9p65oay3k52k2t1ujhr1hk8jgbqw5s','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0Yq6NUkl-SmBNflpgDlrUwrQUAmis0mw:1wUdcZ:ppodALCUfJc1q1evYV3u6kJ5LR9Ub0EXZKa8ovtmASY','2026-06-17 10:24:27.985125'),('d099tidsd0meq4d633glfkj0l4rrf7up','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jC2FgCYczIo:1wYGAu:Q-QgLiGp-fkDDetxQ5QChA9WjBk2s0bNMv_2NXKVR8E','2026-06-27 10:10:52.075483'),('eih1nphgwu8hd8ha6wxviqmjcx5z2s9p','.eJxtkT9PxDAMxb8KytyB3tET7VaJrQzsCKG0cXuB_KkuORgQ3x1yKbVdbqt_dt-zX76E8ZN2IcpxFE1ZkFJB0JMTzb4Ql1qry0B_km44pqKi069OWihFI1p3vunE39yKn9rHtuvaB-wsEidvYJHOn0E0z-VLISy4s52si75_SwOiuj8cBOdSpUa5oR8aPq9gUDpewQoMRFgaIY6jNANa3lWMoiEyYoeQmCFkVhaUddNiU-9WQm9KNbsmAXZHApsL_PCO-9d7wuj2mbDdM2KbZ8QMBm9n9io1p2iCjNggJEYImZWcZ4xod_tLvDPawX_Oc-Oh8cQ2cWVB9vuKiMjKiNTKmGCU_SADHEOco86S3z87hxde:1whm48:OAauw7LNO26JlkOwbot7VVoG4h4uZmttGhDzLrfCTL4','2026-07-23 10:33:12.265625'),('emyisn00f38prir3rzbbdwix2zk5zkpg','.eJxlzDEPwiAQBeC_Ym5mIdqhbCRuOLibxlC5IoYeScE6GP-7Aau26Xbvey_3BB-so5h014HgbBYNRmcJxJZByc6UQTtoulxzqObrM-keOQiQdN8o-O5-fJQHqZTc_5vpxRA8Tq8_ZwRx4g0DHSOm0N56srmHquY7WLA22fkSR4ePtaJxaa0GPSYs_noDqJZXQA:1whnQp:ONXc0GBixPCVVVgGCFzklGPPebdSVMbW6E7HFK3UEMg','2026-07-23 12:00:43.417870'),('ew8ug0ldv5t773die8qo1wfcl215v5r1','.eJxlkD0PgjAQhv-KuZmlGCSykbjh4G6MKfbEGnoQCjoY_7t81HLoxvPc9X3JvaCsCk22ldcrJCJgqNDqgiBZBzCyVuNC3ki63AaI-PaZpEEBCaTUrTL47nl9SPdplqW7eeIimqpEFz19WkiO4hSArGtDxTCCaBNu-4cVlZrw3_co1cBigofG50yodDuTwhJbdDwFLp57xUK8Y1HeLQKltdhW-d3_YByGSz03Mcm6mGVtzC76DFJnCkPDzF0kjn48Ow2z_EZM82MxzUrfH-6Ktmo:1whifF:m5N4boe9ZxHRm5-ZD4T2bYLXoyYpMrozEHevk9eBovE','2026-07-23 06:55:17.909221'),('exa9caxrycaz3k5sf8o9c6f7oujvpidj','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jC2FgCYczIo:1wZJHS:6TCxGu5_beJnvMqVpC_XX_ZGC3SWeK0DfI8emxXvrCs','2026-06-30 07:41:58.146476'),('eyjrjqxkzruilmrrykkffg12folj2qku','.eJx1kFFOwzAQRK9S7Xc-mpS2IVfgCBVCG3trDLGNkm1Rhbg7DkncdaF_3jf2zHq-oAvG-oHxeISm3NeFAJoGa3zEVQG_wOo41NsC2h69eh3HrXzw4tFRCQ1YfybPob-sHHo01K9geZTuPAVmvKCLSh86Gs2q3XIeoDlUu-cCFDKZaOSMi4bt23gNNg_VHv5qqEex_Ec5W_q8I5G2fEfS1BHTLA6nVvHtFvWtcF0hwyI_4yI841myI-28WSIfE7lmTbMImYBwn0Bmq4L7yH6zWWdUtJmY7DFB2WCCeXcc1LsIkkw0NhNZ1oxkTzMSAd8_MFHrNw:1wKUMT:w_spFh9uLpOJOYZLpW_9vldjELGkJl8E2oNJIfOfaEg','2026-05-20 10:29:53.356614'),('f3wx1ug6conjqy8jxsywldbbrwgg87np','.eJxdjbEOwjAMRH8Fee4SCgzZIrGFgR0hlDZuMQRHagIMiH9HCYVG3fzenc4vcL4nDtF0HUhRFWgxUM8g6woyk82FZjDcnhOsy_aJzQ0FSFB8X2j49f56r3ZKa7WdknFi8A7H6e8ZQB7EMT317dU3lxTCalMvYXLGJikK8yB8zhRaijNl0WHELN8fb6xRBg:1wcFjc:UiI5miIKjkUpuvQllR7LkxFK0t41BRRMEKIulHEucDA','2026-07-08 05:01:12.996887'),('f4d5qr8ezho12vf0ww29yuf0xhfjg4k5','.eJxtkMFOxCAURX_FsO5Coq1pd03c1YV7YwwzPCoGXpuW0YXx3522TLmM7rjnwT0vfAs39JbnoIwRjSwgapptz6K5K8SarV4vHCbFx_cllHj7jZUnKRrR8ummE5d7O35un9quax_TJFZMg6NYvR1n0bzI10KocfTcLyNR1vLh_HBgZ5n-8nNUeslyC5-WvlIibUNKmhwFinkrzJ7vCEp2BlU7ywo98cn3nsNw-Fg3rG6r-orDqkBxZ8C4POBMOga9MPiUKtFkiwBEkYAjkqt6ZQJN_xlggB7AmQ145gSemedgjHLHy1-W9X2Z0eRMDIQJgi1BUP38AmTP-1o:1wj9X2:ydfNxLTwNLjC5cGFnTb-i6m-IWIzYciAydwMNjv4eSI','2026-07-27 05:48:44.633763'),('f9rfbpn9u3vcpjm749qg4iqom0pbd1ly','.eJxlkrFugzAQhl-l8syAm1ACG1I3OnSvqsjBF3ALBmGTDlXfveAAvnMkBvyduc_-j1_W9rXSxorrleU8QksJRtWa5YeIubWSbsNlFLpqlkWCd5-16ICznBV6eirZtm_H78VbUZbFq6-sLca-hbX1_dWw_IN_RmzStr98dbpequx4So8MQSEXyjG6KfgJGUhlQyahBQsrNbavvmfuJEmcxYh5x0aQYkPIsCEisGBsNz_7PbKMUC_xDGk8RCIPH1TzaFq5y7I4xpy6HApUjgUmx4hI6VuvKjgPo9L2LKoKjIG5tR0niFgHeurqzsV9j5XzE6PcnwRTdBiM0XkwJkcSw7DdOonTw0x63SoNj5xkTsOmKYfx3huSz3eEmuwMtdoZaSiVqZqxXmNK-HOKmbd4hjQeIo-HRLSk1shwJulDhU7F82AuvhBMxhfofykulTDQGDtYJ-fZC_v7Bza4d8Y:1we9Zg:nN1R2Hpr4Tie1E9OWZ3iS2r4bpOM2uihMJ79uMENByw','2026-07-13 10:50:48.297287'),('h7q1d5wzqqihosqryksdgpqyizgv7lmf','.eJyrVipJLS5JzsjMScnNS89MUbJSMjG0tFTSQYgnpoBEDZGFyjJTy9HFUlMyS9DFUlJzUktSwaK1AGBMIu4:1wZneC:7BK9C_mbFQ0V38Yz6XuLrMer8kCqKIUzBZWOvnVlgqE','2026-07-01 10:37:28.442806'),('j1p65mvsdpm4pdzp2vm8i65nzvns8zrm','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wHhla:n0Nn8JHW-HqUBQo7Ub3qDEhbSWMyq-es-ALWxgZi5LE','2026-05-12 18:12:18.402627'),('jif59a6x1ongixe78pkkbcrxk45e0tya','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuQgZqRFF-TirUaAizWMkq2jC2FgDIgDM5:1wXa66:jQykVxEr2JH_6zCNHZ9vhXBT_nn6kG3xZx8ZQ3rZ7m4','2026-06-25 13:15:06.630798'),('ju429vdfgxk5pvrox9xn17yc7h4e91s6','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jBWR6kkMSk5sTg1o7ikoASkQMnQ0kKpFgB2UzmL:1we9m5:8RAY3-6oSZAm_qB4KYkjsR-fHhi1-ioODvkBS6Rg0bs','2026-07-13 11:03:37.439512'),('k0ndxm8ad686v5masm8eqh8e7frvsyap','.eJxdzkEOwiAQBdCrmFl3g8bEsHPdIxjTUBjqGAoGaI0x3t22lkq7Yx4f_rzBuIZsiEJr4KzIRoWBGgv8UMA0k5oCtRdW3sbhmKcrK1pkwOFsu10JKbdw6WIUL9EON94ZnD_7HQPwC7sWQLZ3JLF6eLKxElJiCDgEo-9wXsLV9_EpHNiJwd-EGjGXnvC5IVQUN6TQYMQFtRZGZhX7leYlyVY1CVdFCbOqzxdqInth:1wK88x:PXJUfUvZ-RtH1WEWsUai-aMOHuG-QFuQRWczKjNxtbo','2026-05-19 10:46:27.979059'),('l2yeh9j36hahqn34dr54c2j2dcesyiqq','.eJyrVsrJT8_MKy5JTEtTsjK0MNRBEkhJLc5Mz1OystBRAvMzU4BKLA10lJKKEvOSM0BcU2T18XmJuamGSlZKaUX5eSX5QA3JqWAJBSWYHrgS7_ySksTKxFygTFF-TirYaFMYu1jJKtrQNBauCWxTLQC7Ujm0:1wWY6N:N229E5w9qhqqw1r4S1GMDVZDP1uoj4rNlwdRmR1Mwu4','2026-06-22 16:55:07.739619'),('l69ssk6zrvicqdrfokg186fg0rue10ct','.eJx1lU1vozAQhv_KyuceCiTbbm6R9pY99F6tImMGwi4xCDutqqr_ffkwzDsOK-WAn3HmGQ_W8Kmatqqt87os1SF5gGVBrq6sOmQPalrXxbQh77U1l3Gxx91nq6-UqIM62tu3k1r2rfjl-Ot4Oh1_ciSk6NuGQur50anDa_J7lJalbkyb_xnDKnvOEoVUFyOW7K2m9ztIRe3vYEENeQrYk_PX4WeroHp6FJRVzEDFEFQM71RD-5oCZIJL14Qi1cQi08SEyPnW_OXmpd-BYetmIho3I9G2GUWC4bXD23kEhoKZCMGMhGBGQlB0Q_f8QLlV2XPEWYQUZIhBiFhIxzuonavsGKvmPUG-3_0nzkVsRaGYrTAUtRUWxeW9uch-ZIJyIcxAzxCkDIWq84VsfZIyZU8AIAkEDIFE6XXpqd8yQAA9gIUNuHACF2bddaAc-9faprZ0z0UBUitlsWJOKP6-IkiyMki1MpHQtNdOXMV0Lyh7mIGIIZgYSpX2VLX9R3T303QjBtoogvIohCVEITlebrnxcRVZHIBBgxinDXIcOciF-UownNPdSuAyTGu8DxPAKzGB6EBdJ-77bi8oHmVh4hwLFIdYoBxi1PbFcoCnBchJFQhOp4BwIgUkP2E6N9rRxfnOT5Lkx_hxqe1bWxs6d31t_VkbQ87REPb9jb7-ASDXw6M:1wXzhe:B4lUAE03Z-qYpd1vHMEvMy4chBeIgV0OuHLQayf_Pl4','2026-06-26 16:35:34.565175'),('ml7ginbj9jmtrcghw13ffmw9bb944t5x','.eJxtzcEKwjAMgOFXkZx7qWOCvXneI4hIZrNZ2VppM0XEd5dN3VLw1nwJ_Z_Qhdb5xNg0YLQSo6XkWg-mUDDNzk4HdUR_Oo9DKa-PHnvSYGDnh1UFv7uZq8CMD-xBQQwdfT_7PBOYvT4ouLLlUF96345rKPRmDbOiHU0vcHN0z4Ws41wsdcQ0GzZM8V9BLGRHcFYTnjWFZ-XEIVLW3ZY5L1WBoilUFIWK3usNX8ibbA:1wMLLC:7H66MhdR7CJEwvq2l2_m2Fw5QnG6izXFIHdAckkRj0c','2026-05-25 07:46:14.543452'),('mo0wyqpjdcl0imoanvoi3yg8xgch7946','.eJxNzE0KwyAQBeCrhFm70fw0eIUeoZQwqcZa4ggqKaH07tVAirt535uZD6zeWIoJlwUkv4ysAqWjNZRZMDjAqhzGnsEckB7PEvv6YCJ0moMES5um5MPeOCQ0OjRwHv13rj4l3NHlJvhVl2diOOcI8iaGOwMTyM8vR6b00HZtBxWiKspr2qx-H_b9Ad16SKs:1wK9Xr:pvmpgq0P3kf3X6650MJzWqZHYvo0FSH5sJ6CIu5_nV0','2026-05-19 12:16:15.856817'),('n36pqzobssen9p04kc3qpu7lmdbmnofm','.eJxNjFsKgCAQRbcS8-1PQg_cQkuIiKkmE3IElSCivWdB0d-95z4OWJ02HCLOM6i8qsUPTBSM5oSlgAeYKZm6EDB45HG5bfEf9IyWclBgeCOOzu-ZRUZNPoN39HUaFyPuaFPi3Ur3mSxfHUC1suzOCwnONbQ:1wAl44:9sgz1stVQSszxvsBD7qii-0WVFKB27zYWup-ozF2qyM','2026-04-23 14:18:40.792504'),('nxps6vhk2lb2pj88yc7j7ffihbj7h7cn','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jC2FgCYczIo:1wZPdB:YP6y7zqnGG0vIyudU7H69eJLS_TYmLpETe4GmMf7Sjc','2026-06-30 14:28:49.334944'),('o4r372vwasg2uc7rjbqgkuuo4g9ll2mw','.eJxljDEPwiAQhf-KuZlBNDqwkbjVwd0Yg3KtJPRo2qqD8b9bCgLG7b733n0vsK4xNIyqrkFwVqDGwTQEYs1gZqPnwaVXdL152JTrM6kWOQiQdF9U8N2l-CD3sqrkLjdR0TuLUR3OAcSRnxiormup8RVs-Wo5PTqyhvA_n1BpzzzAw-AzE2ozZtJoccTIQfjznqJCkrJClbJC-P4ABNNp0Q:1wkaWx:FODhdUlEhgB1p4agWrXia1aKUFfeNb7rGeNYy-9UH0E','2026-07-31 04:50:35.425075'),('oe62g5g5onzqnbnq7awvo6nqiqyezb0z','.eJxljDEPwiAQhf-KuZlBYjSGjcStDu7GGJRrJaFH01YdjP_dUhAwbve99-57gXWNoWFUdQ2CswI1DqYhECsGMxs9Dy69ouvNw7pcn0m1yEGApPuigu8uxQe5l1Uld7mJit5ZjOpwDiCO_MRAdV1Lja9gs-Tb6dGRNYT_-YRKe-YBHgafmVCbMZNGiyNGDsKf9xQVkpQVqpQVwvcHC_lp3Q:1wkEMI:lbgiJCLmJ2k4hkJ1YQrhkO-_2lFvmIQQHi8q3irzdxw','2026-07-30 05:10:06.278623'),('p227aothu1e7rro3atzkvt1ve3frwzwn','.eJxt0kFPhDAQBeC_YubMYQnZuHIj8YaHvRtjunbAGrYQqHow_neh29I3YMKBfi3vZYAf6vrW2MmppqEyz2CpeTKtpbLIyK-N9gcuo7Jv78viiKdfrbpyTiVV9vOupnhu5XP1VNV19Zh2QsTYdxyib7cTlc_5S0aOJ3edL9su21Sc7g-EqvTCubAvw987ZG3cDjV37Bh4nqnTUCZcdnnaVHnbNHkTRWoYUkVezNLbzljeuxhQTiZH2s5yCxSPrwQhq0HUaiJwcNr1lw94NaekqSQAVASBgiCbeNU4Hv9rgA3sARZt4KITXDT7_3b2UFocwFJfFKiKBC2RRIGBj3p88LCdJgqkR4L0SJD--wdmjjM6:1wXySX:RtQaBIDKga1f2YX-tPFdGd0NNLY4isns9x5SuY4A3ZM','2026-06-26 15:15:53.272983'),('pjag9q7c91pigrviovn9a0xze7a16m12','.eJxtkdFugyAUhl-l4dqLirN1vsIeoVkWhFPKJmCQdWmWvftgKh7I7uT79f_wnG8yWqnM7Nn1Svr63FUICJiVNAHTivwBJcKhaysyOGb4LR5b_MGbYRpq0hNl7mC8dY-DZoZJcAeyfZTeebHeswfTIXF2hFhGT9vzTPoLPb1Gr-UfdniPMWmemprsjIkIMbkr-CoQCOULJGAEDxv8nKbAtJGroj1mFEkSw5oEsSjBTMWZBxmGoqUOw0n_RM__ZLu2TJC8jNAVyii_iNVTdoXmmFEkTwxrE8TCBDOVBrGPlj4nsiuWM6pfAKpeQLG1gftyjl0Z4N0hnK0P8WyDiGfmyfFbVr0CVLoSVLcSVPTzCz-tJbg:1wLacO:Juufr77Fz6za9GkPRi0Ng4itSA7RUMnUcDOo1SWe-9U','2026-05-23 11:22:52.546028'),('qv8cte51q6achgjm130gvx6mzcv4lmd8','.eJxdz0FuwyAQQNGrRLP2IrbjNPIVeoSqqoiZUFozWJikiqrcPVAVGLwzD8NnfmG2StPqxeUCY_tyahhIXLWiwF0Df6BlWJyGBs5O0PQZlwM_8EHCYAsjaLoheevuOyNIKHQ7SIfyP6_We3EXJuw4O2O8rDum7xXGt-74Hrt2-rbnr7gN_aFvoZiQEbncNP5sCKX2G5I4o8d_NEhXo0x4bY4Mh42XEFcW48yCnKvoel2WYIZUSu4rZZNl47Nl5NNlrFKTNUs1Xb-vtKSKsVRBlipYpRxaJ1OlS1A1krBCInZ_Inb74wm-MN_d:1wKw9z:LBmL3h3V45Q4mQuvk8N6m6TfqoFPDkVWyKiMKJ-Xa1Q','2026-05-21 16:10:51.984411'),('rm9vpm9bujxcyyn0gp0lmq6y4rqsmt44','.eJxljj0PwiAQhv-KubmDpNEYtiZudXA3xtByVgwcTaE6GP-7_bIF3Xieu3tfXqBtpch5cb0CZ0mAEp2qCHiawMBKDgtFI6i89bAJty8kDDLgkFG7yuG7N-tjdsjyPNsvkymisRqn6PHpgJ_YOQFR14aqfgTbNdt1h5a0Ivz3HQrZMxvhofC5EErlF5Ko0ePEY2B0PqsgZHZB1OyiQNcWpTeVIW-L-_TFNP0dLG2RDhojH7RGPmh-fwBpJpNY:1wjbA2:SoVO3oLgSVkLJEpy6KVCdkUHRUe2LkxEr1JNLc7oCWc','2026-07-28 11:18:50.206159'),('rv6pn0r6ntxl0h2frzv22tl0vs5ojpku','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0Yq6NUkl-SmBNflpgDkjW2NKwFAJouNJo:1wUO14:VDpGVS-oaCCMlQ4YhUPca6AJdogYdEEUtN2FXZ33b4I','2026-06-16 17:44:42.425485'),('scagev2wpu4ls0aloduauw0l8q98kjya','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jC2FgCYczIo:1wZngd:eILQ08_1PwZGKj6iTjcmn8f564VpZW69CQ1FH5XSR_0','2026-07-01 10:39:59.084015'),('slhrr52cs36le9uy4l9yuik6oxzp3vqd','.eJxtjlEKgzAQRK8i-50fbWOtV-gRSilrs2qK2UASLFJ69yYWi6B_O_Nmhn3DYDvNPmDbQp2fKrEyFHndcbQLAbOhVRSVFNA45EefpFwX7oyGcqhB80gcrJsyg4wduQyW0j9zsSHghCYSZwdKY0W53B7qa1HeBCjf_94wca95phQcjvIMG4QqsXwLRk2vfUJKh32iaKBAM_t8AXIJYww:1wK9Kv:Rj4N3nuWAa0AeZymQ_TNJkfzBbUcKvioiZ-RKXQPHO8','2026-05-19 12:02:53.635276'),('tfwcvlkrerwsrlgij9uclgda5n90p3id','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jC2FgCYczIo:1weUgD:vnMsXeXNsENwVxBavs_mFCR9x9ZeFTCdCwxC5Guiuzs','2026-07-14 09:22:57.820034'),('tgwe3w8fbagomsylvwlwyo3f9tnlpvgz','.eJxtjlFugzAMQK8y-ZuPQjdRuEKPME2TS0xIRZIqWKuqancvqUpwUP_i96w832H02riJse-hLQ-7QgBFk9EO2s8CnrNRcaUp4BTQdUMcv-T-r0NLJbRwGTBY7MzEH7BsJ3n0zHhDO5vgR4q_VPXynqD9ruqfAi6s2J_O1um4APu6aiBRVJGVK_gzdM0JKcM5UTQSU2LYM4V3BSFkR-CsJnjWFDwrW8eBkF_NnUDWrb2ERCsx0Uksa3TIpH24WT37-YYltn_j1ubWiPRWiQu2Shzy_wC15sos:1wV43A:e8WnwHgOtlZamJMhxeRIeFQJYMyqSrIDlTHOCLERHAY','2026-06-18 14:37:40.726707'),('ubehqiusc0mh16f293k1462j13nsscan','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4cICjj6O3t6MLQgZqRFF-TirUaAizWMkq2jC2FgCYczIo:1wbXoD:v8mKF8ojoBsP_s0svK4EyapYbdl7xoQNEekxi-qc0m8','2026-07-06 06:07:01.688267'),('uvbx7urvigc69482sp543m7su8yuljsl','.eJyrVsrJT8_MKy5JTEtTsjK0MNRBEkhJLc5Mz1OystBRAvMzU4BKLA10lJKKEvOSM0BcU2T18XmJuamGSlZKaUX5eSX5QA3JqWAJBSWYHrgS7_ySksTKxFyEDNS4ovycVLBFcHaxklW0oWlsLQDAFzm0:1wWq9V:uv3FbA3IEQ0OkN16ByfFfvMkduNg7c-q37RTiIwcFS0','2026-06-23 12:11:33.126087'),('w8e93gw0w08wxpxoi03086usq3s9t6tq','.eJxt0s9ywiAQBvBX6XD2YP44am49-widTgcDSdMGyCTY1un03aviwreMN_kt7gdkf8Xo-sEuXnadaIoVLJVeht6KplqJ23pQtw3HWdr2_brY4O43K40uRCOe7enpIGhf5IPzXp6luVRmN-p7s_BzEc1L8XqPccePa1FURb0VyaS6YgHyNejvjLQafEZKj9rriF0nxxYidkwxhIzFELIgQhbVSq97N59Nb6xPgdX2QS3F5hUIz0twhLzE73w6tj4_xS4vwM2R8fLoeH90lmy0MranyH2UlBXWEBIAugfgL-vMxG5Tr5nCa0bDd4yILxgxmxfXfkIQGs5KEDYpgdicBGIBs3azou4lAetOAt2JoDsR697P9kLpG9Q1YoqIBBle_mRDU284p_8DPu4ABwXNxnSa2GE3e6Y4oGRsOgnZaBJmc2lP_G7luswcZzQpm9TEbF4TQ-jfP29Mxew:1wAP9r:hQus_LCrbrJaKEZcItAj39pvUUCbmDTxwim0hWYPk4A','2026-04-22 14:55:11.471779'),('wdxw65u0ksfsvgcliyfknyhfz5vzqkor','.eJyrVsrJT8_MKy5JTEtTsjK0MNBBEkhJLc5Mz1OyMtFRAvMzU0BKLHWUkooS85IzQFxTZPXxeYm5qYZKVkoFGYlFuYnJmcUlCkow1XDJAEcfR29vRxeEDNSgovycVBDTyBzGLlayijYyj60FABI6Ni8:1wZR6D:mf5cs8L0lZUaqf_adSnRMbzWzaHi_lOMBGODQZV1I3E','2026-06-30 16:02:53.978826'),('x5zt8g1t0galxkjux4iiwcc6oprtic62','.eJxlkL0OgjAURl_F3Jmloomwkbjh4G6MKfSCTUohtOpgfHcLxf5gwsB3evudm75B9C2XStOmgZwkQWSoeCshTxOYM2fzQDVSWd-nsA-nb5J2SCCHQj42JfzmHD4Xp6Isi6M_WSrGXuBSbX8V5BdyTYAOQyfb6Qh2JM3MxV4KLvGfm0jZlIkNT44vn5Bx7RNDgRqXbAuj6w4FJY4FVY5FhZpWNVV4V3rQ84ZbMi2oUWnzZoL5xbOIe79Dgd-xwO9Y7De0M5_XHCIaeyxbiSxcmSwMVJ8vhSK3Fw:1wa6fv:ZoauR-hhJv1rw0sb1uZsqggKEaTOUQgSXnBCgn1Agos','2026-07-02 06:56:31.578316'),('x7h2z62xgg5uewum3ss23vsrsr4a3qvf','.eJxtksFOwzAQRH8F-ZwDSVuKcovErRy4I1S58TY11E6UOEUI8e_UJY5nTW7eN9bM7mq_xblttB2cPB5FmWdQKhp0Y0W5ysSt1ur24dBLW598scHfeysN5aIUlR3vdiL8m_FL9VztdtVTVCaLvj3TZP33HET5mr9lwpAdTWOsaw_v_oPYrB9XgnOpvJAn9KLpcwGT0m4BKzqTo0mopaOm7b-S4Hy9oMXwVIEGUgmaSCXeSGs6bGFV3DMK4TPD2Bli4AxZlCFlbBNiIsHl-pqt1QO2UA-Y7eDa-gNWuAUWrQMB84DAPiAWoO2l1TXtu15bt5d1TcNAV1_Xj5QJeS38qPNo26IQDMcmAEIfQKEVoMkW7XhS6cEW_xR-spEnRxuF5GyjwJfRzYM-3FJ1l04ZCCQFBBkBMffOKbbL651EGhMmAAETAf-JJPby6KhfSgABcwCzNOAsEzgk__wC5VOmaA:1whhiy:hhue1PRggFk41ABNZUKQ_--W0Oj64upaDZ1sCvYHMNc','2026-07-23 05:55:04.892028'),('xc3diam8pbbtvayihjhyldfejnihi8ub','.eJx1lc2OmzAUhV-l8jqLMJDEyS5Sd-mi-6oaeYJhGIGJwG01Gs27lzj-Oce0O-534X6--O9D9GPbmdmqphGnYgNhreeuNeJUboSLu9q98DIpc329Bzt8-9moQRfiJM7m15eLCO9F_P387Xy5nL-mjC8xjb32pR-Pszj9KH5uhLrdBtPeU6KURbl8OJq-M3rNl1DV97h4BL87_SdFuu5simrda6t9_ChIn0cERSKDUpFRwZut7fjyFsd3lFWiSeIBKDwBgSdZedVYPf3LAAn0ACYbcHICJ_O1s--Dod4O5SFPJDNhMBMHM3E2Gztl6mq7Pawy4CaOckqgnRKkX3ZBa7BtKSXjJAYIVqCgBEq-ZTNZnf1pWe5WmWRlDmJOgJsT3O7NruQy49AwUOwYMLYMOO-5aRYeJrcERn06wh06xL05lAmaRvVXUFREURIYaQIkUYCkup9hQ_vo08ue9hlPOqQgRAxKxCupmv2CQnkpd9V_8jyIPJsNJk9ng8rTNLhB1-m0Ou4jgSPbxXhqO4AHtwNUtoNbYHd0IF-egUDlgKB2QLwPuvn6OrX-P5ZyXyCDHRAZrv8IcfVHmE3dONB2q7ZEcZoCo8kJkKYkQJ6I5ZTTyoaZeEpoMHh_ekS3qGd0l3oGjs-_Cra9GA:1wZiVZ:Ne72obsb__AOfMXIy5d95-gi7qaa0kIVI6mfCGL9K5g','2026-07-01 10:38:13.931710'),('xzzewbkf7iqzi9iimhgc6tcc7couqnbx','.eJxt00FTgzAQhuG_4uTcg7RWKTdmvOHBu-M4KUlpFBIGUj04_ncJTdhv0Vt5Qvdl2-FbtK4xdvTydBJFtoFLpUfTWFHsNmK-Nmq-4ThIW5_DxR7vfrOy05koRGkvN5VI9y38XD6VVVU-0kkcMbhWx9HXj6MoXrLXjTB9Z5twIu6y_EEEcMf3yaQKmIF8Gv21Iq2MX5HSrfY6ojJjfR6a6SQkpsIBjRJkECGEDCEL9V75az_usstJqRMBIlGgEGU1Xp68Hv4rwAF2gFkNnDXBWbnT9tI1nfXxNwx_0-3KqYsKWWSoIvN16w-2ap4jwpqJcMVkuF4yVhmc61jmPmdKHTIIEUKJkKW8PNZy1OfR936ObbdbEd44Nz9Z7O_RqJ4E2omgnIh1ZQ-v1-4wibOtsfqvs335onzD9WrXgezrC8GQxWDUYjDw5xdcvoKT:1wbcvu:9Psyl0CEwamlPxNpeapkUCv4hWZWOY9Uu5kSiAO6dcs','2026-07-06 11:35:18.109690'),('yvsfmssbirexlvyve6s2i7qm5pcsd84r','.eJxdzbEOgjAQBuBXMTezVK0k3Zq44cBujCn0wCpcEyg6GN9di1gq2_3fXe5_QmNrQ71TVQWCJVHU2JuaQGwSGLPR40HRKSovPvD4-kyqRQYCJA2rDH53gXN5kFkm9_NmetHZBqfX37EHcWQnX2rLmy2ufgnrNOUwm9IeWSR3g48FoTZuQRobdDjhQO5DLdVjw3bH_3CuCBR1BItKgkUtrzdYF3I0:1wcGxW:Kdzgmnubmxp2oWMXYFh_j4KyXIWQ1pdJFq2PdbSWGdI','2026-07-08 06:19:38.597150'),('z8pyvz3ydd0qnozsoxf8dr4y6nb7ycle','.eJxtjrEOgjAQhl_F3MxgY4zARuKGg7sxptADa6AlpdHB-O4CarlTt953__1f79DYWpvey6qCVMQiIkBhr2sDaRzBNGs1RJJlBIWTpjyP45rmT0a2KCCFylnj7XBQ4rRYwOcmRPbZLsvzbDtv3nXONjiJwruH9CDWxwg6r7wtLq2pxwCs4k0MgUo1MjGDq8YbJ6i050Rhgx4Dk5VH989AFtRDMLMRzpyEM7PsOqJMBmJNow3-cvYBruWyb8WrkJ0HREoCI1WBkcLHE7urt-A:1wXxT1:CSAWyM6he0SrSTuOw_bnUDxZVEVlEX1hA6QVa19Yzzs','2026-06-26 14:12:19.464032');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-17 10:25:04
