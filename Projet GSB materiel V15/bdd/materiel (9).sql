-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 mars 2022 à 15:01
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `materiel`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunter`
--

CREATE TABLE `emprunter` (
  `dateEmprunter` date NOT NULL,
  `dateRestituer` date DEFAULT NULL,
  `idMateriel` int(11) NOT NULL,
  `vis_matricule` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emprunter`
--

INSERT INTO `emprunter` (`dateEmprunter`, `dateRestituer`, `idMateriel`, `vis_matricule`) VALUES
('2021-12-01', '2021-12-10', 1, 'a55'),
('2022-03-27', '2022-03-27', 5, 'c53'),
('2022-03-27', NULL, 7, 'b4'),
('2022-03-27', NULL, 9, 'b25'),
('2022-03-27', NULL, 9, 'b25');

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `Id` int(10) NOT NULL,
  `Marque` varchar(20) NOT NULL,
  `Modele` varchar(20) NOT NULL,
  `Dimension` float NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`Id`, `Marque`, `Modele`, `Dimension`, `Type`) VALUES
(1, 'aa', 'rr', 12, 'tablette'),
(2, 'Apple', 'Mac Book Pro', 14, 'Ordinateur'),
(3, 'Apple', 'Mac Book Pro', 16, 'Ordinateur'),
(4, 'Apple', 'Mac Book Air', 13.3, 'Ordinateur'),
(5, 'Apple', 'Ipad Mini', 8.3, 'Tablette'),
(6, 'Apple', 'Ipad', 10.2, 'Tablette'),
(7, 'Apple', 'Ipad Air', 10.9, 'Tablette'),
(8, 'Apple', 'Ipad Pro', 12.9, 'Tablette'),
(13, 'Apple', 'AA', 10, 'Tablette'),
(14, 'AA', 'Mac Book Pro', 10, 'Tablette'),
(15, 'AA', 'Mac Book Pro', 10, 'Tablette'),
(16, 'AA', 'Mac Book Pro', 10, 'Tablette'),
(17, 'AA', 'Mac Book proooofff', 10, 'Tablette'),
(18, 'AA', 'Mac Book proooofff', 10, 'Tablette'),
(19, 'AA', 'Mac Book proooofff', 10, 'Tablette');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `VIS_MATRICULE` char(10) NOT NULL,
  `VIS_NOM` char(25) DEFAULT NULL,
  `VIS_PRENOM` char(50) DEFAULT NULL,
  `VIS_ADRESSE` char(50) DEFAULT NULL,
  `VIS_CP` char(5) DEFAULT NULL,
  `VIS_VILLE` char(30) DEFAULT NULL,
  `VIS_MAIL` varchar(255) DEFAULT NULL,
  `Id` int(255) NOT NULL,
  `VIS_MDP` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`VIS_MATRICULE`, `VIS_NOM`, `VIS_PRENOM`, `VIS_ADRESSE`, `VIS_CP`, `VIS_VILLE`, `VIS_MAIL`, `Id`, `VIS_MDP`, `role`) VALUES
('visiteur', 'visiteur', 'visiteur', '4 rue du louvre', '75010', 'Paris', 'visiteur', 98, 'visiteur', 'Visiteur'),
('admin', 'admin', 'admin', '8 avenue du général', '75015', 'Paris', 'admin', 99, 'admin', 'Admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
