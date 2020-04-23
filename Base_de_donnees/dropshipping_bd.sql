-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 23 Avril 2020 à 10:58
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `dropshipping_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `idArticle` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomArticle` varchar(50) NOT NULL,
  `typeArticle` int(20) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` int(10) unsigned NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `banane`
--

CREATE TABLE IF NOT EXISTS `banane` (
  `idArticle` int(10) unsigned NOT NULL,
  `dimension` varchar(20) NOT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `baskets`
--

CREATE TABLE IF NOT EXISTS `baskets` (
  `idArticle` int(11) unsigned NOT NULL,
  `pointure` int(11) NOT NULL,
  PRIMARY KEY (`idArticle`),
  KEY `idArticle` (`idArticle`),
  KEY `idArticle_2` (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `casquette`
--

CREATE TABLE IF NOT EXISTS `casquette` (
  `idArticle` int(10) unsigned NOT NULL,
  `taille` varchar(5) NOT NULL,
  PRIMARY KEY (`idArticle`),
  KEY `idArticle` (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomUtilisateur` varchar(50) NOT NULL,
  `prenomClient` varchar(50) NOT NULL,
  `nomClient` varchar(50) NOT NULL,
  `numTelephone` varchar(30) DEFAULT NULL,
  `adresseEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idClient`),
  UNIQUE KEY `nomUtilisateur` (`nomUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE IF NOT EXISTS `panier` (
  `idArticle` int(10) unsigned NOT NULL,
  `idClient` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idArticle`,`idClient`),
  KEY `idArticle` (`idArticle`),
  KEY `idClient` (`idClient`),
  KEY `idArticle_2` (`idArticle`,`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `survetement`
--

CREATE TABLE IF NOT EXISTS `survetement` (
  `idArticle` int(10) unsigned NOT NULL,
  `taille` varchar(5) NOT NULL,
  PRIMARY KEY (`idArticle`),
  KEY `idArticle` (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `banane`
--
ALTER TABLE `banane`
  ADD CONSTRAINT `banane_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `baskets`
--
ALTER TABLE `baskets`
  ADD CONSTRAINT `baskets_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `casquette`
--
ALTER TABLE `casquette`
  ADD CONSTRAINT `casquette_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `survetement`
--
ALTER TABLE `survetement`
  ADD CONSTRAINT `survetement_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
