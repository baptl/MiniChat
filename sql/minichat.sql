-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 05 sep. 2019 à 20:29
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `minichat`
--

CREATE TABLE `minichat` (
  `ID` int(11) NOT NULL,
  `publication` datetime NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `minichat`
--

INSERT INTO `minichat` (`ID`, `publication`, `pseudo`, `message`) VALUES
(1, '2019-09-05 20:26:13', 'baptl', 'Bonjour et bienvenue sur mon tout premier chat 100% \"fait main\" !'),
(2, '2019-09-05 20:26:42', 'baptl', 'Si vous lisez ces lignes, c\'est qu\'a priori la lecture de la base de données jointe a bien fonctionné. N\'hésitez pas à tester aussi l\'écriture, mais gardez à l\'esprit que vous êtes en local et que (par conséquent) je ne pourrai pas vous lire ^^'),
(3, '2019-09-05 20:27:22', 'baptl', 'En revanche, vos commentaires sont évidemment les bienvenus. Pour me contacter, retrouvez-moi sur GitHub à l\'adresse https://github.com/baptl :)'),
(4, '2019-09-05 20:27:46', 'baptl', 'Un grand merci pour visite et @ bientôt !');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `minichat`
--
ALTER TABLE `minichat`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `minichat`
--
ALTER TABLE `minichat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
