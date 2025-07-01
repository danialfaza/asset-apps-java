-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: db_asset
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

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
-- Table structure for table `data_asset`
--

DROP TABLE IF EXISTS `data_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_asset` (
  `kode_asset` varchar(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis` varchar(100) DEFAULT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_asset`
--

LOCK TABLES `data_asset` WRITE;
/*!40000 ALTER TABLE `data_asset` DISABLE KEYS */;
INSERT INTO `data_asset` VALUES ('TB','Laptop Asus Core i5','Pribadi','Asus','Laptop');
/*!40000 ALTER TABLE `data_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departemen`
--

DROP TABLE IF EXISTS `departemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departemen` (
  `kode_dep` varchar(100) NOT NULL,
  `nama_dep` varchar(100) NOT NULL,
  `nama_pic` varchar(100) DEFAULT NULL,
  `no_pic` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departemen`
--

LOCK TABLES `departemen` WRITE;
/*!40000 ALTER TABLE `departemen` DISABLE KEYS */;
INSERT INTO `departemen` VALUES ('DTI','Departemen IT','Dani Alfaza','08223399441','DKI Jakarta','Kota Jakarta Timur');
/*!40000 ALTER TABLE `departemen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_asset`
--

DROP TABLE IF EXISTS `kategori_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(100) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_asset`
--

LOCK TABLES `kategori_asset` WRITE;
/*!40000 ALTER TABLE `kategori_asset` DISABLE KEYS */;
INSERT INTO `kategori_asset` VALUES (2,'ATKS','Alat Tulis','Barang Alat Tulis'),(5,'LP','Laptop','Laptop/Notebook');
/*!40000 ALTER TABLE `kategori_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kerusakan_asset`
--

DROP TABLE IF EXISTS `kerusakan_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kerusakan_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelapor` varchar(100) NOT NULL,
  `kode_asset` varchar(100) NOT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kerusakan_asset`
--

LOCK TABLES `kerusakan_asset` WRITE;
/*!40000 ALTER TABLE `kerusakan_asset` DISABLE KEYS */;
INSERT INTO `kerusakan_asset` VALUES (2,'Yuda','TB','Departemen IT','oke');
/*!40000 ALTER TABLE `kerusakan_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_peminjam` varchar(100) DEFAULT NULL,
  `kode_asset` varchar(100) DEFAULT NULL,
  `tgl_pinjam` varchar(100) DEFAULT NULL,
  `tgl_pengembalian` varchar(100) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peminjaman`
--

LOCK TABLES `peminjaman` WRITE;
/*!40000 ALTER TABLE `peminjaman` DISABLE KEYS */;
INSERT INTO `peminjaman` VALUES (4,'Dani','TBS','2025-06-04','2025-06-28','Pinjam Keperluan Kerja'),(5,'Dani','TB','2025-06-03','2025-06-30','Keperluan Pribadi ok');
/*!40000 ALTER TABLE `peminjaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perbaikan_asset`
--

DROP TABLE IF EXISTS `perbaikan_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perbaikan_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_asset` varchar(100) NOT NULL,
  `id_asset` varchar(100) NOT NULL,
  `tgl_perbaikan` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `nama_pelapor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perbaikan_asset`
--

LOCK TABLES `perbaikan_asset` WRITE;
/*!40000 ALTER TABLE `perbaikan_asset` DISABLE KEYS */;
INSERT INTO `perbaikan_asset` VALUES (3,'Laptop Intel I3','TB','2025-06-23','rusak dikit','done','budi'),(4,'Laptop','TB','2025-02-07','Rusak berat','Done','budi');
/*!40000 ALTER TABLE `perbaikan_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('dani','dani123'),('roy','roy123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_asset'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-01 14:09:00
