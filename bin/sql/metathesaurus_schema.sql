CREATE SCHEMA metathesaurus;

USE metathesaurus;

CREATE TABLE `mrconso` (
  `CUI` char(8) NOT NULL,
  `LAT` char(3) NOT NULL,
  `TS` char(1) NOT NULL,
  `LUI` varchar(10) NOT NULL,
  `STT` varchar(3) NOT NULL,
  `SUI` varchar(10) NOT NULL,
  `ISPREF` char(1) NOT NULL,
  `AUI` varchar(9) NOT NULL,
  `SAUI` varchar(50) DEFAULT NULL,
  `SCUI` varchar(50) DEFAULT NULL,
  `SDUI` varchar(50) DEFAULT NULL,
  `SAB` varchar(40) NOT NULL,
  `TTY` varchar(40) NOT NULL,
  `CODE` varchar(100) NOT NULL,
  `STR` text NOT NULL,
  `SRL` int(11) NOT NULL,
  `SUPPRESS` char(1) NOT NULL,
  `CVF` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AUI`),
  KEY `idx_codeSab` (`CODE`,`SAB`),
  KEY `idx_cuiSab` (`CUI`,`SAB`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `translation` (
  `codeOrig` varchar(30) NOT NULL,
  `codeOrigVocId` varchar(30) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `codeVocId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codeOrig`,`codeOrigVocId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
-- Table structure for table `hl7vocid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hl7vocid` (
  `id` varchar(30) DEFAULT NULL,
  `voc` varchar(250) NOT NULL,
  PRIMARY KEY (`voc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hl7vocid`
--

LOCK TABLES `hl7vocid` WRITE;
/*!40000 ALTER TABLE `hl7vocid` DISABLE KEYS */;
INSERT INTO `hl7vocid` VALUES (NULL,'ALT'),(NULL,'AOT'),(NULL,'ATC'),(NULL,'CCC'),(NULL,'CCS'),(NULL,'CDT'),(NULL,'CHV'),(NULL,'CPM'),(NULL,'CPT'),(NULL,'CSP'),(NULL,'CVX'),(NULL,'DMDICD10'),(NULL,'DSM4'),(NULL,'FMA'),(NULL,'GO'),(NULL,'GS'),(NULL,'HCDT'),(NULL,'HCPCS'),(NULL,'HCPT'),('2.16.840.1.113883.6.281','HGNC'),(NULL,'HL7V2.5'),(NULL,'HL7V3.0'),('2.16.840.1.113883.6.3','ICD10;ICD10AM;ICD10AMAE;ICD10CM;ICD10DUT;ICD10PCS'),('2.16.840.1.113883.6.3.1','ICD10AE'),('2.16.840.1.113883.6.2','ICD9CM'),(NULL,'ICF'),(NULL,'ICF-CY'),(NULL,'ICNP'),(NULL,'ICPC2EDUT'),(NULL,'ICPC2EENG'),(NULL,'ICPC2ICD10DUT'),(NULL,'ICPC2ICD10ENG'),(NULL,'ICPC2P'),(NULL,'KCD5'),(NULL,'LCH_NW'),('2.16.840.1.113883.6.1','LNC'),(NULL,'MDDB'),('2.16.840.1.113883.6.163','MDR;MDRCZE;MDRDUT;MDRFRE;MDRGER;MDRHUN;MDRITA;MDRJPN;MDRPOR;MDRSPA'),(NULL,'MEDCIN'),(NULL,'MEDLINEPLUS'),(NULL,'MMSL'),(NULL,'MMX'),('2.16.840.1.113883.6.177','MSH;MSHCZE;MSHDUT;MSHFIN;MSHFRE;MSHGER;MSHITA;MSHJPN;MSHLAV;MSHNOR;MSHPOL;MSHPOR;MSHRUS;MSHSCR;MSHSPA;MSHSWE'),(NULL,'MTH'),(NULL,'MTHHH'),(NULL,'MTHICD9'),(NULL,'MTHICPC2EAE'),(NULL,'MTHICPC2ICD10AE'),(NULL,'MTHSPL'),(NULL,'NAN'),(NULL,'NCBI'),('2.16.840.1.113883.3.26.1.1','NCI;NCI_BioC;NCI_BRIDG;NCI_CDC;NCI_CDISC;NCI_CRCH;NCI_CTCAE;NCI_CTEP-SDC;NCI_DCP;NCI_DICOM;NCI_DTP;NCI_FDA;NCI_ICH;NCI_JAX;NCI_KEGG;NCI_NCI-GLOSS;NCI_NCI-HL7;NCI_NCPDP;NCI_NICHD;NCI_PID;NCI_RENI;NCI_UCUM;NCI_ZFin'),(NULL,'NDDF'),(NULL,'NDFRT'),(NULL,'NEU'),(NULL,'NIC'),(NULL,'NOC'),(NULL,'OMIM'),(NULL,'OMS'),(NULL,'PDQ'),(NULL,'PNDS'),(NULL,'PSY'),(NULL,'RXNORM'),('2.16.840.1.113883.6.96','SNOMEDCT_US;SCTSPA'),(NULL,'SNOMEDCT_VET'),(NULL,'SOP'),(NULL,'SPN'),(NULL,'SRC'),(NULL,'TKMT'),(NULL,'UMD'),(NULL,'USPMG'),(NULL,'UWDA'),(NULL,'VANDF');
/*!40000 ALTER TABLE `hl7vocid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-29 13:44:04
