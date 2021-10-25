-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 14 oct. 2021 à 10:51
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_beauty`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` int(30) NOT NULL,
  `mot_passe` text NOT NULL,
  `type_compte` enum('USER') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom_prenom`, `email`, `numero`, `mot_passe`, `type_compte`) VALUES
(1, 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 96857412, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'USER'),
(2, 'DAVID Olayemi ', 'gnahouilinesie@gmail.com', 68987823, 'f6fafdf4aa5091d6bd8dfbc20618bb10c129e757ef57ba06a138dc5f9da08d41daf9e7b48c32f6deb02092c6aa46ddcf1203a9dbab0a8d224bbf3f2f45b93081', 'USER'),
(3, 'olayemi', 'gnahouilinesie@gmail.com', 97879878, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'USER');

-- --------------------------------------------------------

--
-- Structure de la table `coiffeur`
--

DROP TABLE IF EXISTS `coiffeur`;
CREATE TABLE IF NOT EXISTS `coiffeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(255) NOT NULL,
  `profession` text NOT NULL,
  `pays` enum('Bénin','Togo','Niger','Côte d''ivoire') NOT NULL,
  `email` varchar(255) NOT NULL,
  `numero` int(30) NOT NULL,
  `mot_passe` text NOT NULL,
  `type_compte` enum('ADMIN','COIFFEUR','USER','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `coiffeur`
--

INSERT INTO `coiffeur` (`id`, `nom_prenom`, `profession`, `pays`, `email`, `numero`, `mot_passe`, `type_compte`) VALUES
(1, 'DAVID-GNAHOUI Olayemi Christia', '', 'Bénin', 'ola@gmail.com', 0, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'USER'),
(2, 'DAVID-GNAHOUI Olayemi Christia', '', 'Bénin', 'ola@gmail.com', 0, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'USER'),
(3, 'DAVID-GNAHOUI Olayemi Christia', 'coiffeur', 'Niger', 'ola@gmail.com', 699656652, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'USER'),
(4, 'DAVID-GNAHOUI Olayemi Christia', 'coiffeur', 'Niger', 'ola@gmail.com', 699656652, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'COIFFEUR'),
(5, 'DAVID-GNAHOUI Olayemi Christia', 'coiffeur', 'Togo', 'ola@gmail.com', 96874512, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'COIFFEUR'),
(6, 'popo ppoo', 'coiffeur', 'Bénin', 'ola@gmail.com', 98787814, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'COIFFEUR'),
(7, 'olayemi DAVID-GNAHOUI', 'couturiere', 'Bénin', 'ola@gmail.com', 68974522, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'COIFFEUR'),
(8, 'olayemi DAVID-GNAHOUI', 'couturiere', 'Bénin', 'linesie@gmail.com', 69852321, '0086adf351c9a989c226311bac8236a2be725782af4cf71538f6736d09e9656c72f44fdf96b9437770316421a508d96c013570c69d1ef5b801b540e2ae27e9b2', 'COIFFEUR'),
(9, 'DAVID-GNAHOUI Olayemi Christia', 'coiffeur', 'Bénin', 'ola@gmail.com', 96785898, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'COIFFEUR'),
(10, 'DAVID-GNAHOUI Olayemi Christia', 'coiffeur', 'Togo', 'ola@gmail.com', 98789855, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'COIFFEUR'),
(11, 'olayemi', 'couture', 'Bénin', 'gnahouilinesie@gmail.com', 75666363, '1f7a870fd75036f26b5125471348e5e5ac142845003a0462d3fcef228f3cf91c84ffd07234a088fa2dfb3c66877b56674b46a3cf4e48d3eaf2a0a60122e4a271', 'COIFFEUR');

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

DROP TABLE IF EXISTS `connexion`;
CREATE TABLE IF NOT EXISTS `connexion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `mot_passe` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_coiffure` varchar(255) NOT NULL,
  `nom_prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `numero` int(12) NOT NULL,
  `heure` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ville` text NOT NULL,
  `prester` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `nom_coiffure`, `nom_prenom`, `email`, `numero`, `heure`, `ville`, `prester`) VALUES
(1, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 69852054, '2021-09-26 21:58:00', 'cotonou', 1),
(2, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 69852054, '2021-09-26 21:58:00', 'cotonou', 1),
(3, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 512031564, '2021-09-26 23:37:00', 'cotonou', 1),
(4, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 512031564, '2021-09-26 23:37:00', 'cotonou', 1),
(5, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 65896587, '2021-09-30 14:08:00', 'cotonou', 1),
(6, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 65896587, '2021-09-30 14:08:00', 'cotonou', 1),
(12, 'chic hair', 'olayemi', 'linesie@gmail.com', 89874569, '2021-10-12 11:24:00', 'parakou', 1),
(8, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 65896587, '2021-09-30 14:08:00', 'cotonou', 1),
(9, '', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 65896587, '2021-09-30 14:08:00', 'cotonou', 1),
(10, 'sweet hair', 'DAVID-GNAHOUI Olayemi Christia', 'ola@gmail.com', 65896587, '2021-09-30 14:08:00', 'cotonou', 1),
(11, 'Christia', 'DAVID-GNAHOUI', 'ola@gmail.com', 96785841, '2021-10-12 11:07:00', 'cotonou', 1),
(13, 'Sweet hair', 'DAVID-GNAHOUI', 'ola@gmail.com', 98789823, '2021-10-12 11:26:00', 'natitingou', 1),
(14, 'beauty woman', 'd', 'ola@gmail.com', 56897845, '2021-10-12 11:31:00', 'akpakpa', 1),
(15, 'sweet hair', 'olayemi', 'gnahouilinesie@gmail.com', 12587922, '2021-10-12 11:35:00', 'parakou', 0),
(16, 'sweet hair', 'DAVID-GNAHOUI', 'ola@gmail.com', 55879878, '2021-10-12 12:31:00', 'cotonou', 0),
(17, 'edfry', 'DAVID-GNAHOUI', 'ola@gmail.com', 8795453, '2021-10-13 23:33:00', 'cotonou', 0),
(18, 'beauty hair', 'olayemi', 'gnahouilinesie@gmail.com', 25659878, '2021-11-07 01:26:00', 'COTONOU', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
