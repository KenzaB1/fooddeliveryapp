-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 jan. 2022 à 20:08
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ws_resto`
--

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `PhoneNb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`ID`, `Name`, `Address`, `PhoneNb`) VALUES
(1, 'Cristine', 'Paris', '+33675432678'),
(2, 'Maria', 'Chatelet', '+33675452671'),
(5, 'Nicolas', 'Nice', '+33675432672');

-- --------------------------------------------------------

--
-- Structure de la table `deliverer`
--

DROP TABLE IF EXISTS `deliverer`;
CREATE TABLE IF NOT EXISTS `deliverer` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `PhoneNb` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `deliverer`
--

INSERT INTO `deliverer` (`ID`, `Name`, `PhoneNb`) VALUES
(1, 'Paul', '+33675432670'),
(2, 'Eric', '+33675432671'),
(4, 'Jean', '+33675432672');

-- --------------------------------------------------------

--
-- Structure de la table `meal`
--

DROP TABLE IF EXISTS `meal`;
CREATE TABLE IF NOT EXISTS `meal` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Price` int(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `meal`
--

INSERT INTO `meal` (`ID`, `Name`, `Price`) VALUES
(1, 'Crèpes', 9),
(2, 'Pizza', 10);

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `RestoID` varchar(50) NOT NULL,
  `MealID` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`ID`, `RestoID`, `MealID`) VALUES
(1, '1', '1'),
(2, '1', '2'),
(3, '2', '2'),
(5, '1', '3');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(50) NOT NULL,
  `DelivererID` varchar(50) NOT NULL,
  `TOTALPRICE` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`ID`, `CustomerID`, `DelivererID`, `TOTALPRICE`) VALUES
(1, '1', '1', 10),
(2, '1', '1', 15);

-- --------------------------------------------------------

--
-- Structure de la table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) NOT NULL,
  `MealID` int(11) NOT NULL,
  `Quantity` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`ID`, `Name`, `Address`, `Type`, `Description`) VALUES
(1, 'BEAUNIER', '43 RUE BEAUNIE PARIS', 'E', NULL),
(47, 'TOLBIAC', '166  RUE DE TOLBIAC', 'E', 'Italian Food'),
(45, 'test', 'test', 'test', 'test'),
(43, 'SAINT-SAUVEUR', '8 RUE SAINT-SAUEUR', 'A', NULL),
(42, 'MOUFFETARD', '20 RUE ORTOLAN	PARIS', 'A', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
