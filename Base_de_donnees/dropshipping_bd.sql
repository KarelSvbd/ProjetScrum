-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 07 Mai 2020 à 11:36
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
-- Structure de la table `adresse`
--

CREATE TABLE IF NOT EXISTS `adresse` (
  `idAdresse` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pays` text NOT NULL,
  `ville` text NOT NULL,
  `codePostal` varchar(20) NOT NULL,
  `rue` text NOT NULL,
  `complément` text,
  PRIMARY KEY (`idAdresse`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `adresse`
--

INSERT INTO `adresse` (`idAdresse`, `pays`, `ville`, `codePostal`, `rue`, `complément`) VALUES
(1, 'USA', 'Ohio', '22399', 'Les marbriers', 'Bâtiment 5, porte de droite');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `idArticle` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomArticle` varchar(50) NOT NULL,
  `typeArticle` text NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` int(10) unsigned NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`idArticle`, `nomArticle`, `typeArticle`, `quantite`, `prix`, `disponibilite`, `couleur`, `description`) VALUES
(1, 'Nike Noire', 'Basket', 5, 210, 1, 'Noir', 'Elles sont belles nos chaussures noires super chères'),
(2, 'Casquette blanche', 'Casquette', 0, 500, 0, 'Blanc', 'Elle est chère mais belle!');

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
  `idSexe` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idArticle`),
  KEY `idArticle` (`idArticle`),
  KEY `idArticle_2` (`idArticle`),
  KEY `idSexe` (`idSexe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `baskets`
--

INSERT INTO `baskets` (`idArticle`, `pointure`, `idSexe`) VALUES
(1, 40, 0);

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

--
-- Contenu de la table `casquette`
--

INSERT INTO `casquette` (`idArticle`, `taille`) VALUES
(2, 'L');

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
  `idMethodePaiement` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idClient`),
  UNIQUE KEY `nomUtilisateur` (`nomUtilisateur`),
  KEY `idMethodePaiement` (`idMethodePaiement`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idClient`, `nomUtilisateur`, `prenomClient`, `nomClient`, `numTelephone`, `adresseEmail`, `idMethodePaiement`) VALUES
(1, 'Ninja', 'Richard', 'Blevins', '11122233344', 'ninja.ft@gmail.com', 2);

-- --------------------------------------------------------

--
-- Structure de la table `habite`
--

CREATE TABLE IF NOT EXISTS `habite` (
  `idClient` int(11) unsigned NOT NULL,
  `idAdresse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`idClient`,`idAdresse`),
  KEY `idClient` (`idClient`,`idAdresse`),
  KEY `idAdresse` (`idAdresse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `habite`
--

INSERT INTO `habite` (`idClient`, `idAdresse`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `methode_paiement`
--

CREATE TABLE IF NOT EXISTS `methode_paiement` (
  `idMethodePaiement` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomMethodePaiement` varchar(50) NOT NULL,
  PRIMARY KEY (`idMethodePaiement`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `methode_paiement`
--

INSERT INTO `methode_paiement` (`idMethodePaiement`, `nomMethodePaiement`) VALUES
(1, 'visa'),
(2, 'mastercard');

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

--
-- Contenu de la table `panier`
--

INSERT INTO `panier` (`idArticle`, `idClient`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

CREATE TABLE IF NOT EXISTS `sexe` (
  `idSexe` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `Sexe` varchar(20) NOT NULL,
  PRIMARY KEY (`idSexe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `sexe`
--

INSERT INTO `sexe` (`idSexe`, `Sexe`) VALUES
(0, 'Unisex'),
(1, 'Homme'),
(2, 'Femme');

-- --------------------------------------------------------

--
-- Structure de la table `survetement`
--

CREATE TABLE IF NOT EXISTS `survetement` (
  `idArticle` int(10) unsigned NOT NULL,
  `taille` varchar(5) NOT NULL,
  `idSexe` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idArticle`),
  KEY `idArticle` (`idArticle`),
  KEY `idSexe` (`idSexe`),
  KEY `idSexe_2` (`idSexe`)
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
  ADD CONSTRAINT `baskets_ibfk_2` FOREIGN KEY (`idSexe`) REFERENCES `sexe` (`idSexe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `baskets_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `casquette`
--
ALTER TABLE `casquette`
  ADD CONSTRAINT `casquette_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`idMethodePaiement`) REFERENCES `methode_paiement` (`idMethodePaiement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `habite`
--
ALTER TABLE `habite`
  ADD CONSTRAINT `habite_ibfk_2` FOREIGN KEY (`idAdresse`) REFERENCES `adresse` (`idAdresse`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `habite_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `panier_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `survetement`
--
ALTER TABLE `survetement`
  ADD CONSTRAINT `survetement_ibfk_2` FOREIGN KEY (`idSexe`) REFERENCES `sexe` (`idSexe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `survetement_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`idArticle`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
