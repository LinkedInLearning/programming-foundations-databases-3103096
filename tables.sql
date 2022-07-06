-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.8.3-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank Struktur für restaurant
CREATE DATABASE IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `restaurant`;

-- Exportiere Struktur von Tabelle restaurant.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `CustomerID` int(6) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(200) NOT NULL DEFAULT '',
  `LastName` varchar(200) NOT NULL DEFAULT '',
  `Email` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Phone` varchar(20) NOT NULL DEFAULT '',
  `Birthday` date DEFAULT NULL,
  `FavoriteDish` int(6) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.customersdishes
CREATE TABLE IF NOT EXISTS `customersdishes` (
  `CustomersDishesID` int(6) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(6) DEFAULT NULL,
  `DishID` int(6) DEFAULT NULL,
  PRIMARY KEY (`CustomersDishesID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.customersevents
CREATE TABLE IF NOT EXISTS `customersevents` (
  `CustomersEventsID` int(6) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(6) DEFAULT NULL,
  `EventID` int(6) DEFAULT NULL,
  PRIMARY KEY (`CustomersEventsID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.dishes
CREATE TABLE IF NOT EXISTS `dishes` (
  `DishID` int(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Price` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`DishID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.events
CREATE TABLE IF NOT EXISTS `events` (
  `EventID` int(6) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Location` varchar(200) DEFAULT '',
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.eventslocations
CREATE TABLE IF NOT EXISTS `eventslocations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `EventName` varchar(200) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(6) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(6) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.ordersdishes
CREATE TABLE IF NOT EXISTS `ordersdishes` (
  `OrdersDishesID` int(6) NOT NULL AUTO_INCREMENT,
  `OrderID` int(6) DEFAULT NULL,
  `DishID` int(6) DEFAULT NULL,
  PRIMARY KEY (`OrdersDishesID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

-- Exportiere Struktur von Tabelle restaurant.reservations
CREATE TABLE IF NOT EXISTS `reservations` (
  `ReservationID` int(6) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(6) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `PartySize` int(3) DEFAULT NULL,
  PRIMARY KEY (`ReservationID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Daten Export vom Benutzer nicht ausgewählt

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
