-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for testdb
CREATE DATABASE IF NOT EXISTS `testdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testdb`;

-- Dumping structure for table testdb.hobi
CREATE TABLE IF NOT EXISTS `hobi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int unsigned DEFAULT NULL,
  `hobi` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table testdb.hobi: ~12 rows (approximately)
INSERT INTO `hobi` (`id`, `person_id`, `hobi`) VALUES
	(1, 1, 'Futsal'),
	(2, 1, 'Soccer'),
	(3, 1, 'Tenis Meja'),
	(4, 2, 'Basket'),
	(5, 2, 'Renang'),
	(6, 3, 'Futsal'),
	(7, 3, 'Membaca'),
	(8, 3, 'Renang'),
	(9, 3, 'Game'),
	(10, 4, 'Renang'),
	(11, 5, 'Jalan-Jalan'),
	(13, 72, 'Soccer');

-- Dumping structure for table testdb.person
CREATE TABLE IF NOT EXISTS `person` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- Dumping data for table testdb.person: ~88 rows (approximately)
INSERT INTO `person` (`id`, `nama`, `alamat`) VALUES
	(1, 'coba', 'cobafdsfd'),
	(2, 'ana 5', 'arab'),
	(3, 'Tari', 'Dakota'),
	(4, 'Cak Gembul x', 'Surabaya gg gg hhhhhh'),
	(5, 'Mc Greg x', 'Ujung Berung y'),
	(6, 'SENTOT xx', 'Bandung yhhh'),
	(7, 'Ni Made vv ff', 'Ujung Berung'),
	(8, 'Nama1 xx g', 'Alamat1 yy fg'),
	(9, 'Nama12', 'Alamat14'),
	(10, 'ANNAA', 'Jakarta'),
	(11, 'ANNA', 'Jakartaaa'),
	(12, 'xx', 'zzz'),
	(13, 'dika1', 'Bandung'),
	(14, 'nama', 'Bandung 123'),
	(15, '', 'Bandung'),
	(16, 'ANNA 1', 'Jakarta 1'),
	(17, 'ANNA 3', 'Jakarta 3'),
	(18, 'SENTOT 1234', 'Bandung 123'),
	(19, 'ANNAA', 'Jakarta'),
	(20, 'Mc Greg 123', 'USA 123'),
	(21, 'SENTOT', 'Bandung'),
	(22, 'Ni Made 1', 'Bali 1'),
	(23, 'Ni Made', 'Bali'),
	(24, 'Cak Gembul', 'Surabaya'),
	(25, 'Cak Gembul', 'Surabaya'),
	(26, 'SENTOT', 'Bandung'),
	(27, 'Cak Gembul', 'Surabaya 5'),
	(28, 'ANNAA', 'Jakarta xx'),
	(29, 'mk', 'mk'),
	(30, 'judi', 'bandung'),
	(31, 'judi x', 'bandung'),
	(32, 'maman', 'cimahi'),
	(33, 'ana 5g', 'arab xx vg'),
	(34, 'Cak Gembul x', 'Surabaya b'),
	(35, 'Muhammad Kemal Ilyasa Margana ', '1'),
	(36, 'azx', 'xx'),
	(37, 'test 2', 'terdddddddasdasd'),
	(38, '', ''),
	(39, 'Tari', 'Dakota'),
	(40, 'Mc Greg', 'USA'),
	(41, 'Ni Made vv', 'Bali'),
	(42, 'Ni Made vv', 'Bali'),
	(43, 'Ni Made vv', 'Bali'),
	(44, 'Ni Made vv', 'Bali'),
	(45, 'Ni Made vv', 'Bali'),
	(46, 'Mc Greg', 'USA'),
	(47, 'Cak Gembul', 'Surabaya'),
	(48, 'ana 5', 'arab xx v'),
	(49, 'Tari', 'Dakota'),
	(50, 'ana 5', 'arab xx v'),
	(51, 'ana 5', 'arab xx v'),
	(52, 'ana 5', 'arab xx v'),
	(53, 'nama yx', 'alamat yx'),
	(54, 'Cak Gembul', 'Surabaya'),
	(55, 'nama yx', 'alamat yx'),
	(56, 'ana 5', 'arab xx v'),
	(57, '', ''),
	(58, '', ''),
	(59, 'ana 5', 'arab xx v'),
	(60, 'ana 5', 'arab xx v'),
	(61, 'ana 5', 'arab xx v'),
	(62, 'Nama1 xx g', 'Alamat1 yy fg'),
	(63, 'ana 5', 'arab xx v'),
	(64, 'ana 5', 'arab xx v'),
	(65, 'Mc Greg', 'USA'),
	(66, 'nama yx', 'alamat yx'),
	(67, 'Mc Greg', 'USA'),
	(68, 'ANNAA', 'Jakarta'),
	(69, 'ana 5', 'arab xx v'),
	(70, 'YAMAN NUR M', 'BALI'),
	(71, 'Fulan', 'Fulan'),
	(72, '', ''),
	(73, '', ''),
	(74, 'Yaman', 'Mnur'),
	(75, '', ''),
	(76, '', ''),
	(77, 'ERWIN', 'BANDUNG'),
	(78, 'ERWIN', 'BANDUNG'),
	(79, 'SOLEH', 'JAWA'),
	(80, 'Siapakah', 'Dimanakah'),
	(81, 'Cak Gembul x ydg', 'Surabaya gg'),
	(82, 'Test Nama', 'Test Alamat'),
	(83, 'New Nama', 'New Alamat'),
	(84, 'Levi', 'Paradise'),
	(85, 'Eren', 'Paradise'),
	(86, 'Mikasa', 'Paradis'),
	(87, 'Cak Gembul x yd f', 'Surabaya gg gg'),
	(88, 'Mahdy', 'Cimahi');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
