
###################
# Dumping table `attachments`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disk_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `digest` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`)
) ENGINE=InnoDB AUTO_INCREMENT=32927 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18



###################
# Dumping table `auth_sources`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `host` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `base_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_login` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_firstname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_lastname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_mail` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18



###################
# Dumping table `boards`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18



###################
# Dumping table `changes`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `from_path` text COLLATE utf8_unicode_ci,
  `from_revision` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `revision` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1360230 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18

INSERT INTO `changes` VALUES ('1319037','83389','A','/branches',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319038','83389','A','/trunk',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319039','83389','A','/trunk/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319040','83389','A','/trunk/Semester 1 Deliverables',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319041','83389','A','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319042','83389','A','/trunk/Semester 1 Deliverables/d1.aux',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319043','83389','A','/trunk/Semester 1 Deliverables/d1.log',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319044','83389','A','/trunk/Semester 1 Deliverables/d1.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319045','83389','A','/trunk/Semester 1 Deliverables/d1.svn',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319046','83389','A','/trunk/Semester 1 Deliverables/d1.svn~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319047','83389','A','/trunk/Semester 1 Deliverables/d1.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319048','83389','A','/trunk/Semester 1 Deliverables/d1.tex~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319049','83389','A','/trunk/Semester 1 Deliverables/d1.zip',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319050','83389','A','/trunk/Semester 1 Deliverables/d2.aux',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319051','83389','A','/trunk/Semester 1 Deliverables/d2.log',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319052','83389','A','/trunk/Semester 1 Deliverables/d2.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319053','83389','A','/trunk/Semester 1 Deliverables/d2.svn',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319054','83389','A','/trunk/Semester 1 Deliverables/d2.svn~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319055','83389','A','/trunk/Semester 1 Deliverables/d2.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319056','83389','A','/trunk/Semester 1 Deliverables/d2.toc',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319057','83389','A','/trunk/Semester 1 Deliverables/d3.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319058','83389','A','/trunk/Semester 1 Deliverables/d4.4.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319059','83389','A','/trunk/Semester 1 Deliverables/glossary.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319060','83389','A','/trunk/Semester 1 Deliverables/glossary.tex~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319061','83389','A','/trunk/Semester 1 Deliverables/img',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319062','83389','A','/trunk/Semester 1 Deliverables/img/.svn',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319063','83389','A','/trunk/Semester 1 Deliverables/img/.svn/all-wcprops',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319064','83389','A','/trunk/Semester 1 Deliverables/img/.svn/entries',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319065','83389','A','/trunk/Semester 1 Deliverables/img/.svn/prop-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319066','83389','A','/trunk/Semester 1 Deliverables/img/.svn/prop-base/CompSci_mono.pdf.svn-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319067','83389','A','/trunk/Semester 1 Deliverables/img/.svn/text-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319068','83389','A','/trunk/Semester 1 Deliverables/img/.svn/text-base/CompSci_mono.eps.svn-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319069','83389','A','/trunk/Semester 1 Deliverables/img/.svn/text-base/CompSci_mono.pdf.svn-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319070','83389','A','/trunk/Semester 1 Deliverables/img/CompSci_mono.eps',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319071','83389','A','/trunk/Semester 1 Deliverables/img/CompSci_mono.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319072','83389','A','/trunk/Semester 1 Deliverables/l3deliverable.cls',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319073','83389','A','/trunk/Semester 1 Deliverables/missfont.log',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319074','83390','D','/trunk/Semester 1 Deliverables/d1.svn~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319075','83390','D','/trunk/Semester 1 Deliverables/d1.tex~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319076','83390','M','/trunk/Semester 1 Deliverables/d2.log',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319077','83390','M','/trunk/Semester 1 Deliverables/d2.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319078','83390','D','/trunk/Semester 1 Deliverables/d2.svn',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319079','83390','D','/trunk/Semester 1 Deliverables/d2.svn~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319080','83390','M','/trunk/Semester 1 Deliverables/d2.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319081','83390','D','/trunk/Semester 1 Deliverables/glossary.tex~',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319082','83391','M','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319083','83392','A','/trunk/.gitignore',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319084','83392','M','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319085','83393','M','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319086','83395','M','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319087','83396','A','/trunk/.gitattributes',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319088','83396','M','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319089','83396','M','/trunk/Semester 1 Deliverables/d1.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319090','83396','M','/trunk/Semester 1 Deliverables/d2.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319091','83396','M','/trunk/Semester 1 Deliverables/d3.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319092','83396','M','/trunk/Semester 1 Deliverables/d4.4.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319093','83396','M','/trunk/Semester 1 Deliverables/img/.svn/text-base/CompSci_mono.eps.svn-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319094','83396','M','/trunk/Semester 1 Deliverables/img/CompSci_mono.eps',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319095','83397','A','/trunk/test.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1319096','83398','A','/branches/dan-test-branch','/trunk','5',NULL,NULL);
INSERT INTO `changes` VALUES ('1319097','83399','D','/trunk/test.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1325155','84020','A','/trunk/Semester 1 Deliverables/RiskManagementPlan.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1325156','84021','M','/trunk/Semester 1 Deliverables/RiskManagementPlan.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1325157','84021','A','/trunk/Semester 1 Deliverables/RiskRegister.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335199','84360','A','/branches',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335200','84360','A','/trunk',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335201','84360','A','/trunk/README.md',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335202','84361','A','/trunk/Previous Projects',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335203','84361','A','/trunk/Previous Projects/Purges',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335204','84361','A','/trunk/Previous Projects/Purges/3D Models',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335205','84361','A','/trunk/Previous Projects/Purges/3D Models/Blender',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335206','84361','A','/trunk/Previous Projects/Purges/3D Models/Blender/Hillhead.blend',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335207','84361','A','/trunk/Previous Projects/Purges/3D Models/Blender/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335208','84361','A','/trunk/Previous Projects/Purges/3D Models/Blender/SimpleRoom.blend',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335209','84361','A','/trunk/Previous Projects/Purges/3D Models/Blender/WallRoom.blend',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335210','84361','A','/trunk/Previous Projects/Purges/3D Models/Blender/blender-2.41-windows.exe',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335211','84361','A','/trunk/Previous Projects/Purges/3D Models/DXF',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335212','84361','A','/trunk/Previous Projects/Purges/3D Models/DXF/Hillhead.dxf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335213','84361','A','/trunk/Previous Projects/Purges/3D Models/DXF/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335214','84361','A','/trunk/Previous Projects/Purges/3D Models/DXF/SimpleRoom.dxf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335215','84361','A','/trunk/Previous Projects/Purges/3D Models/DXF/WallRoom.dxf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335216','84361','A','/trunk/Previous Projects/Purges/3D Models/DXF/dxfviewer.jar',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335217','84361','A','/trunk/Previous Projects/Purges/3D Models/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335218','84361','A','/trunk/Previous Projects/Purges/Documentation',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335219','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335220','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/GUI.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335221','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/Graph.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335222','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/GraphMaker.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335223','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/Person.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335224','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/SplashWindow.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335225','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/Vertex.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335226','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/allclasses-frame.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335227','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/allclasses-noframe.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335228','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/constant-values.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335229','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/deprecated-list.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335230','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/help-doc.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335231','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/index-all.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335232','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/index.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335233','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/overview-tree.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335234','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/package-frame.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335235','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/package-list',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335236','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/package-summary.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335237','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/package-tree.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335238','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/resources',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335239','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/resources/inherit.gif',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335240','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/serialized-form.html',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335241','84361','A','/trunk/Previous Projects/Purges/Documentation/Javadoc/stylesheet.css',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335242','84361','A','/trunk/Previous Projects/Purges/Documentation/Manual',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335243','84361','A','/trunk/Previous Projects/Purges/Documentation/Manual/Manual.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335244','84361','A','/trunk/Previous Projects/Purges/Documentation/Manual/Manual.ps',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335245','84361','A','/trunk/Previous Projects/Purges/Documentation/Manual/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335246','84361','A','/trunk/Previous Projects/Purges/Documentation/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335247','84361','A','/trunk/Previous Projects/Purges/Documentation/Report',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335248','84361','A','/trunk/Previous Projects/Purges/Documentation/Report/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335249','84361','A','/trunk/Previous Projects/Purges/Documentation/Report/Report.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335250','84361','A','/trunk/Previous Projects/Purges/Documentation/Report/Report.ps',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335251','84361','A','/trunk/Previous Projects/Purges/Executable',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335252','84361','A','/trunk/Previous Projects/Purges/Executable/Environments',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335253','84361','A','/trunk/Previous Projects/Purges/Executable/Environments/Hillhead.pur',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335254','84361','A','/trunk/Previous Projects/Purges/Executable/Environments/SimpleRoom.pur',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335255','84361','A','/trunk/Previous Projects/Purges/Executable/Environments/WallRoom.pur',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335256','84361','A','/trunk/Previous Projects/Purges/Executable/Purges.jar',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335257','84361','A','/trunk/Previous Projects/Purges/Executable/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335258','84361','A','/trunk/Previous Projects/Purges/Executable/RunPurges.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335259','84361','A','/trunk/Previous Projects/Purges/Executable/RunPurgesMouseRotate.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335260','84361','A','/trunk/Previous Projects/Purges/Executable/RunPurgesMouseRotateAndWireFrame.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335261','84361','A','/trunk/Previous Projects/Purges/Executable/RunPurgesWireFrame.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335262','84361','A','/trunk/Previous Projects/Purges/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335263','84361','A','/trunk/Previous Projects/Purges/Setup',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335264','84361','A','/trunk/Previous Projects/Purges/Setup/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335265','84361','A','/trunk/Previous Projects/Purges/Setup/java3d-1_4_0-windows-i586-1.exe',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335266','84361','A','/trunk/Previous Projects/Purges/Setup/jre-1_5_0_06-windows-i586-p.exe',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335267','84361','A','/trunk/Previous Projects/Purges/SourceCode',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335268','84361','A','/trunk/Previous Projects/Purges/SourceCode/ChangeLog.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335269','84361','A','/trunk/Previous Projects/Purges/SourceCode/GUI.java',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335270','84361','A','/trunk/Previous Projects/Purges/SourceCode/Graph.java',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335271','84361','A','/trunk/Previous Projects/Purges/SourceCode/GraphMaker.java',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335272','84361','A','/trunk/Previous Projects/Purges/SourceCode/MANIFEST.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335273','84361','A','/trunk/Previous Projects/Purges/SourceCode/Person.java',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335274','84361','A','/trunk/Previous Projects/Purges/SourceCode/README.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335275','84361','A','/trunk/Previous Projects/Purges/SourceCode/SplashWindow.java',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335276','84361','A','/trunk/Previous Projects/Purges/SourceCode/Vertex.java',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335277','84361','A','/trunk/Previous Projects/Purges/SourceCode/compile.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335278','84361','A','/trunk/Previous Projects/Purges/SourceCode/de',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335279','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335280','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335281','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335282','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/a.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335283','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/b.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335284','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335285','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/DXFLoader.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335286','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335287','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335288','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/a.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335289','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/b.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335290','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/c.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335291','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/d.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335292','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/e.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335293','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/f.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335294','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/g.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335295','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/h.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335296','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/i.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335297','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/j.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335298','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/k.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335299','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/l.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335300','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/m.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335301','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/n.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335302','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/o.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335303','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/p.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335304','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/q.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335305','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/r.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335306','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/s.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335307','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/t.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335308','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/u.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335309','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/v.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335310','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/a/w.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335311','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335312','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335313','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/a',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335314','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/a.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335315','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/a/a.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335316','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/a/b.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335317','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/a/c.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335318','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/a/d.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335319','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/b.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335320','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/c.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335321','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/d.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335322','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/b/e.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335323','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/c',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335324','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/c.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335325','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/c/a.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335326','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/c/b.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335327','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/c/c.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335328','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/c/d.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335329','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/c/e.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335330','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335331','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335332','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/a.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335333','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/b.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335334','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/c.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335335','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/d.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335336','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/e.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335337','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/f.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335338','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/g.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335339','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/h.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335340','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/i.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335341','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/j.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335342','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/k.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335343','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/l.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335344','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/m.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335345','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/n.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335346','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/o.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335347','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/p.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335348','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/q.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335349','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/r.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335350','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/s.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335351','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/t.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335352','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/u.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335353','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/v.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335354','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/w.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335355','84361','A','/trunk/Previous Projects/Purges/SourceCode/de/raida/cad/loader/dxfloader/d/x.class',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335356','84361','A','/trunk/Previous Projects/Purges/SourceCode/makejar.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335357','84361','A','/trunk/Previous Projects/Purges/SourceCode/run.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335358','84361','A','/trunk/Previous Projects/Purges/SourceCode/runJarWithMouse.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335359','84361','A','/trunk/Previous Projects/Purges/SourceCode/runJarWithWFAndMR.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335360','84361','A','/trunk/Previous Projects/Purges/SourceCode/runJarWithWireframe.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335361','84361','A','/trunk/Previous Projects/Purges/SourceCode/runjar.bat',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335362','84361','A','/trunk/Previous Projects/Purges/SourceCode/splash.jpg',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335363','84361','A','/trunk/Previous Projects/Purges/SourceCode/splashLoad.jpg',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335364','84361','D','/trunk/README.md',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1335365','84362','A','/trunk/README.md',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360193','85789','D','/trunk/Semester 1 Deliverables/RiskManagementPlan.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360194','85789','D','/trunk/Semester 1 Deliverables/RiskRegister.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360195','85789','A','/trunk/d1',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360196','85789','A','/trunk/d1/d1.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360197','85789','A','/trunk/d1/d1.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360198','85790','A','/trunk/Semester 1 Deliverables/RiskManagementPlan.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360199','85790','A','/trunk/Semester 1 Deliverables/RiskRegister.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360200','85791','D','/trunk/.gitattributes',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360201','85791','A','/trunk/Miscellanious',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360202','85791','A','/trunk/Miscellanious/audiopermission.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360203','85791','M','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360204','85791','D','/trunk/Semester 1 Deliverables/RiskManagementPlan.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360205','85791','D','/trunk/Semester 1 Deliverables/RiskRegister.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360206','85791','M','/trunk/Semester 1 Deliverables/d1.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360207','85791','M','/trunk/Semester 1 Deliverables/d2.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360208','85791','M','/trunk/Semester 1 Deliverables/d3.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360209','85791','M','/trunk/Semester 1 Deliverables/d4.4.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360210','85791','M','/trunk/Semester 1 Deliverables/img/.svn/text-base/CompSci_mono.eps.svn-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360211','85791','M','/trunk/Semester 1 Deliverables/img/CompSci_mono.eps',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360212','85791','D','/trunk/d1',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360213','85791','D','/trunk/d1/d1.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360214','85791','D','/trunk/d1/d1.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360215','85792','A','/trunk/.gitattributes',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360216','85792','M','/trunk/Semester 1 Deliverables/README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360217','85792','A','/trunk/Semester 1 Deliverables/RiskManagementPlan.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360218','85792','A','/trunk/Semester 1 Deliverables/RiskRegister.odt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360219','85792','M','/trunk/Semester 1 Deliverables/d1.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360220','85792','M','/trunk/Semester 1 Deliverables/d2.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360221','85792','M','/trunk/Semester 1 Deliverables/d3.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360222','85792','M','/trunk/Semester 1 Deliverables/d4.4.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360223','85792','M','/trunk/Semester 1 Deliverables/img/.svn/text-base/CompSci_mono.eps.svn-base',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360224','85792','M','/trunk/Semester 1 Deliverables/img/CompSci_mono.eps',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360225','85792','A','/trunk/d1',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360226','85792','A','/trunk/d1/d1.pdf',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360227','85792','A','/trunk/d1/d1.tex',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360228','85793','A','/trunk/misc',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('1360229','85793','A','/trunk/misc/audiopermission.odt',NULL,NULL,NULL,NULL);


###################
# Dumping table `changeset_parents`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `changeset_parents`
--

DROP TABLE IF EXISTS `changeset_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18



###################
# Dumping table `changesets`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `committer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB AUTO_INCREMENT=85794 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18

INSERT INTO `changesets` VALUES ('83389','1178','1','hector.grebbell','2012-10-02 07:42:58','first commit','2012-10-02',NULL,NULL);
INSERT INTO `changesets` VALUES ('83390','1178','2','hector.grebbell','2012-10-02 08:52:39','Temporary Editor Files (~) Removed','2012-10-02',NULL,NULL);
INSERT INTO `changesets` VALUES ('83391','1178','3','hector.grebbell','2012-10-02 09:08:33','SSH Test','2012-10-02',NULL,NULL);
INSERT INTO `changesets` VALUES ('83392','1178','4','hector.grebbell','2012-10-02 09:12:54','SSH Confirmed. Undoing Edit','2012-10-02',NULL,NULL);
INSERT INTO `changesets` VALUES ('83393','1178','5','dan.tomosoiu','2012-10-02 21:19:43','New branch commit test','2012-10-02',NULL,'13040');
INSERT INTO `changesets` VALUES ('83394','1178','6','dan.tomosoiu','2012-10-02 21:49:58','Merge remote-tracking branch \'origin/dan-test-branch\'','2012-10-02',NULL,'13040');
INSERT INTO `changesets` VALUES ('83395','1178','7','dan.tomosoiu','2012-10-02 21:54:14','Undid test.','2012-10-02',NULL,'13040');
INSERT INTO `changesets` VALUES ('83396','1178','8','tony.lau','2012-10-03 04:01:27','Adding .gitattributes','2012-10-03',NULL,NULL);
INSERT INTO `changesets` VALUES ('83397','1178','9','hector.grebbell','2012-10-04 23:20:24','testing service hook','2012-10-04',NULL,NULL);
INSERT INTO `changesets` VALUES ('83398','1178','10','dan.tomosoiu','2012-10-02 21:19:43','New branch commit test','2012-10-02',NULL,'13040');
INSERT INTO `changesets` VALUES ('83399','1178','11','hector.grebbell','2012-10-04 23:30:36','undoing redmine test changes','2012-10-04',NULL,NULL);
INSERT INTO `changesets` VALUES ('84020','1178','12','mjkilian','2012-10-11 00:13:14','Added Risk Management Plan','2012-10-11',NULL,'13084');
INSERT INTO `changesets` VALUES ('84021','1178','13','mjkilian','2012-10-11 06:03:17','Risk Register v1.0 added','2012-10-11',NULL,'13084');
INSERT INTO `changesets` VALUES ('84360','1200','1','hectorgrebbell','2012-10-12 05:01:19','Initial commit','2012-10-12',NULL,'13042');
INSERT INTO `changesets` VALUES ('84361','1200','2','hector.grebbell','2012-10-12 05:17:44','Initial commit','2012-10-12',NULL,NULL);
INSERT INTO `changesets` VALUES ('84362','1200','3','hector.grebbell','2012-10-12 05:19:06','Merge branch \'master\' of https://github.com/hectorgrebbell/teamproject','2012-10-12',NULL,NULL);
INSERT INTO `changesets` VALUES ('85789','1178','14','cocoza4','2012-10-12 08:35:27','Updated d1','2012-10-12',NULL,'13048');
INSERT INTO `changesets` VALUES ('85790','1178','15','cocoza4','2012-10-12 08:53:44','Merge branch \'master\' of github.com:hectorgrebbell/PSD3','2012-10-12',NULL,'13048');
INSERT INTO `changesets` VALUES ('85791','1178','16','michael.kilian','2012-10-15 23:01:28','Added permission to use form for audio recording in interview','2012-10-15',NULL,NULL);
INSERT INTO `changesets` VALUES ('85792','1178','17','michael.kilian','2012-10-15 23:06:31','Merge branch \'master\' of github.com:hectorgrebbell/PSD3','2012-10-15',NULL,NULL);
INSERT INTO `changesets` VALUES ('85793','1178','18','michael.kilian','2012-10-15 23:07:41','Permission to record audio form added','2012-10-15',NULL,NULL);


###################
# Dumping table `changesets_issues`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18



###################
# Dumping table `chart_done_ratios`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `chart_done_ratios`
--

DROP TABLE IF EXISTS `chart_done_ratios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chart_done_ratios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `done_ratio` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chart_done_ratios_on_day` (`day`),
  KEY `index_chart_done_ratios_on_week` (`week`),
  KEY `index_chart_done_ratios_on_month` (`month`),
  KEY `index_chart_done_ratios_on_project_id` (`project_id`),
  KEY `index_chart_done_ratios_on_issue_id` (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104841 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:18

INSERT INTO `chart_done_ratios` VALUES ('101505','0','0','0','9723','110072','63');
INSERT INTO `chart_done_ratios` VALUES ('101506','2012282','2012041','2012010','9723','110072','23');
INSERT INTO `chart_done_ratios` VALUES ('101507','0','0','0','9723','110081','100');
INSERT INTO `chart_done_ratios` VALUES ('101508','2012282','2012041','2012010','9723','110081','100');
INSERT INTO `chart_done_ratios` VALUES ('101511','0','0','0','9723','110085','100');
INSERT INTO `chart_done_ratios` VALUES ('101512','2012282','2012041','2012010','9723','110085','80');
INSERT INTO `chart_done_ratios` VALUES ('102425','2012284','2012041','2012010','9723','110072','38');
INSERT INTO `chart_done_ratios` VALUES ('102426','0','0','0','9723','110086','100');
INSERT INTO `chart_done_ratios` VALUES ('102427','2012284','2012041','2012010','9723','110086','100');
INSERT INTO `chart_done_ratios` VALUES ('102433','2012284','2012041','2012010','9723','110085','100');
INSERT INTO `chart_done_ratios` VALUES ('104812','2012289','2012042','2012010','9723','110072','63');
INSERT INTO `chart_done_ratios` VALUES ('104813','0','0','0','9723','110087','100');
INSERT INTO `chart_done_ratios` VALUES ('104814','2012289','2012042','2012010','9723','110087','100');
INSERT INTO `chart_done_ratios` VALUES ('104815','0','0','0','9723','110089','100');
INSERT INTO `chart_done_ratios` VALUES ('104816','2012289','2012042','2012010','9723','110089','100');


###################
# Dumping table `chart_issue_statuses`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `chart_issue_statuses`
--

DROP TABLE IF EXISTS `chart_issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chart_issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chart_issue_statuses_on_day` (`day`),
  KEY `index_chart_issue_statuses_on_week` (`week`),
  KEY `index_chart_issue_statuses_on_month` (`month`),
  KEY `index_chart_issue_statuses_on_project_id` (`project_id`),
  KEY `index_chart_issue_statuses_on_issue_id` (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159070 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `chart_issue_statuses` VALUES ('153950','2012282','2012041','2012010','9723','110071','2');
INSERT INTO `chart_issue_statuses` VALUES ('153953','2012282','2012041','2012010','9723','110072','2');
INSERT INTO `chart_issue_statuses` VALUES ('153954','2012282','2012041','2012010','9723','110073','1');
INSERT INTO `chart_issue_statuses` VALUES ('153966','2012282','2012041','2012010','9723','110081','5');
INSERT INTO `chart_issue_statuses` VALUES ('153972','2012282','2012041','2012010','9723','110085','2');
INSERT INTO `chart_issue_statuses` VALUES ('153974','2012282','2012041','2012010','9723','110086','2');
INSERT INTO `chart_issue_statuses` VALUES ('153975','2012282','2012041','2012010','9723','110087','2');
INSERT INTO `chart_issue_statuses` VALUES ('153977','2012282','2012041','2012010','9723','110089','2');
INSERT INTO `chart_issue_statuses` VALUES ('153979','2012282','2012041','2012010','9723','110090','1');
INSERT INTO `chart_issue_statuses` VALUES ('153982','2012282','2012041','2012010','9723','110093','1');
INSERT INTO `chart_issue_statuses` VALUES ('153985','2012282','2012041','2012010','9723','110096','1');
INSERT INTO `chart_issue_statuses` VALUES ('153999','2012282','2012041','2012010','9723','110104','1');
INSERT INTO `chart_issue_statuses` VALUES ('154016','2012282','2012041','2012010','9723','110119','1');
INSERT INTO `chart_issue_statuses` VALUES ('154019','2012282','2012041','2012010','9723','110122','1');
INSERT INTO `chart_issue_statuses` VALUES ('154020','2012282','2012041','2012010','9723','110123','1');
INSERT INTO `chart_issue_statuses` VALUES ('154022','2012282','2012041','2012010','9723','110125','1');
INSERT INTO `chart_issue_statuses` VALUES ('154023','2012282','2012041','2012010','9723','110126','1');
INSERT INTO `chart_issue_statuses` VALUES ('155190','2012284','2012041','2012010','9723','110073','1');
INSERT INTO `chart_issue_statuses` VALUES ('155191','2012284','2012041','2012010','9723','110609','1');
INSERT INTO `chart_issue_statuses` VALUES ('155223','2012284','2012041','2012010','9723','110119','1');
INSERT INTO `chart_issue_statuses` VALUES ('155229','2012284','2012041','2012010','9723','110072','2');
INSERT INTO `chart_issue_statuses` VALUES ('155230','2012284','2012041','2012010','9723','110087','2');
INSERT INTO `chart_issue_statuses` VALUES ('155231','2012284','2012041','2012010','9723','110086','5');
INSERT INTO `chart_issue_statuses` VALUES ('155242','2012284','2012041','2012010','9723','110085','5');
INSERT INTO `chart_issue_statuses` VALUES ('159016','2012289','2012042','2012010','9723','110072','2');
INSERT INTO `chart_issue_statuses` VALUES ('159017','2012289','2012042','2012010','9723','110087','3');
INSERT INTO `chart_issue_statuses` VALUES ('159018','2012289','2012042','2012010','9723','110089','3');


###################
# Dumping table `chart_saved_conditions`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `chart_saved_conditions`
--

DROP TABLE IF EXISTS `chart_saved_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chart_saved_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `conditions` varchar(255) NOT NULL,
  `chart` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chart_saved_conditions_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `chart_time_entries`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `chart_time_entries`
--

DROP TABLE IF EXISTS `chart_time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chart_time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `logged_hours` float NOT NULL,
  `entries` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chart_time_entries_on_day` (`day`),
  KEY `index_chart_time_entries_on_week` (`week`),
  KEY `index_chart_time_entries_on_month` (`month`),
  KEY `index_chart_time_entries_on_user_id` (`user_id`),
  KEY `index_chart_time_entries_on_issue_id` (`issue_id`),
  KEY `index_chart_time_entries_on_activity_id` (`activity_id`),
  KEY `index_chart_time_entries_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27731 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `comments`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `custom_fields`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_format` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `possible_values` text COLLATE utf8_unicode_ci,
  `regexp` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text COLLATE utf8_unicode_ci,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `custom_fields` VALUES ('1','UserCustomField','Country','string','--- []\n\n','','3','20','1','0','0','1','0','','1','1','0');
INSERT INTO `custom_fields` VALUES ('2','IssueCustomField','Sequencing','int','--- []\n\n','','0','0','0','0','1','1','0','','1','1','0');
INSERT INTO `custom_fields` VALUES ('3','UserCustomField','Company','string','--- []\n\n','','0','200','0','0','0','2','0','','1','1','0');
INSERT INTO `custom_fields` VALUES ('4','UserCustomField','Website','string','--- []\n\n','https?://([-\\w\\.]+)+(:\\d+)?(/([\\w/_\\.]*(\\?\\S+)?)?)?','0','0','0','0','0','3','0','','1','1','0');
INSERT INTO `custom_fields` VALUES ('5','ProjectCustomField','Project Type','list','--- \n- Personal Use\n- Team Collaboration\n- Client Collaboration\n- FOSS\n- Redmine Trial\n- Other\n','','0','0','0','0','0','1','1','','1','1','0');


###################
# Dumping table `custom_fields_projects`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `custom_fields_trackers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `custom_fields_trackers` VALUES ('2','1');
INSERT INTO `custom_fields_trackers` VALUES ('2','2');
INSERT INTO `custom_fields_trackers` VALUES ('2','3');
INSERT INTO `custom_fields_trackers` VALUES ('2','4');
INSERT INTO `custom_fields_trackers` VALUES ('2','5');


###################
# Dumping table `custom_values`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64469 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `custom_values` VALUES ('62802','Principal','13040','1','United Kingdom');
INSERT INTO `custom_values` VALUES ('62803','Principal','13040','3','University of Glasgow');
INSERT INTO `custom_values` VALUES ('62804','Principal','13040','4','');
INSERT INTO `custom_values` VALUES ('62805','Project','9723','5','Team Collaboration');
INSERT INTO `custom_values` VALUES ('62806','Principal','13041','1','United Kingdom');
INSERT INTO `custom_values` VALUES ('62807','Principal','13041','3','');
INSERT INTO `custom_values` VALUES ('62808','Principal','13041','4','');
INSERT INTO `custom_values` VALUES ('62810','Principal','13042','1','United Kingdom');
INSERT INTO `custom_values` VALUES ('62811','Principal','13042','3','');
INSERT INTO `custom_values` VALUES ('62812','Principal','13042','4','');
INSERT INTO `custom_values` VALUES ('62847','Principal','13048','1','Scotland');
INSERT INTO `custom_values` VALUES ('62848','Principal','13048','3','');
INSERT INTO `custom_values` VALUES ('62849','Principal','13048','4','');
INSERT INTO `custom_values` VALUES ('63054','Principal','13084','1','United Kingdom');
INSERT INTO `custom_values` VALUES ('63055','Principal','13084','3','');
INSERT INTO `custom_values` VALUES ('63056','Principal','13084','4','');
INSERT INTO `custom_values` VALUES ('63316','Issue','110071','2','');
INSERT INTO `custom_values` VALUES ('63318','Issue','110073','2','');
INSERT INTO `custom_values` VALUES ('63319','Issue','110085','2','');
INSERT INTO `custom_values` VALUES ('63320','Issue','110086','2','');
INSERT INTO `custom_values` VALUES ('63323','Issue','110090','2','');
INSERT INTO `custom_values` VALUES ('63324','Issue','110093','2','');
INSERT INTO `custom_values` VALUES ('63325','Issue','110096','2','');
INSERT INTO `custom_values` VALUES ('63326','Issue','110104','2','');
INSERT INTO `custom_values` VALUES ('63327','Issue','110119','2','');
INSERT INTO `custom_values` VALUES ('63328','Issue','110122','2','');
INSERT INTO `custom_values` VALUES ('63329','Issue','110123','2','');
INSERT INTO `custom_values` VALUES ('63330','Issue','110125','2','');
INSERT INTO `custom_values` VALUES ('63331','Issue','110126','2','');
INSERT INTO `custom_values` VALUES ('63332','Issue','110081','2','');
INSERT INTO `custom_values` VALUES ('63546','Issue','110609','2','');
INSERT INTO `custom_values` VALUES ('63818','Principal','13236','1','Scotland');
INSERT INTO `custom_values` VALUES ('63819','Principal','13236','3','');
INSERT INTO `custom_values` VALUES ('63820','Principal','13236','4','');
INSERT INTO `custom_values` VALUES ('63924','Project','9877','5','Team Collaboration');


###################
# Dumping table `documents`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=2178 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `enabled_modules`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88215 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `enabled_modules` VALUES ('86288','9723','issue_tracking');
INSERT INTO `enabled_modules` VALUES ('86289','9723','time_tracking');
INSERT INTO `enabled_modules` VALUES ('86290','9723','news');
INSERT INTO `enabled_modules` VALUES ('86291','9723','documents');
INSERT INTO `enabled_modules` VALUES ('86292','9723','files');
INSERT INTO `enabled_modules` VALUES ('86293','9723','wiki');
INSERT INTO `enabled_modules` VALUES ('86294','9723','repository');
INSERT INTO `enabled_modules` VALUES ('86295','9723','boards');
INSERT INTO `enabled_modules` VALUES ('86296','9723','calendar');
INSERT INTO `enabled_modules` VALUES ('86297','9723','gantt');
INSERT INTO `enabled_modules` VALUES ('86298','9723','charts');
INSERT INTO `enabled_modules` VALUES ('87653','9877','issue_tracking');
INSERT INTO `enabled_modules` VALUES ('87654','9877','time_tracking');
INSERT INTO `enabled_modules` VALUES ('87655','9877','news');
INSERT INTO `enabled_modules` VALUES ('87656','9877','documents');
INSERT INTO `enabled_modules` VALUES ('87657','9877','files');
INSERT INTO `enabled_modules` VALUES ('87658','9877','wiki');
INSERT INTO `enabled_modules` VALUES ('87659','9877','repository');
INSERT INTO `enabled_modules` VALUES ('87660','9877','boards');


###################
# Dumping table `enumerations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `enumerations` VALUES ('1','User documentation','1','0','DocumentCategory','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('2','Technical documentation','2','0','DocumentCategory','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('3','Low','1','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('4','Normal','2','1','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('5','High','3','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('6','Urgent','4','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('7','Immediate','5','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('8','Design','3','0','TimeEntryActivity','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('9','Development','1','1','TimeEntryActivity','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('10','Administrative','2','0','TimeEntryActivity','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('56','Planning','49','0','TimeEntryActivity','1',NULL,NULL);


###################
# Dumping table `gitosis_public_keys`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `gitosis_public_keys`
--

DROP TABLE IF EXISTS `gitosis_public_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gitosis_public_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `key` text,
  `active` tinyint(1) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `groups_users`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `issue_categories`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5200 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `issue_categories` VALUES ('5110','9723','Group Organisation Document',NULL);
INSERT INTO `issue_categories` VALUES ('5111','9723','Project Plan',NULL);
INSERT INTO `issue_categories` VALUES ('5112','9723','Requirements Specification',NULL);
INSERT INTO `issue_categories` VALUES ('5113','9723','Final Report',NULL);


###################
# Dumping table `issue_checklists`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `issue_checklists`
--

DROP TABLE IF EXISTS `issue_checklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_checklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_done` tinyint(1) DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `issue_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22817 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `issue_relations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19



###################
# Dumping table `issue_statuses`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`),
  KEY `index_issue_statuses_on_is_default` (`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `issue_statuses` VALUES ('1','New','0','1','1',NULL);
INSERT INTO `issue_statuses` VALUES ('2','Assigned','0','0','2',NULL);
INSERT INTO `issue_statuses` VALUES ('3','Resolved','0','0','3',NULL);
INSERT INTO `issue_statuses` VALUES ('4','Approved','0','0','4',NULL);
INSERT INTO `issue_statuses` VALUES ('5','Closed','1','0','5',NULL);
INSERT INTO `issue_statuses` VALUES ('6','Rejected','1','0','6',NULL);


###################
# Dumping table `issues`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '0',
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=112084 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:19

INSERT INTO `issues` VALUES ('110071','5','9723','Group Organisation Document','',NULL,'5110','2',NULL,'4',NULL,'13041','2','2012-10-08 20:11:46','2012-10-08 20:46:41','2012-09-17','0',NULL,NULL,'110071','1','2','0');
INSERT INTO `issues` VALUES ('110072','5','9723','Project Plan','*A work break down,estimation and allocation*\r\n*A risk management plan* \r\nA quality assurance plan*\r\nA change management plan*\r\n\r\nItems marked * will not have been described in the lecture course by the time you hand in the first version of your project plan (D2). You may fill in these sections in draft if you wish for D2, but it is not essential.\r\n\r\nYou have two options for how to do prepare and submit the deliverable:\r\n\r\n1) Fill in the template document you have been given and submit this via the submission slot on Moodle.\r\n\r\n2) Complete the documentation using a project management tool, such as Trac. The work break down section should be expressed as tickets (or their equivalent) in the project management tool. The other sections (assurance, risk and change plans) should be written as wiki pages (or similar) in the tool. You should submit a document to Moodle that describes:\r\n\r\na) how a user can gain read access to your project management tool (if you use the provided Trac tool, then stating that you have used Trac on Hoved is sufficient).\r\n\r\nb) where to find the different parts of the plan document on your project management tool.','2012-11-29','5111','2',NULL,'5',NULL,'13041','15','2012-10-08 20:13:10','2012-10-15 22:42:01','2012-09-27','63',NULL,NULL,'110072','1','18','0');
INSERT INTO `issues` VALUES ('110073','5','9723','Requirements Specification','','2012-10-18','5112','1',NULL,'4',NULL,'13041','4','2012-10-08 20:13:41','2012-10-10 01:28:41','2012-10-10','0',NULL,NULL,'110073','1','14','0');
INSERT INTO `issues` VALUES ('110081','4','9723','Identify project deliverables','','2012-10-11','5111','5',NULL,'4',NULL,'13041','3','2012-10-08 20:23:03','2012-10-08 20:51:39','2012-10-04','100',NULL,'110072','110072','2','3','0');
INSERT INTO `issues` VALUES ('110085','4','9723','Identify tasks within deliverables','','2012-10-11','5111','5',NULL,'4',NULL,'13041','3','2012-10-08 20:25:29','2012-10-10 02:12:18','2012-10-04','80',NULL,'110072','110072','4','5','0');
INSERT INTO `issues` VALUES ('110086','4','9723','Identify risks and possible ways of rectification','','2012-10-11','5111','5','13084','4',NULL,'13041','6','2012-10-08 20:26:00','2012-10-10 02:03:47','2012-10-04','100',NULL,'110072','110072','6','7','0');
INSERT INTO `issues` VALUES ('110087','4','9723','Produce risk management document','','2012-10-11','5111','3','13084','5',NULL,'13041','4','2012-10-08 20:26:23','2012-10-15 22:41:40','2012-10-04','100',NULL,'110072','110072','8','9','0');
INSERT INTO `issues` VALUES ('110089','4','9723','Collate information to form draft Project Plan','','2012-10-11','5111','3',NULL,'5',NULL,'13041','5','2012-10-08 20:26:56','2012-10-15 22:42:51','2012-10-04','100',NULL,'110072','110072','10','11','0');
INSERT INTO `issues` VALUES ('110090','4','9723','Produce Quality Assurance Plan','','2012-11-29','5111','1',NULL,'4',NULL,'13041','1','2012-10-08 20:27:26','2012-10-08 20:47:59','2012-10-18','0',NULL,'110072','110072','12','13','0');
INSERT INTO `issues` VALUES ('110093','4','9723','Produce Change Management Plan','','2012-11-29','5111','1',NULL,'4',NULL,'13041','1','2012-10-08 20:28:19','2012-10-08 20:48:02','2012-10-11','0',NULL,'110072','110072','14','15','0');
INSERT INTO `issues` VALUES ('110096','4','9723','Complete Project Plan.','Integrate the work break down, estimation and allocation, QA plan, Risk Management Plan and Change Management Plan to form complete Project Plan.','2012-11-29','5111','1',NULL,'4',NULL,'13041','2','2012-10-08 20:29:32','2012-10-08 20:48:16','2012-09-27','0',NULL,'110072','110072','16','17','0');
INSERT INTO `issues` VALUES ('110104','5','9723','Final Report','','2012-11-29','5113','1',NULL,'4',NULL,'13041','1','2012-10-08 20:33:16','2012-10-08 20:49:13','2012-09-17','0',NULL,NULL,'110104','1','2','0');
INSERT INTO `issues` VALUES ('110119','4','9723','Prepare for interview with client','',NULL,'5112','1',NULL,'4',NULL,'13041','4','2012-10-08 20:39:02','2012-10-10 02:01:40',NULL,'0',NULL,'110073','110073','2','3','0');
INSERT INTO `issues` VALUES ('110122','4','9723','Conduct interview with client','','2012-10-15','5112','1',NULL,'4',NULL,'13041','1','2012-10-08 20:39:38','2012-10-08 20:49:26','2012-10-15','0',NULL,'110073','110073','4','5','0');
INSERT INTO `issues` VALUES ('110123','4','9723','Write report of findings from interview','','2012-10-18','5112','1',NULL,'4',NULL,'13041','1','2012-10-08 20:39:56','2012-10-08 20:49:32','2012-10-15','0',NULL,'110073','110073','6','7','0');
INSERT INTO `issues` VALUES ('110125','4','9723','Talk to other teams to discuss information elicited from client during interview','','2012-10-18','5112','1',NULL,'4',NULL,'13041','2','2012-10-08 20:40:10','2012-10-08 20:49:43','2012-10-15','0',NULL,'110073','110073','8','9','0');
INSERT INTO `issues` VALUES ('110126','4','9723','Add any extra information to report including requirements found from consulting                                                              with other teams.','','2012-10-18','5112','1',NULL,'4',NULL,'13041','1','2012-10-08 20:40:23','2012-10-08 20:49:50','2012-10-15','0',NULL,'110073','110073','10','11','0');
INSERT INTO `issues` VALUES ('110609','4','9723','Identify Use Cases/Draw Use Case Diagrams','',NULL,'5112','1',NULL,'4',NULL,'13041','1','2012-10-10 01:28:41','2012-10-10 01:29:04','2012-10-10','0',NULL,'110073','110073','12','13','0');


###################
# Dumping table `journal_details`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prop_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `old_value` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=282623 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `journal_details` VALUES ('276937','231685','attr','status_id','2','5');
INSERT INTO `journal_details` VALUES ('276938','231686','attr','done_ratio','0','100');
INSERT INTO `journal_details` VALUES ('276949','231698','attr','start_date','2012-09-17','2012-09-27');
INSERT INTO `journal_details` VALUES ('276953','231702','attr','status_id','1','2');
INSERT INTO `journal_details` VALUES ('276954','231703','attr','status_id','1','2');
INSERT INTO `journal_details` VALUES ('276957','231705','attr','assigned_to_id',NULL,'13084');
INSERT INTO `journal_details` VALUES ('276958','231706','attr','status_id','1','2');
INSERT INTO `journal_details` VALUES ('276969','231716','cf','2',NULL,'1');
INSERT INTO `journal_details` VALUES ('276973','231721','attr','category_id',NULL,'5110');
INSERT INTO `journal_details` VALUES ('276974','231721','cf','2','1','');
INSERT INTO `journal_details` VALUES ('276975','231722','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276980','231726','attr','category_id',NULL,'5112');
INSERT INTO `journal_details` VALUES ('276981','231727','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276982','231728','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276984','231730','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276985','231731','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276986','231732','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276988','231734','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276989','231735','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276990','231736','attr','category_id',NULL,'5113');
INSERT INTO `journal_details` VALUES ('276992','231738','attr','category_id',NULL,'5112');
INSERT INTO `journal_details` VALUES ('276993','231739','attr','category_id',NULL,'5112');
INSERT INTO `journal_details` VALUES ('276994','231740','attr','category_id',NULL,'5112');
INSERT INTO `journal_details` VALUES ('276995','231741','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('276996','231742','attr','category_id','5111','5112');
INSERT INTO `journal_details` VALUES ('276997','231743','attr','category_id',NULL,'5112');
INSERT INTO `journal_details` VALUES ('277001','231748','attr','category_id',NULL,'5111');
INSERT INTO `journal_details` VALUES ('278224','232785','attr','category_id',NULL,'5112');
INSERT INTO `journal_details` VALUES ('278251','232816','attr','priority_id','4','5');
INSERT INTO `journal_details` VALUES ('278252','232817','attr','done_ratio','0','100');
INSERT INTO `journal_details` VALUES ('278253','232818','attr','status_id','2','3');
INSERT INTO `journal_details` VALUES ('278255','232821','attr','status_id','3','5');
INSERT INTO `journal_details` VALUES ('278259','232825','attr','status_id','2','5');
INSERT INTO `journal_details` VALUES ('282577','236378','attr','done_ratio','0','100');
INSERT INTO `journal_details` VALUES ('282578','236379','attr','status_id','2','3');
INSERT INTO `journal_details` VALUES ('282579','236380','attr','done_ratio','0','100');
INSERT INTO `journal_details` VALUES ('282580','236381','attr','status_id','2','4');
INSERT INTO `journal_details` VALUES ('282581','236382','attr','status_id','4','3');


###################
# Dumping table `journals`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8_unicode_ci,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=236419 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `journals` VALUES ('231685','110081','Issue','13041',NULL,'2012-10-08 20:24:14');
INSERT INTO `journals` VALUES ('231686','110081','Issue','13041',NULL,'2012-10-08 20:24:30');
INSERT INTO `journals` VALUES ('231698','110096','Issue','13041','','2012-10-08 20:31:55');
INSERT INTO `journals` VALUES ('231702','110085','Issue','13041',NULL,'2012-10-08 20:33:59');
INSERT INTO `journals` VALUES ('231703','110086','Issue','13041',NULL,'2012-10-08 20:34:11');
INSERT INTO `journals` VALUES ('231705','110086','Issue','13041',NULL,'2012-10-08 20:34:18');
INSERT INTO `journals` VALUES ('231706','110089','Issue','13041',NULL,'2012-10-08 20:34:26');
INSERT INTO `journals` VALUES ('231716','110071','Issue','13041','','2012-10-08 20:43:28');
INSERT INTO `journals` VALUES ('231721','110071','Issue','13041','','2012-10-08 20:46:41');
INSERT INTO `journals` VALUES ('231722','110072','Issue','13041','','2012-10-08 20:47:00');
INSERT INTO `journals` VALUES ('231726','110073','Issue','13041','','2012-10-08 20:47:34');
INSERT INTO `journals` VALUES ('231727','110085','Issue','13041','','2012-10-08 20:47:39');
INSERT INTO `journals` VALUES ('231728','110086','Issue','13041','','2012-10-08 20:47:44');
INSERT INTO `journals` VALUES ('231730','110087','Issue','13041','','2012-10-08 20:47:49');
INSERT INTO `journals` VALUES ('231731','110089','Issue','13041','','2012-10-08 20:47:54');
INSERT INTO `journals` VALUES ('231732','110090','Issue','13041','','2012-10-08 20:48:00');
INSERT INTO `journals` VALUES ('231734','110093','Issue','13041','','2012-10-08 20:48:02');
INSERT INTO `journals` VALUES ('231735','110096','Issue','13041','','2012-10-08 20:48:16');
INSERT INTO `journals` VALUES ('231736','110104','Issue','13041','','2012-10-08 20:49:13');
INSERT INTO `journals` VALUES ('231738','110119','Issue','13041','','2012-10-08 20:49:19');
INSERT INTO `journals` VALUES ('231739','110122','Issue','13041','','2012-10-08 20:49:26');
INSERT INTO `journals` VALUES ('231740','110123','Issue','13041','','2012-10-08 20:49:32');
INSERT INTO `journals` VALUES ('231741','110125','Issue','13041','','2012-10-08 20:49:37');
INSERT INTO `journals` VALUES ('231742','110125','Issue','13041','','2012-10-08 20:49:43');
INSERT INTO `journals` VALUES ('231743','110126','Issue','13041','','2012-10-08 20:49:50');
INSERT INTO `journals` VALUES ('231748','110081','Issue','13041','','2012-10-08 20:51:39');
INSERT INTO `journals` VALUES ('232785','110609','Issue','13041','','2012-10-10 01:29:04');
INSERT INTO `journals` VALUES ('232815','110119','Issue','13041','Roles are: interviewer(s), note taker(s).\r\n\r\n\r\n','2012-10-10 02:01:40');
INSERT INTO `journals` VALUES ('232816','110087','Issue','13041',NULL,'2012-10-10 02:02:08');
INSERT INTO `journals` VALUES ('232817','110086','Issue','13041',NULL,'2012-10-10 02:02:29');
INSERT INTO `journals` VALUES ('232818','110086','Issue','13041',NULL,'2012-10-10 02:02:45');
INSERT INTO `journals` VALUES ('232821','110086','Issue','13041',NULL,'2012-10-10 02:03:47');
INSERT INTO `journals` VALUES ('232825','110085','Issue','13041',NULL,'2012-10-10 02:12:19');
INSERT INTO `journals` VALUES ('236378','110087','Issue','13084',NULL,'2012-10-15 22:41:28');
INSERT INTO `journals` VALUES ('236379','110087','Issue','13084',NULL,'2012-10-15 22:41:40');
INSERT INTO `journals` VALUES ('236380','110089','Issue','13084',NULL,'2012-10-15 22:42:01');
INSERT INTO `journals` VALUES ('236381','110089','Issue','13084',NULL,'2012-10-15 22:42:34');
INSERT INTO `journals` VALUES ('236382','110089','Issue','13084',NULL,'2012-10-15 22:42:51');


###################
# Dumping table `member_roles`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30377 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `member_roles` VALUES ('29575','22175','3',NULL);
INSERT INTO `member_roles` VALUES ('29592','22175','4',NULL);
INSERT INTO `member_roles` VALUES ('29590','22188','3',NULL);
INSERT INTO `member_roles` VALUES ('29591','22188','4',NULL);
INSERT INTO `member_roles` VALUES ('29596','22189','3',NULL);
INSERT INTO `member_roles` VALUES ('29597','22189','4',NULL);
INSERT INTO `member_roles` VALUES ('29710','22272','3',NULL);
INSERT INTO `member_roles` VALUES ('29711','22272','4',NULL);
INSERT INTO `member_roles` VALUES ('29721','22282','3',NULL);
INSERT INTO `member_roles` VALUES ('29722','22282','4',NULL);
INSERT INTO `member_roles` VALUES ('30033','22526','6',NULL);
INSERT INTO `member_roles` VALUES ('30081','22567','3',NULL);
INSERT INTO `member_roles` VALUES ('30082','22568','3',NULL);
INSERT INTO `member_roles` VALUES ('30083','22568','4',NULL);
INSERT INTO `member_roles` VALUES ('30084','22569','3',NULL);
INSERT INTO `member_roles` VALUES ('30085','22569','4',NULL);
INSERT INTO `member_roles` VALUES ('30086','22570','3',NULL);
INSERT INTO `member_roles` VALUES ('30087','22570','4',NULL);
INSERT INTO `member_roles` VALUES ('30088','22571','3',NULL);
INSERT INTO `member_roles` VALUES ('30089','22571','4',NULL);


###################
# Dumping table `members`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22760 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `members` VALUES ('22175','13040','9723','2012-10-04 21:31:27','0');
INSERT INTO `members` VALUES ('22188','13041','9723','2012-10-04 22:20:15','0');
INSERT INTO `members` VALUES ('22189','13042','9723','2012-10-04 22:53:44','0');
INSERT INTO `members` VALUES ('22272','13084','9723','2012-10-06 21:50:54','0');
INSERT INTO `members` VALUES ('22282','13048','9723','2012-10-07 00:11:16','0');
INSERT INTO `members` VALUES ('22526','13236','9723','2012-10-11 10:54:05','0');
INSERT INTO `members` VALUES ('22567','13040','9877','2012-10-11 21:21:40','0');
INSERT INTO `members` VALUES ('22568','13042','9877','2012-10-11 21:22:01','0');
INSERT INTO `members` VALUES ('22569','13041','9877','2012-10-11 21:22:12','0');
INSERT INTO `members` VALUES ('22570','13048','9877','2012-10-11 21:22:40','0');
INSERT INTO `members` VALUES ('22571','13084','9877','2012-10-11 21:25:37','0');


###################
# Dumping table `messages`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=4470 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20



###################
# Dumping table `news`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=1230 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20



###################
# Dumping table `open_id_authentication_associations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assoc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20



###################
# Dumping table `open_id_authentication_nonces`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20



###################
# Dumping table `projects`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=9947 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `projects` VALUES ('9723','PSD3','','','0',NULL,'2012-10-04 21:31:26','2012-10-11 21:20:16','team-l','1','17403','17404');
INSERT INTO `projects` VALUES ('9877','TeamProject','3D evac','','0',NULL,'2012-10-11 21:21:39','2012-10-11 21:21:39','teamltp','1','4729','4730');


###################
# Dumping table `projects_trackers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `projects_trackers` VALUES ('9723','4');
INSERT INTO `projects_trackers` VALUES ('9723','5');
INSERT INTO `projects_trackers` VALUES ('9877','1');
INSERT INTO `projects_trackers` VALUES ('9877','2');
INSERT INTO `projects_trackers` VALUES ('9877','3');
INSERT INTO `projects_trackers` VALUES ('9877','4');
INSERT INTO `projects_trackers` VALUES ('9877','5');


###################
# Dumping table `queries`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filters` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text COLLATE utf8_unicode_ci,
  `sort_criteria` text COLLATE utf8_unicode_ci,
  `group_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1762 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `queries` VALUES ('1743','9723','Grouped by Category','--- \nstatus_id: \n  :values: \n  - \"\"\n  :operator: o\n','13041','0',NULL,'--- \n- - tracker\n  - desc\n','category');
INSERT INTO `queries` VALUES ('1745','9723','Grouped By Category','--- \nstatus_id: \n  :values: \n  - \"\"\n  :operator: \"*\"\n','13041','0',NULL,'--- \n- - tracker\n  - desc\n','category');


###################
# Dumping table `repositories`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `login` varchar(60) COLLATE utf8_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `root_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path_encoding` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_encoding` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8_unicode_ci,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1203 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `repositories` VALUES ('1178','9723','https://github.com/hectorgrebbell/PSD3.git','hectorgrebbell','duckhurst090107','https://github.com/hectorgrebbell/PSD3.git','Subversion',NULL,NULL,NULL,'psd3','1');
INSERT INTO `repositories` VALUES ('1200','9877','https://github.com/hectorgrebbell/teamproject.git','hectorgrebbell','duckhurst090107','https://github.com/hectorgrebbell/teamproject.git','Subversion',NULL,NULL,NULL,'teamproject','1');


###################
# Dumping table `roles`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_unicode_ci,
  `issues_visibility` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `roles` VALUES ('1','Non member','1','1','1','--- \n- :add_project\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_checklists\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n','default');
INSERT INTO `roles` VALUES ('2','Anonymous','2','1','2','--- \n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :view_checklists\n- :browse_repository\n- :view_changesets\n- :view_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('3','Manager','3','1','0','--- \n- :add_project\n- :edit_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :delete_project\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :view_charts\n- :save_charts\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :view_checklists\n- :done_checklists\n- :edit_checklists\n- :manage_news\n- :comment_news\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('4','Developer','4','1','0','--- \n- :add_project\n- :manage_versions\n- :add_subprojects\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_charts\n- :save_charts\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_own_issue_notes\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :view_checklists\n- :done_checklists\n- :edit_checklists\n- :manage_news\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('5','Reporter','5','1','0','--- \n- :add_project\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_charts\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_own_issue_notes\n- :view_issue_watchers\n- :add_issue_watchers\n- :view_checklists\n- :done_checklists\n- :edit_checklists\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :manage_related_issues\n- :log_time\n- :view_time_entries\n- :edit_own_time_entries\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('6','Guest','6','1','0','--- \n- :add_project\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_charts\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_own_issue_notes\n- :view_issue_watchers\n- :view_checklists\n- :done_checklists\n- :edit_checklists\n- :comment_news\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n','default');


###################
# Dumping table `schema_migrations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:20

INSERT INTO `schema_migrations` VALUES ('1');
INSERT INTO `schema_migrations` VALUES ('1-redmine_theme_changer');
INSERT INTO `schema_migrations` VALUES ('10');
INSERT INTO `schema_migrations` VALUES ('100');
INSERT INTO `schema_migrations` VALUES ('101');
INSERT INTO `schema_migrations` VALUES ('102');
INSERT INTO `schema_migrations` VALUES ('103');
INSERT INTO `schema_migrations` VALUES ('104');
INSERT INTO `schema_migrations` VALUES ('105');
INSERT INTO `schema_migrations` VALUES ('106');
INSERT INTO `schema_migrations` VALUES ('107');
INSERT INTO `schema_migrations` VALUES ('108');
INSERT INTO `schema_migrations` VALUES ('11');
INSERT INTO `schema_migrations` VALUES ('12');
INSERT INTO `schema_migrations` VALUES ('13');
INSERT INTO `schema_migrations` VALUES ('14');
INSERT INTO `schema_migrations` VALUES ('15');
INSERT INTO `schema_migrations` VALUES ('16');
INSERT INTO `schema_migrations` VALUES ('17');
INSERT INTO `schema_migrations` VALUES ('18');
INSERT INTO `schema_migrations` VALUES ('19');
INSERT INTO `schema_migrations` VALUES ('2');
INSERT INTO `schema_migrations` VALUES ('20');
INSERT INTO `schema_migrations` VALUES ('20090214190337');
INSERT INTO `schema_migrations` VALUES ('20090312172426');
INSERT INTO `schema_migrations` VALUES ('20090312194159');
INSERT INTO `schema_migrations` VALUES ('20090318181151');
INSERT INTO `schema_migrations` VALUES ('20090323224724');
INSERT INTO `schema_migrations` VALUES ('20090401221305');
INSERT INTO `schema_migrations` VALUES ('20090401231134');
INSERT INTO `schema_migrations` VALUES ('20090403001910');
INSERT INTO `schema_migrations` VALUES ('20090406161854');
INSERT INTO `schema_migrations` VALUES ('20090425161243');
INSERT INTO `schema_migrations` VALUES ('20090503121501');
INSERT INTO `schema_migrations` VALUES ('20090503121505');
INSERT INTO `schema_migrations` VALUES ('20090503121510');
INSERT INTO `schema_migrations` VALUES ('20090614091200');
INSERT INTO `schema_migrations` VALUES ('20090704172350');
INSERT INTO `schema_migrations` VALUES ('20090704172355');
INSERT INTO `schema_migrations` VALUES ('20090704172358');
INSERT INTO `schema_migrations` VALUES ('20091010093521');
INSERT INTO `schema_migrations` VALUES ('20091017212227');
INSERT INTO `schema_migrations` VALUES ('20091017212457');
INSERT INTO `schema_migrations` VALUES ('20091017212644');
INSERT INTO `schema_migrations` VALUES ('20091017212938');
INSERT INTO `schema_migrations` VALUES ('20091017213027');
INSERT INTO `schema_migrations` VALUES ('20091017213113');
INSERT INTO `schema_migrations` VALUES ('20091017213151');
INSERT INTO `schema_migrations` VALUES ('20091017213228');
INSERT INTO `schema_migrations` VALUES ('20091017213257');
INSERT INTO `schema_migrations` VALUES ('20091017213332');
INSERT INTO `schema_migrations` VALUES ('20091017213444');
INSERT INTO `schema_migrations` VALUES ('20091017213536');
INSERT INTO `schema_migrations` VALUES ('20091017213642');
INSERT INTO `schema_migrations` VALUES ('20091017213716');
INSERT INTO `schema_migrations` VALUES ('20091017213757');
INSERT INTO `schema_migrations` VALUES ('20091017213835');
INSERT INTO `schema_migrations` VALUES ('20091017213910');
INSERT INTO `schema_migrations` VALUES ('20091017214015');
INSERT INTO `schema_migrations` VALUES ('20091017214107');
INSERT INTO `schema_migrations` VALUES ('20091017214136');
INSERT INTO `schema_migrations` VALUES ('20091017214236');
INSERT INTO `schema_migrations` VALUES ('20091017214308');
INSERT INTO `schema_migrations` VALUES ('20091017214336');
INSERT INTO `schema_migrations` VALUES ('20091017214406');
INSERT INTO `schema_migrations` VALUES ('20091017214440');
INSERT INTO `schema_migrations` VALUES ('20091017214519');
INSERT INTO `schema_migrations` VALUES ('20091017214611');
INSERT INTO `schema_migrations` VALUES ('20091017214644');
INSERT INTO `schema_migrations` VALUES ('20091017214720');
INSERT INTO `schema_migrations` VALUES ('20091017214750');
INSERT INTO `schema_migrations` VALUES ('20091025163651');
INSERT INTO `schema_migrations` VALUES ('20091108092559');
INSERT INTO `schema_migrations` VALUES ('20091114105931');
INSERT INTO `schema_migrations` VALUES ('20091119162427-redmine_gitosis');
INSERT INTO `schema_migrations` VALUES ('20091123212029');
INSERT INTO `schema_migrations` VALUES ('20091205124427');
INSERT INTO `schema_migrations` VALUES ('20091220183509');
INSERT INTO `schema_migrations` VALUES ('20091220183727');
INSERT INTO `schema_migrations` VALUES ('20091220184736');
INSERT INTO `schema_migrations` VALUES ('20091225164732');
INSERT INTO `schema_migrations` VALUES ('20091227112908');
INSERT INTO `schema_migrations` VALUES ('20100129193402');
INSERT INTO `schema_migrations` VALUES ('20100129193813');
INSERT INTO `schema_migrations` VALUES ('20100221100219');
INSERT INTO `schema_migrations` VALUES ('20100222185306-redmine_charts');
INSERT INTO `schema_migrations` VALUES ('20100222185307-redmine_charts');
INSERT INTO `schema_migrations` VALUES ('20100222185308-redmine_charts');
INSERT INTO `schema_migrations` VALUES ('20100313132032');
INSERT INTO `schema_migrations` VALUES ('20100313171051');
INSERT INTO `schema_migrations` VALUES ('20100407184912-redmine_charts');
INSERT INTO `schema_migrations` VALUES ('20100705164950');
INSERT INTO `schema_migrations` VALUES ('20100819172912');
INSERT INTO `schema_migrations` VALUES ('20101022164431-redmine_jchat');
INSERT INTO `schema_migrations` VALUES ('20101104182107');
INSERT INTO `schema_migrations` VALUES ('20101107130441');
INSERT INTO `schema_migrations` VALUES ('20101114115114');
INSERT INTO `schema_migrations` VALUES ('20101114115359');
INSERT INTO `schema_migrations` VALUES ('20110220160626');
INSERT INTO `schema_migrations` VALUES ('20110223180944');
INSERT INTO `schema_migrations` VALUES ('20110223180953');
INSERT INTO `schema_migrations` VALUES ('20110224000000');
INSERT INTO `schema_migrations` VALUES ('20110226120112');
INSERT INTO `schema_migrations` VALUES ('20110226120132');
INSERT INTO `schema_migrations` VALUES ('20110227125750');
INSERT INTO `schema_migrations` VALUES ('20110228000000');
INSERT INTO `schema_migrations` VALUES ('20110228000100');
INSERT INTO `schema_migrations` VALUES ('20110401192910');
INSERT INTO `schema_migrations` VALUES ('20110408103312');
INSERT INTO `schema_migrations` VALUES ('20110412065600');
INSERT INTO `schema_migrations` VALUES ('20110511000000');
INSERT INTO `schema_migrations` VALUES ('20110902000000');
INSERT INTO `schema_migrations` VALUES ('20111010202847-redmine_issue_checklist');
INSERT INTO `schema_migrations` VALUES ('20111201201315');
INSERT INTO `schema_migrations` VALUES ('20120115143024');
INSERT INTO `schema_migrations` VALUES ('20120115143100');
INSERT INTO `schema_migrations` VALUES ('20120115143126');
INSERT INTO `schema_migrations` VALUES ('20120127174243');
INSERT INTO `schema_migrations` VALUES ('20120205111326');
INSERT INTO `schema_migrations` VALUES ('20120223110929');
INSERT INTO `schema_migrations` VALUES ('20120301153455');
INSERT INTO `schema_migrations` VALUES ('21');
INSERT INTO `schema_migrations` VALUES ('22');
INSERT INTO `schema_migrations` VALUES ('23');
INSERT INTO `schema_migrations` VALUES ('24');
INSERT INTO `schema_migrations` VALUES ('25');
INSERT INTO `schema_migrations` VALUES ('26');
INSERT INTO `schema_migrations` VALUES ('27');
INSERT INTO `schema_migrations` VALUES ('28');
INSERT INTO `schema_migrations` VALUES ('29');
INSERT INTO `schema_migrations` VALUES ('3');
INSERT INTO `schema_migrations` VALUES ('30');
INSERT INTO `schema_migrations` VALUES ('31');
INSERT INTO `schema_migrations` VALUES ('32');
INSERT INTO `schema_migrations` VALUES ('33');
INSERT INTO `schema_migrations` VALUES ('34');
INSERT INTO `schema_migrations` VALUES ('35');
INSERT INTO `schema_migrations` VALUES ('36');
INSERT INTO `schema_migrations` VALUES ('37');
INSERT INTO `schema_migrations` VALUES ('38');
INSERT INTO `schema_migrations` VALUES ('39');
INSERT INTO `schema_migrations` VALUES ('4');
INSERT INTO `schema_migrations` VALUES ('40');
INSERT INTO `schema_migrations` VALUES ('41');
INSERT INTO `schema_migrations` VALUES ('42');
INSERT INTO `schema_migrations` VALUES ('43');
INSERT INTO `schema_migrations` VALUES ('44');
INSERT INTO `schema_migrations` VALUES ('45');
INSERT INTO `schema_migrations` VALUES ('46');
INSERT INTO `schema_migrations` VALUES ('47');
INSERT INTO `schema_migrations` VALUES ('48');
INSERT INTO `schema_migrations` VALUES ('49');
INSERT INTO `schema_migrations` VALUES ('5');
INSERT INTO `schema_migrations` VALUES ('50');
INSERT INTO `schema_migrations` VALUES ('51');
INSERT INTO `schema_migrations` VALUES ('52');
INSERT INTO `schema_migrations` VALUES ('53');
INSERT INTO `schema_migrations` VALUES ('54');
INSERT INTO `schema_migrations` VALUES ('55');
INSERT INTO `schema_migrations` VALUES ('56');
INSERT INTO `schema_migrations` VALUES ('57');
INSERT INTO `schema_migrations` VALUES ('58');
INSERT INTO `schema_migrations` VALUES ('59');
INSERT INTO `schema_migrations` VALUES ('6');
INSERT INTO `schema_migrations` VALUES ('60');
INSERT INTO `schema_migrations` VALUES ('61');
INSERT INTO `schema_migrations` VALUES ('62');
INSERT INTO `schema_migrations` VALUES ('63');
INSERT INTO `schema_migrations` VALUES ('64');
INSERT INTO `schema_migrations` VALUES ('65');
INSERT INTO `schema_migrations` VALUES ('66');
INSERT INTO `schema_migrations` VALUES ('67');
INSERT INTO `schema_migrations` VALUES ('68');
INSERT INTO `schema_migrations` VALUES ('69');
INSERT INTO `schema_migrations` VALUES ('7');
INSERT INTO `schema_migrations` VALUES ('70');
INSERT INTO `schema_migrations` VALUES ('71');
INSERT INTO `schema_migrations` VALUES ('72');
INSERT INTO `schema_migrations` VALUES ('73');
INSERT INTO `schema_migrations` VALUES ('74');
INSERT INTO `schema_migrations` VALUES ('75');
INSERT INTO `schema_migrations` VALUES ('76');
INSERT INTO `schema_migrations` VALUES ('77');
INSERT INTO `schema_migrations` VALUES ('78');
INSERT INTO `schema_migrations` VALUES ('79');
INSERT INTO `schema_migrations` VALUES ('8');
INSERT INTO `schema_migrations` VALUES ('80');
INSERT INTO `schema_migrations` VALUES ('81');
INSERT INTO `schema_migrations` VALUES ('82');
INSERT INTO `schema_migrations` VALUES ('83');
INSERT INTO `schema_migrations` VALUES ('84');
INSERT INTO `schema_migrations` VALUES ('85');
INSERT INTO `schema_migrations` VALUES ('86');
INSERT INTO `schema_migrations` VALUES ('87');
INSERT INTO `schema_migrations` VALUES ('88');
INSERT INTO `schema_migrations` VALUES ('89');
INSERT INTO `schema_migrations` VALUES ('9');
INSERT INTO `schema_migrations` VALUES ('90');
INSERT INTO `schema_migrations` VALUES ('91');
INSERT INTO `schema_migrations` VALUES ('92');
INSERT INTO `schema_migrations` VALUES ('93');
INSERT INTO `schema_migrations` VALUES ('94');
INSERT INTO `schema_migrations` VALUES ('95');
INSERT INTO `schema_migrations` VALUES ('96');
INSERT INTO `schema_migrations` VALUES ('97');
INSERT INTO `schema_migrations` VALUES ('98');
INSERT INTO `schema_migrations` VALUES ('99');


###################
# Dumping table `settings`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21

INSERT INTO `settings` VALUES ('1','text_formatting','textile','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('2','protocol','https','2012-10-09 11:42:16');
INSERT INTO `settings` VALUES ('3','welcome_text','_We are long-term users of Redmine. Hosting this service is part of our contribution back to the community._\r\n\r\nWelcome to \"BitBot Software\'s\":http://www.bitbot.com.au/ free service called \"Hosted Redmine\":https://www.hostedredmine.com/. This site has been operating since March 2010 and provides a free project management software service. We host \"Redmine\":http://www.redmine.org/ projects free of charge within our high quality server environment.\r\n\r\nIn return, all we ask from you is that you consider providing a link to HostedRedmine.com from your website. A simple link of appreciation. You are more than welcome to use this website for commercial activities so long as you don\'t abuse the service.\r\n\r\n* See the \"Hosted Redmine project\":/projects/hosted-redmine for support on this website.\r\n\r\nPlease register for your \"free account here\":/account/register. After you have registered and verified your email address, feel free to create your own private or public project. Instructions on \"registering can be found here\":/projects/hosted-redmine/wiki/Register. Be aware that this service does not provide administrator access to Redmine, so you won\'t be able to create a custom configuration. However, we are always open to ideas on how to improve the service and we encourage you to get in touch.\r\n\r\n* If you are just looking to experiment with Redmine\'s features, we recommend you use the \"official demo\":http://demo.redmine.org/ instead.\r\n\r\nHostedRedmine.com has the following features:\r\n* Redmine 1.4 stable branch (with improved workflows and trackers).\r\n* Free \"database export\":https://www.hostedredmine.com/export/index.php for backups and migration away.\r\n* Subversion (SVN) repositories can be used remotely.\r\n* \"Secure SSL website\":https://www.hostedredmine.com/ is also freely available.\r\n* \"Theme Changer plugin\":/my/account allows you to choose your own theme (including Basecamp).\r\n* Redmine Issue Checklist plugin allows creation of to-do lists.\r\n* Mylyn Connector plugin for Eclipse.\r\n* Various other \"plugins\":/projects/hosted-redmine/wiki/Plugins are available.\r\n\r\nIf you need support or want to suggest a feature, please do so in the \"Hosted Redmine project\":/projects/hosted-redmine after signing in. If you are having problems signing in or need to discuss a matter privately, please email bitbot@bitbot.com.au.\r\n\r\nWe respect the privacy and confidentiality of your data. This service runs from a Virtual Private Server (VPS) in the United States of America, and only BitBot Software Pty Ltd (an Australian company) has data access.\r\n\r\nYou may \"download an export\":https://www.hostedredmine.com/export/index.php of your data from HostedRedmine.com at any time free of charge. This exports your database and all uploaded files. We ask that you please delete your projects from HostedRedmine.com if you no longer need them, to save disk space for other users.\r\n\r\nNote that we do reserve the right to terminate access to the site for any account that we believe is detrimental to this service at our sole discretion. We reserve the right to display advertisements, such as Google AdWords. The data entered into Redmine remains yours, however you permit us to make copies as necessary for backups and other maintenance activities.\r\n\r\nHosted Redmine is proudly brought to you by \"BitBot Software Pty Ltd\":http://www.bitbot.com.au/. We help strengthen businesses with open-source software. BitBot was founded in June 2008 and we are based in Newcastle, NSW, Australia.','2012-05-08 22:51:20');
INSERT INTO `settings` VALUES ('4','app_title','Online Project Management :: Free Redmine Hosting','2012-05-08 22:37:40');
INSERT INTO `settings` VALUES ('5','feeds_limit','15','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('6','wiki_compression','','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('7','diff_max_lines_displayed','1500','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('8','activity_days_default','30','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('9','attachment_max_size','5120','2011-11-08 22:42:46');
INSERT INTO `settings` VALUES ('10','file_max_size_displayed','512','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('11','host_name','www.hostedredmine.com','2010-03-27 00:26:10');
INSERT INTO `settings` VALUES ('12','per_page_options','25,50,100','2010-03-26 23:31:33');
INSERT INTO `settings` VALUES ('13','ui_theme','ModulaMojito','2010-11-06 11:30:37');
INSERT INTO `settings` VALUES ('14','default_language','en','2010-03-26 23:32:11');
INSERT INTO `settings` VALUES ('15','gravatar_default','identicon','2010-11-06 11:32:50');
INSERT INTO `settings` VALUES ('16','user_format','firstname_lastname','2010-03-26 23:32:11');
INSERT INTO `settings` VALUES ('17','start_of_week','','2010-03-26 23:32:11');
INSERT INTO `settings` VALUES ('18','date_format','%Y-%m-%d','2011-11-08 22:44:54');
INSERT INTO `settings` VALUES ('19','gravatar_enabled','1','2010-11-06 11:31:14');
INSERT INTO `settings` VALUES ('20','time_format','%I:%M %p','2011-11-08 22:44:54');
INSERT INTO `settings` VALUES ('21','rest_api_enabled','1','2010-07-28 18:46:37');
INSERT INTO `settings` VALUES ('22','lost_password','1','2010-03-26 23:33:45');
INSERT INTO `settings` VALUES ('23','openid','0','2011-09-12 09:11:31');
INSERT INTO `settings` VALUES ('24','password_min_length','4','2010-03-26 23:33:45');
INSERT INTO `settings` VALUES ('25','login_required','0','2010-03-26 23:33:45');
INSERT INTO `settings` VALUES ('26','self_registration','3','2011-04-04 07:43:50');
INSERT INTO `settings` VALUES ('27','default_projects_public','0','2010-03-26 23:34:29');
INSERT INTO `settings` VALUES ('28','sequential_project_identifiers','0','2010-03-26 23:34:23');
INSERT INTO `settings` VALUES ('29','default_projects_modules','--- \n- issue_tracking\n- time_tracking\n- news\n- documents\n- files\n- wiki\n- repository\n- boards\n','2010-03-26 23:34:23');
INSERT INTO `settings` VALUES ('30','new_project_user_role_id','3','2010-03-26 23:34:23');
INSERT INTO `settings` VALUES ('31','emails_footer','You have received this notification because you have either subscribed to it, or are involved in it.\r\nTo change your notification preferences, please click here: https://www.hostedredmine.com/my/account','2012-10-09 11:42:03');
INSERT INTO `settings` VALUES ('32','plain_text_mail','0','2010-03-26 23:35:38');
INSERT INTO `settings` VALUES ('33','mail_from','HostedRedmine.com <no-reply@hostedredmine.com>','2011-05-20 14:59:31');
INSERT INTO `settings` VALUES ('34','bcc_recipients','1','2010-03-26 23:35:38');
INSERT INTO `settings` VALUES ('35','notified_events','--- \n- issue_added\n- issue_updated\n- issue_note_added\n- news_added\n- news_comment_added\n- document_added\n- file_added\n- message_posted\n','2011-06-12 20:57:54');
INSERT INTO `settings` VALUES ('36','autologin','365','2011-04-04 07:43:50');
INSERT INTO `settings` VALUES ('37','repositories_encodings','','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('38','commit_logs_encoding','UTF-8','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('39','commit_fix_status_id','3','2011-01-13 21:44:28');
INSERT INTO `settings` VALUES ('40','sys_api_enabled','0','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('41','commit_ref_keywords','refs,references,IssueID','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('42','repository_log_display_limit','100','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('43','commit_fix_done_ratio','100','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('44','autofetch_changesets','1','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('45','commit_fix_keywords','fixes,closes,fixed','2010-11-14 10:59:38');
INSERT INTO `settings` VALUES ('46','enabled_scm','--- \n- Subversion\n','2011-07-31 22:17:13');
INSERT INTO `settings` VALUES ('47','cache_formatted_text','0','2010-07-24 12:28:42');
INSERT INTO `settings` VALUES ('48','commit_logtime_enabled','1','2012-03-06 19:24:27');
INSERT INTO `settings` VALUES ('49','plugin_google_analytics_plugin','--- !map:HashWithIndifferentAccess \ngoogle_analytics_log_authenticated: \"1\"\ngoogle_analytics_code: |-\n  <script type=\"text/javascript\">\r\n  \r\n    var _gaq = _gaq || [];\r\n    _gaq.push([\'_setAccount\', \'UA-12687515-3\']);\r\n    _gaq.push([\'_setCustomVar\', 1, \'Login\', document.getElementById(\'loggedas\') != null\r\n    ? document.getElementById(\'loggedas\').childNodes[1].textContent : \'(anonymous)\', 1]);\r\n    _gaq.push([\'_trackPageview\']);\r\n  \r\n    (function() {\r\n      var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n      ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n      var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n    })();\r\n  \r\n  </script>\ngoogle_analytics_log_anonymous: \"1\"\n','2011-02-05 10:17:00');
INSERT INTO `settings` VALUES ('50','cross_project_issue_relations','1','2011-11-08 22:53:18');
INSERT INTO `settings` VALUES ('51','issue_done_ratio','issue_field','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('52','issue_list_default_columns','--- \n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n- category\n','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('53','issues_export_limit','500','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('54','gantt_items_limit','500','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('55','display_subprojects_issues','1','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('56','plugin_redmine_delete_project','--- !map:HashWithIndifferentAccess \nrepos_path: /var/svn\ndestroy: \"yes\"\nstatus_number: \"1001\"\nchmod: \"no\"\n','2011-04-15 20:35:49');
INSERT INTO `settings` VALUES ('57','plugin_redmine_project_filtering','--- \ncss: |\n  \n  #project_filtering label { display: block; }\n  #project_filtering p { float: left; }\n  #project_filtering p.q { width: 30em; }\n  #project_filtering p.custom_field { width: 10em; }\n  #project_filtering p.buttons { clear: both; with: 100%; float: none; }\n  \n  ul.filter_fields { padding: 0; }\n  ul.filter_fields li {\n    list-style-type: none;\n    display: inline;\n    margin: 0 10px 0 0;\n  }\n\n:used_fields: \n  \"5\": \"1\"\nused_fields: {}\n\n','2011-04-17 22:09:38');
INSERT INTO `settings` VALUES ('58','emails_header','','2011-05-20 14:59:31');
INSERT INTO `settings` VALUES ('59','default_notification_option','only_my_events','2011-05-20 14:59:31');
INSERT INTO `settings` VALUES ('60','plugin_redmine_gitosis','--- !map:HashWithIndifferentAccess \nbasePath: /usr/local/git/repositories/\ndeveloperBaseUrls: \"git@rails.bitbot.net.au:\"\nrepoNameCustomField: \"\"\nreadOnlyBaseUrls: \"\"\ngitosisUrl: git@rails.bitbot.net.au:gitosis-admin.git\ngitosisIdentityFile: /usr/local/www/hostedredmine.com/redmine/vendor/plugins/redmine_gitosis/extra/ssh/private_key\n','2011-06-19 21:54:14');
INSERT INTO `settings` VALUES ('61','commit_logtime_activity_id','0','2012-03-06 19:24:26');
INSERT INTO `settings` VALUES ('62','plugin_redmine_bots_filter','--- !map:HashWithIndifferentAccess \nbots: |-\n  baiduspider\r\n  sogou\r\n  yandex\r\n  spider\r\n  robot\r\n  crawl\n','2012-05-03 18:24:23');


###################
# Dumping table `theme_changer_user_settings`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `theme_changer_user_settings`
--

DROP TABLE IF EXISTS `theme_changer_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_changer_user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8927 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21

INSERT INTO `theme_changer_user_settings` VALUES ('8668','13040','__system_setting__','2012-10-04 21:29:45');
INSERT INTO `theme_changer_user_settings` VALUES ('8669','13041','ModulaMojito','2012-10-04 22:21:30');
INSERT INTO `theme_changer_user_settings` VALUES ('8670','13042','__system_setting__','2012-10-04 22:50:36');
INSERT INTO `theme_changer_user_settings` VALUES ('8675','13048','__system_setting__','2012-10-05 03:40:23');
INSERT INTO `theme_changer_user_settings` VALUES ('8702','13084','__system_setting__','2012-10-06 21:46:24');
INSERT INTO `theme_changer_user_settings` VALUES ('8821','13236','__system_setting__','2012-10-11 10:53:21');


###################
# Dumping table `time_entries`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=32041 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21



###################
# Dumping table `tokens`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21

INSERT INTO `tokens` VALUES ('56597','2','recovery','62e451b585993952fa6354af3c836fd8ec5d90e1','2012-10-09 15:22:48');
INSERT INTO `tokens` VALUES ('56155','13040','api','284b03200f36d0b50b197dac32189f565a0e9c3c','2012-10-04 21:29:08');
INSERT INTO `tokens` VALUES ('56156','13040','feeds','892435989a6b2c0aebe116a0744bbd5df7d50d2f','2012-10-04 21:29:51');
INSERT INTO `tokens` VALUES ('56157','13041','api','f286af57d9783f23d0fd52dbdbe4906c6a0fed43','2012-10-04 22:14:55');
INSERT INTO `tokens` VALUES ('56158','13041','feeds','67c54a956a1e2e58dd65ff9a94a0a4fd01958c88','2012-10-04 22:17:07');
INSERT INTO `tokens` VALUES ('56162','13042','api','0041408ea6669a371b68dc6d2485dacb0ef8e052','2012-10-04 22:50:23');
INSERT INTO `tokens` VALUES ('56163','13042','feeds','126e73bf79d6d7d1ce191a3f2e51330b2081b1f6','2012-10-04 22:50:40');
INSERT INTO `tokens` VALUES ('56167','13042','autologin','987d6b926e6d997553227dceaa484420dc56936d','2012-10-04 23:10:55');
INSERT INTO `tokens` VALUES ('56182','13048','api','1fc525102e4309855148ae8ac4bb7f446539e5bf','2012-10-05 03:40:08');
INSERT INTO `tokens` VALUES ('56320','13048','feeds','47de40fc113854c9c0fd0f1acc05479f37bb24a7','2012-10-06 23:59:37');
INSERT INTO `tokens` VALUES ('56310','13084','api','838f8ee14d38e2a038b2b6ff926fc3af479d4ccb','2012-10-06 21:45:49');
INSERT INTO `tokens` VALUES ('56324','13084','feeds','0faa138cb2512fe5db29cc838597012ff5768479','2012-10-07 01:25:19');
INSERT INTO `tokens` VALUES ('56832','13236','api','e922d1faea5b8e0b67331df038133ed446ba8664','2012-10-11 10:52:46');
INSERT INTO `tokens` VALUES ('56833','13236','feeds','4e2ec8de439d371052a08175bdff95eb2e57b94a','2012-10-11 10:54:18');
INSERT INTO `tokens` VALUES ('56875','13236','recovery','707d5dabe9024a0ed6a016469c67bfd3ea222c54','2012-10-11 19:51:59');


###################
# Dumping table `trackers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21

INSERT INTO `trackers` VALUES ('1','Bug','1','3','1');
INSERT INTO `trackers` VALUES ('2','Feature','1','1','1');
INSERT INTO `trackers` VALUES ('3','Support','0','2','0');
INSERT INTO `trackers` VALUES ('4','Task','0','4','1');
INSERT INTO `trackers` VALUES ('5','Deliverable','0','5','1');


###################
# Dumping table `user_preferences`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text COLLATE utf8_unicode_ci,
  `hide_mail` tinyint(1) DEFAULT '0',
  `time_zone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21

INSERT INTO `user_preferences` VALUES ('2','2','--- {}\n\n','0',NULL);
INSERT INTO `user_preferences` VALUES ('12840','13040','--- \n:warn_on_leaving_unsaved: \"1\"\n:diff_type: inline\n:gantt_months: 6\n:no_self_notified: true\n:gantt_zoom: 2\n:comments_sorting: desc\n','0','London');
INSERT INTO `user_preferences` VALUES ('12841','13041','--- \n:warn_on_leaving_unsaved: \"1\"\n:gantt_months: 6\n:no_self_notified: false\n:gantt_zoom: 2\n:comments_sorting: asc\n','1','London');
INSERT INTO `user_preferences` VALUES ('12842','13042','--- \n:warn_on_leaving_unsaved: \"1\"\n:gantt_months: 6\n:no_self_notified: false\n:gantt_zoom: 2\n:comments_sorting: asc\n','1','London');
INSERT INTO `user_preferences` VALUES ('12848','13048','--- \n:warn_on_leaving_unsaved: \"1\"\n:gantt_zoom: 2\n:gantt_months: 6\n:no_self_notified: false\n:comments_sorting: asc\n','0','');
INSERT INTO `user_preferences` VALUES ('12884','13084','--- \n:warn_on_leaving_unsaved: \"1\"\n:gantt_months: 2\n:no_self_notified: true\n:comments_sorting: asc\n:gantt_zoom: 4\n','0','Edinburgh');
INSERT INTO `user_preferences` VALUES ('13036','13236','--- \n:warn_on_leaving_unsaved: \"1\"\n:gantt_zoom: 2\n:gantt_months: 6\n:no_self_notified: true\n:comments_sorting: asc\n','0','');


###################
# Dumping table `users`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hashed_password` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mail` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_notification` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=13372 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21

INSERT INTO `users` VALUES ('2','','','','Anonymous','','0','0',NULL,'',NULL,'2010-03-26 22:55:32','2010-03-26 22:55:32','AnonymousUser',NULL,'only_my_events',NULL);
INSERT INTO `users` VALUES ('13040','dan.tomosoiu','57b5e7d1449fe8e06077d8d2acfe1255e511957b','Dan','Tomosoiu','dan.tomosoiu@gmail.com','0','1','2012-10-15 22:46:29','en',NULL,'2012-10-04 21:29:08','2012-10-15 22:46:29','User',NULL,'only_my_events','5abe67eb6f03441d1bfdd730d4999144');
INSERT INTO `users` VALUES ('13041','tonylau','8e3259b6844dd0899abbfe32b449de619107ea32','Tony','Lau','1102266l@student.gla.ac.uk','0','1','2012-10-15 20:11:41','en',NULL,'2012-10-04 22:14:55','2012-10-15 20:11:41','User',NULL,'only_my_events','f44b82197d736503f59f49736cbd3c02');
INSERT INTO `users` VALUES ('13042','hectorgrebbell','0cdb6346c276fcd9d6ac7c462def8f797c15522b','Hector','Grebbell','hectorgrebbell@googlemail.com','0','1','2012-10-15 01:25:04','en',NULL,'2012-10-04 22:50:23','2012-10-15 01:25:04','User',NULL,'only_my_events','d555867355f8eaa91280a734e8470fc7');
INSERT INTO `users` VALUES ('13048','cocoza4','636faf7ffddcfb062b72397a68cc03c0dde4b76b','Peeranat','Fupongsiripan','peeranat85@gmail.com','0','1','2012-10-15 22:42:17','en',NULL,'2012-10-05 03:40:08','2012-10-15 22:42:17','User',NULL,'only_my_events','645ea5f42dbc33b42fef6431aabce472');
INSERT INTO `users` VALUES ('13084','mjkilian','b7b493b1324447e4a4e7bd905a6e2efc761926d3','Michael','Kilian','1003819k@student.gla.ac.uk','0','1','2012-10-15 22:39:03','en',NULL,'2012-10-06 21:45:49','2012-10-15 22:39:03','User',NULL,'only_my_events','f3759a2b734e0b1bddbee68a940c16a8');
INSERT INTO `users` VALUES ('13236','teamlsupervisor','80a30d54efae87cb084943da6f7cceb7547537ab','Team L','Supervisor','teamlmember11@gmail.com','0','1','2012-10-11 10:59:20','en',NULL,'2012-10-11 10:52:45','2012-10-11 10:59:20','User',NULL,'none','014c71f776952ade99358c09ce64ab03');


###################
# Dumping table `versions`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'open',
  `sharing` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB AUTO_INCREMENT=3294 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21



###################
# Dumping table `watchers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=137177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21



###################
# Dumping table `wiki_content_versions`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) COLLATE utf8_unicode_ci DEFAULT '',
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB AUTO_INCREMENT=27548 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21



###################
# Dumping table `wiki_contents`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6328 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:21



###################
# Dumping table `wiki_pages`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6329 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:22

INSERT INTO `wiki_pages` VALUES ('6320','8848','Interview_Questions','2012-10-15 01:25:51','0','6256');
INSERT INTO `wiki_pages` VALUES ('6257','8848','Risk_Management_Document','2012-10-08 20:05:41','0','6256');
INSERT INTO `wiki_pages` VALUES ('6256','8848','Wiki','2012-10-08 19:54:38','0',NULL);


###################
# Dumping table `wiki_redirects`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirects_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:22



###################
# Dumping table `wikis`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9041 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:22

INSERT INTO `wikis` VALUES ('8848','9723','Wiki','1');
INSERT INTO `wikis` VALUES ('8985','9877','Wiki','1');


###################
# Dumping table `workflows`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.63-log

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
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-15 23:35:22

INSERT INTO `workflows` VALUES ('31','2','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('32','2','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('33','2','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('34','2','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('35','2','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('36','2','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('37','2','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('38','2','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('39','2','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('40','2','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('41','2','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('42','2','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('43','2','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('44','2','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('45','2','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('46','2','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('47','2','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('48','2','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('49','2','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('50','2','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('51','2','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('52','2','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('53','2','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('54','2','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('55','2','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('56','2','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('57','2','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('58','2','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('59','2','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('60','2','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('216','2','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('217','2','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('218','2','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('219','2','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('220','2','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('221','2','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('222','2','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('223','2','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('224','2','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('225','2','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('226','2','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('227','2','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('228','2','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('229','2','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('230','2','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('231','2','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('232','2','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('233','2','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('234','2','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('235','2','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('236','2','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('237','2','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('238','2','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('239','2','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('240','2','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('241','2','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('242','2','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('243','2','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('244','2','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('245','2','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('431','1','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('432','1','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('433','1','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('434','1','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('435','1','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('436','1','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('437','1','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('438','1','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('439','1','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('440','1','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('441','1','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('442','1','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('443','1','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('444','1','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('445','1','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('446','1','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('447','1','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('448','1','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('449','1','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('450','1','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('451','1','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('452','1','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('453','1','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('454','1','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('455','1','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('456','1','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('457','1','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('458','1','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('459','1','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('460','1','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('462','1','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('463','1','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('464','1','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('465','1','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('466','1','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('467','1','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('468','1','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('469','1','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('470','1','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('471','1','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('472','1','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('473','1','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('474','1','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('475','1','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('476','1','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('477','1','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('478','1','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('479','1','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('480','1','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('481','1','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('482','1','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('483','1','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('493','1','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('494','1','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('495','1','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('496','1','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('497','1','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('498','1','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('499','1','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('500','1','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('508','3','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('509','3','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('510','3','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('511','3','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('512','3','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('513','3','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('514','3','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('515','3','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('516','3','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('517','3','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('518','3','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('519','3','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('520','3','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('521','3','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('522','3','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('523','3','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('524','3','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('525','3','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('526','3','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('527','3','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('528','3','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('529','3','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('530','3','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('531','3','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('532','3','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('533','3','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('534','3','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('535','3','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('536','3','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('537','3','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('539','3','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('540','3','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('541','3','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('542','3','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('543','3','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('544','3','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('545','3','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('546','3','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('547','3','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('548','3','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('549','3','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('550','3','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('551','3','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('552','3','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('553','3','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('554','3','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('555','3','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('556','3','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('557','3','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('558','3','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('559','3','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('560','3','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('570','3','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('571','3','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('572','3','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('573','3','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('574','3','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('575','3','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('576','3','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('577','3','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('585','4','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('586','4','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('587','4','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('588','4','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('589','4','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('590','4','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('591','4','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('592','4','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('593','4','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('594','4','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('595','4','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('596','4','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('597','4','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('598','4','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('599','4','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('600','4','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('601','4','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('602','4','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('603','4','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('604','4','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('605','4','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('606','4','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('607','4','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('608','4','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('609','4','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('610','4','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('611','4','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('612','4','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('613','4','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('614','4','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('616','4','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('617','4','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('618','4','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('619','4','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('620','4','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('621','4','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('622','4','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('623','4','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('624','4','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('625','4','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('626','4','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('627','4','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('628','4','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('629','4','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('630','4','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('631','4','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('632','4','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('633','4','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('634','4','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('635','4','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('636','4','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('637','4','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('647','4','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('648','4','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('649','4','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('650','4','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('651','4','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('652','4','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('653','4','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('654','4','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('670','3','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('671','3','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('672','3','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('673','3','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('674','3','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('675','3','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('676','3','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('677','3','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('685','1','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('686','1','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('687','1','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('688','1','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('689','1','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('690','1','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('691','1','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('692','1','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('700','4','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('701','4','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('702','4','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('703','4','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('704','4','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('705','4','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('706','4','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('707','4','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('708','2','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('709','2','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('710','2','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('711','2','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('712','2','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('713','2','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('714','2','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('715','2','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('716','5','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('717','5','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('718','5','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('719','5','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('720','5','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('721','5','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('722','5','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('723','5','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('724','5','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('725','5','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('726','5','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('727','5','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('728','5','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('729','5','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('730','5','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('731','5','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('732','5','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('733','5','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('734','5','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('735','5','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('736','5','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('737','5','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('738','5','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('739','5','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('740','5','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('741','5','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('742','5','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('743','5','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('744','5','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('745','5','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('747','5','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('748','5','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('749','5','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('750','5','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('751','5','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('752','5','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('753','5','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('754','5','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('755','5','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('756','5','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('757','5','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('758','5','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('759','5','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('760','5','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('761','5','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('762','5','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('763','5','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('764','5','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('765','5','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('766','5','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('767','5','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('768','5','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('778','5','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('779','5','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('780','5','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('781','5','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('782','5','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('783','5','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('784','5','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('785','5','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('793','5','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('794','5','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('795','5','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('796','5','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('797','5','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('798','5','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('799','5','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('800','5','6','2','6','0','0');

