-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 07 déc. 2021 à 15:39
-- Version du serveur :  10.3.29-MariaDB-0+deb10u1
-- Version de PHP : 7.3.29-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `remi.cornut`
--

-- --------------------------------------------------------

--
-- Structure de la table `IMC`
--

CREATE TABLE `IMC` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(11) NOT NULL,
  `Prenom` varchar(11) NOT NULL,
  `Taille` float NOT NULL,
  `Poids` float NOT NULL,
  `Genre` tinyint(1) DEFAULT NULL,
  `IMC` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `IMC`
--

INSERT INTO `IMC` (`ID`, `Nom`, `Prenom`, `Taille`, `Poids`, `Genre`, `IMC`) VALUES
(2, ' Nom30', 'prenom30', 130, 50, 1, NULL),
(4, 'Nom40', 'prenom40', 140, 60, 0, NULL),
(5, 'Nom50', 'prenom50', 150, 70, 0, 20),
(6, 'Nom60', 'Prenom60', 160, 80, 1, 20),
(7, 'Nom65', 'prenom65', 165, 80, 0, 20),
(8, 'Nom68', 'prenom68', 168, 80, 1, 20),
(9, 'Nom70', 'prenom70', 170, 90, 1, 20),
(11, 'Nom90', 'prenom90', 190, 110, 0, 20);

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `ID` int(11) NOT NULL,
  `Login` varchar(11) NOT NULL,
  `Password` varchar(11) NOT NULL,
  `SuperUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`ID`, `Login`, `Password`, `SuperUser`) VALUES
(1, 'root', '', 0),
(2, 'root', 'password', 0),
(3, 'user1', 'password1', 0),
(4, 'user2', 'password2', 0),
(5, 'root', 'password', NULL),
(6, 'User10', 'password10', 0),
(8, 'User20', 'password20', 0),
(10, 'User30', 'password30', 1),
(11, 'User40', 'password40', 1),
(13, 'User50', 'password50', 0),
(15, 'User60', 'password60', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `IMC`
--
ALTER TABLE `IMC`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `IMC`
--
ALTER TABLE `IMC`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
