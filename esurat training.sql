-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for esurat
CREATE DATABASE IF NOT EXISTS `esurat` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `esurat`;


-- Dumping structure for table esurat.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bookname` varchar(155) DEFAULT NULL,
  `publisher` varchar(155) DEFAULT NULL,
  `edition` varchar(155) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `isbn` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table esurat.books: ~6 rows (approximately)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `bookname`, `publisher`, `edition`, `author`, `price`, `isbn`) VALUES
	(1, 'Si Kancil Dan Buaya', 'Karangkraft', '5', 'Hang Tuah', 5, NULL),
	(2, 'Cinta Sang Ratu', 'Karangkraft', '1', 'Ramlee Awang Murshid', 32, NULL),
	(3, 'Fatimah Puteri Rasulullah', 'Prima', '1', 'Salina Ibrahim', 15, NULL),
	(4, 'Fun With Programming', 'Venton Publishing', '1', 'Iskandar AB Rashid', 18.5, NULL),
	(5, 'Api Tauhid', 'Parcel Buku', '1', 'Habiburrahman', 25, NULL),
	(7, 'Perjalanan Menuju Syurga', 'Baba\'s Publishing', 'First Edition', 'Sunz Sulaiman', 500, '12345');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;


-- Dumping structure for table esurat.company
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) DEFAULT NULL,
  `reg_num` varchar(50) DEFAULT NULL,
  `business_type` varchar(50) DEFAULT NULL,
  `business_owner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table esurat.company: ~2 rows (approximately)
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id`, `company_name`, `reg_num`, `business_type`, `business_owner`) VALUES
	(1, 'Kopiah Baba Holdings', 'JJV7300', 'Handmade Kopiah and Outfit for Children', 'Daud Bin Saleh'),
	(2, 'Shukran Shop Enterprise', 'WQR3482', 'Jubah And Kurta For Kids', 'Sunz Sulaiman');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


-- Dumping structure for table esurat.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) DEFAULT '0',
  `description` varchar(100) DEFAULT '0',
  `email` varchar(100) DEFAULT '0',
  `name` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table esurat.feedback: ~2 rows (approximately)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`id`, `subject`, `description`, `email`, `name`) VALUES
	(1, 'fsff', 'fsf', 'fsf', 'ff'),
	(2, 'fsff', 'fsf', 'fsf', 'ff');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


-- Dumping structure for table esurat.genre
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(155) DEFAULT NULL,
  `created_by` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table esurat.genre: ~5 rows (approximately)
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` (`id`, `genre_name`, `created_by`) VALUES
	(1, 'Nasyid Kontemporari', 'Hijjaz'),
	(2, 'Hip Hop', 'A to Z'),
	(3, 'Irama Malaysia', 'Noraniza Idris'),
	(4, 'Balada', 'M Nasir'),
	(5, 'Rock', 'Search');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
