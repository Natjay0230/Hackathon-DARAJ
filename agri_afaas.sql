-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 30 sep. 2021 à 13:12
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agri_afaas`
--

-- --------------------------------------------------------

--
-- Structure de la table `agriculture`
--

DROP TABLE IF EXISTS `agriculture`;
CREATE TABLE IF NOT EXISTS `agriculture` (
  `id_agri` int NOT NULL AUTO_INCREMENT,
  `nom_agri` varchar(255) NOT NULL,
  `descri_agri` varchar(255) NOT NULL,
  `img_agri` varchar(255) NOT NULL,
  PRIMARY KEY (`id_agri`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `agriculture`
--

INSERT INTO `agriculture` (`id_agri`, `nom_agri`, `descri_agri`, `img_agri`) VALUES
(1, 'Vanille', '', 'vanille.jpg\r\n'),
(2, 'riz', '', 'riz.jpg\r\n'),
(3, 'café', '', 'cafe.jpg'),
(4, 'girofle', '', 'girofle.jpg'),
(5, 'rente', '', 'rente.jpg'),
(6, 'légumes', '', 'legume.jpg'),
(7, 'tubercules', '', 'tubercule.jpg'),
(8, 'maïs', '', 'mais.jpg'),
(9, 'vivrière', '', 'vivriere.jpg'),
(11, 'riziculture irrigué', '', 'riziculture.jpg'),
(12, 'manioc', '', 'manioc.jpg'),
(14, 'arachide', '', 'arachide.jpg'),
(16, 'black eyes', '', 'black.jpg'),
(19, 'blé', '', 'ble.jpg'),
(21, 'riz pluvial', '', 'riz_pluviale.jpg'),
(24, 'pomme de terre', '', 'pomme_de_terre.jpg'),
(25, 'patate douce', '', 'patate.jpg'),
(26, 'haricot ', '', 'haricot.jpg'),
(28, 'ananas', '', 'ananas.jpg'),
(29, 'tomate', '', 'tomate.jpg'),
(30, 'canne à sucre ', '', 'sucre.jpg'),
(32, 'paddy', '', 'paddy.jpg'),
(33, 'pois du cap', '', 'poids.jpg'),
(35, 'arachide', '', 'arachide.jpg'),
(38, 'lentille', '', 'lentille.jpg'),
(39, 'tsiasisa', '', ''),
(41, 'culture irriguée', '', ''),
(42, 'culture de décrue ', '', ''),
(43, 'culture pluviale ', '', ''),
(53, 'sésame ', '', ''),
(56, 'céréale', '', ''),
(59, 'mil', '', ''),
(60, 'sorgho', '', ''),
(62, 'tubercule', '', ''),
(63, 'culture maraîchère ', '', ''),
(64, 'culture industrielle ', '', ''),
(65, 'culture vivrière ', '', ''),
(67, 'culture fruitière', '', ''),
(82, 'viticulture ', '', ''),
(83, 'vivrière sur tanety', '', ''),
(91, 'saonjo', '', ''),
(93, 'soja', '', ''),
(94, 'orge', '', ''),
(98, 'racine', '', ''),
(99, 'baie rose', '', ''),
(100, 'poivre', '', ''),
(102, 'pisciculture ', '', ''),
(106, 'feuille sèche d\'Artemisia ', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `agriculture_glo`
--

DROP TABLE IF EXISTS `agriculture_glo`;
CREATE TABLE IF NOT EXISTS `agriculture_glo` (
  `id_agri_glo` int NOT NULL AUTO_INCREMENT,
  `nom_agri_glo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_agri_glo`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `agriculture_glo`
--

INSERT INTO `agriculture_glo` (`id_agri_glo`, `nom_agri_glo`) VALUES
(1, 'Eau'),
(2, 'Sols'),
(3, 'Energie'),
(4, 'Ressources génétiques'),
(5, 'Diffusion de pratiques concernant la production agricole'),
(6, 'Elevage'),
(7, 'Foresterie'),
(8, 'Pêche et l’aquaculture '),
(9, 'Chaînes de valeur alimentaires durables et inclusive');

-- --------------------------------------------------------

--
-- Structure de la table `agri_region`
--

DROP TABLE IF EXISTS `agri_region`;
CREATE TABLE IF NOT EXISTS `agri_region` (
  `id_agri_region` int NOT NULL AUTO_INCREMENT,
  `id_region` int NOT NULL,
  `id_agri` int NOT NULL,
  PRIMARY KEY (`id_agri_region`),
  KEY `id_region` (`id_region`),
  KEY `id_agri` (`id_agri`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `agri_region`
--

INSERT INTO `agri_region` (`id_agri_region`, `id_region`, `id_agri`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 9),
(9, 2, 56),
(10, 3, 8),
(11, 3, 9),
(12, 3, 5),
(13, 3, 11),
(14, 3, 12),
(15, 3, 6),
(16, 4, 12),
(17, 4, 14),
(18, 4, 16),
(19, 4, 8),
(20, 4, 2),
(21, 5, 19),
(22, 5, 11),
(23, 5, 21),
(24, 5, 12),
(25, 5, 8),
(26, 5, 24),
(27, 5, 25),
(28, 5, 26),
(29, 5, 14),
(30, 5, 28),
(31, 5, 29),
(32, 5, 30),
(33, 6, 2),
(34, 6, 32),
(35, 6, 33),
(36, 6, 26),
(37, 6, 14),
(38, 6, 8),
(39, 6, 12),
(40, 6, 38),
(41, 6, 39),
(42, 6, 25),
(43, 7, 41),
(44, 7, 42),
(45, 7, 43),
(46, 7, 2),
(47, 7, 12),
(48, 7, 12),
(49, 7, 8),
(50, 7, 14),
(51, 7, 25),
(52, 8, 2),
(53, 8, 12),
(54, 8, 8),
(55, 8, 3),
(56, 8, 53),
(57, 8, 30),
(58, 8, 35),
(59, 9, 56),
(60, 9, 2),
(61, 9, 8),
(62, 9, 59),
(63, 9, 60),
(64, 9, 6),
(65, 9, 26),
(66, 9, 33),
(67, 9, 35),
(68, 9, 7),
(69, 9, 63),
(70, 9, 64),
(71, 10, 65),
(72, 10, 64),
(73, 10, 67),
(74, 11, 65),
(75, 12, 65),
(76, 12, 64),
(77, 12, 67),
(78, 12, 5),
(79, 13, 65),
(80, 13, 5),
(81, 13, 67),
(82, 16, 9),
(83, 16, 5),
(84, 16, 12),
(85, 16, 8),
(86, 16, 64),
(87, 16, 82),
(88, 17, 83),
(89, 17, 5),
(90, 17, 64),
(91, 17, 67),
(92, 18, 2),
(93, 18, 24),
(94, 18, 25),
(95, 18, 30),
(96, 18, 56),
(97, 18, 93),
(98, 18, 94),
(99, 19, 56),
(100, 19, 67),
(101, 19, 98),
(102, 19, 7),
(103, 20, 99),
(104, 20, 100),
(105, 20, 102),
(106, 20, 6),
(107, 20, 56),
(108, 20, 67),
(109, 21, 106),
(110, 21, 65);

-- --------------------------------------------------------

--
-- Structure de la table `agri_technique_glo`
--

DROP TABLE IF EXISTS `agri_technique_glo`;
CREATE TABLE IF NOT EXISTS `agri_technique_glo` (
  `id_agri_tech_glo` int NOT NULL AUTO_INCREMENT,
  `id_agri_glo` int NOT NULL,
  `id_technique_glo` int NOT NULL,
  PRIMARY KEY (`id_agri_tech_glo`),
  KEY `id_agri_glo` (`id_agri_glo`),
  KEY `id_technique_glo` (`id_technique_glo`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `agri_technique_glo`
--

INSERT INTO `agri_technique_glo` (`id_agri_tech_glo`, `id_agri_glo`, `id_technique_glo`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 4, 6),
(7, 6, 7),
(8, 6, 8),
(9, 6, 9),
(10, 6, 10),
(11, 7, 11),
(12, 7, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 16),
(17, 8, 17),
(18, 8, 18),
(19, 8, 19),
(20, 9, 20),
(21, 9, 21),
(22, 9, 22);

-- --------------------------------------------------------

--
-- Structure de la table `climat`
--

DROP TABLE IF EXISTS `climat`;
CREATE TABLE IF NOT EXISTS `climat` (
  `id_climat` int NOT NULL AUTO_INCREMENT,
  `nom_climat` varchar(255) NOT NULL,
  `desci_climat` varchar(255) NOT NULL,
  PRIMARY KEY (`id_climat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `climat_region`
--

DROP TABLE IF EXISTS `climat_region`;
CREATE TABLE IF NOT EXISTS `climat_region` (
  `id_climat_region` int NOT NULL AUTO_INCREMENT,
  `id_climat` int NOT NULL,
  `id_region` int NOT NULL,
  PRIMARY KEY (`id_climat_region`),
  KEY `id_climat` (`id_climat`),
  KEY `id_region` (`id_region`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id_image` int NOT NULL AUTO_INCREMENT,
  `lien_image` varchar(255) NOT NULL,
  `id_technique` int NOT NULL,
  PRIMARY KEY (`id_image`),
  KEY `id_technique` (`id_technique`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `lien_image`, `id_technique`) VALUES
(1, 'agriculture_mécanisée.jpg', 8),
(2, 'bande_enherbé.jpg', 14),
(3, 'irrigation_complément.jpg', 22),
(4, 'irrigation_restrictive.jpg', 21),
(5, 'multidimensionnel.jpg', 6),
(6, 'parcellaire', 10),
(7, 'sous-solage.jpg', 15),
(8, 'sri.jpg', 9),
(9, 'tolerant_au_secheresse.jpg', 17),
(10, 'zanatany.jpg', 7),
(11, 'jardin_flottant.jpg', 1),
(12, 'mulch.jpg', 2),
(13, 'sol_nu.jpg', 3),
(14, 'reservoir.jpg', 4),
(15, 'couverture.jpg', 11),
(16, 'bassin.jpg', 12),
(17, 'concentration.jpg', 13),
(18, 'jachère.jpg', 16),
(19, 'culture.jpg', 18),
(20, 'ajustement.jpg', 19),
(21, 'evaporation.jpg', 20),
(22, 'kibota.gif\r\n', 5);

-- --------------------------------------------------------

--
-- Structure de la table `image_glo`
--

DROP TABLE IF EXISTS `image_glo`;
CREATE TABLE IF NOT EXISTS `image_glo` (
  `id_img_glo` int NOT NULL AUTO_INCREMENT,
  `lien_img_glo` varchar(255) NOT NULL,
  `id_technique_glo` int NOT NULL,
  PRIMARY KEY (`id_img_glo`),
  KEY `id_technique_glo` (`id_technique_glo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `image_glo`
--

INSERT INTO `image_glo` (`id_img_glo`, `lien_img_glo`, `id_technique_glo`) VALUES
(1, '1.jpg', 0),
(2, '2.jpg', 0),
(3, '3.jpg', 0),
(4, '4.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `piliers_aic`
--

DROP TABLE IF EXISTS `piliers_aic`;
CREATE TABLE IF NOT EXISTS `piliers_aic` (
  `id_pilier` int NOT NULL AUTO_INCREMENT,
  `productivite` varchar(255) NOT NULL,
  `adaptation` varchar(255) NOT NULL,
  `mitigation` varchar(255) NOT NULL,
  `id_agri_glo` int NOT NULL,
  PRIMARY KEY (`id_pilier`),
  KEY `id_agri_glo` (`id_agri_glo`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `piliers_aic`
--

INSERT INTO `piliers_aic` (`id_pilier`, `productivite`, `adaptation`, `mitigation`, `id_agri_glo`) VALUES
(1, 'Augmente voire double la production selon les espèces végétales', 'Améliore l’efficience d’utilisation de l’eau par la réduction de l’évaporation de l’eau', 'Améliore le stock de carbone du sol, les polyéthylènes peuvent polluer l’environnement et favoriser l’émission des GES', 1),
(2, 'Augmente la productivité en assurant aux plantes une bonne et continuelle disponibilité en eau.', 'Bonne efficience d’utilisation de l’eau et économie d’eau.', 'Faible émission de GES (énergie fossile) pour l’exhaure et la distribution de l’eau quand bien même celle-ci se feraitt à basse pression.', 1),
(3, 'Augmente voire double la production selon les espèces végétales', 'Améliore l’efficience d’utilisation de l’eau par la réduction de l’évaporation de l’eau', 'Améliore le stock de carbone du sol, les polyéthylènes peuvent polluer l’environnement et favoriser l’émission des GES', 2),
(4, 'Améliore et stabilise la productivité des cultures', 'Gestion des nuisibles (sécheresse) et l’utilisation rationnelle des éléments nutritifs des sols', 'Valorise les terres, sans émission de GES', 2),
(5, 'Valorise les terres, sans émission de GES', 'Amélioration de la\r\ncapacité de prévention des risques liés à la sécheresse par les producteurs\r\n', 'Séquestration de carbone dans les résidus de récolte puis dans le sol.', 4),
(6, 'Assure une bonne alimentation aux animaux. Ce qui est le gage d’une augmentation de la production des animaux. améliore les revenus des éleveurs.', 'Elle permet de limiter les effets de la sécheresse sur la qualité de l’alimentation des animaux', 'Émission due à la digestion des ruminants pouvant être augmentée du fait d’une plus grande disponibilité d’aliment en toute période', 6),
(7, 'Améliore la productivité de l’espace fourragère (résistance à la sécheresse), meilleure production et un rendement accru', 'Permet de s’adapter à la diminution du potentiel productif des pâturages naturels (rareté des pluies et sécheresse prolongée)', 'Augmente les quantités de biomasse produites sur le sol. Émission de GES due à la digestion des ruminants pouvant être augmentée', 6),
(8, 'Elle donne une bonne productivité si les plants mis en terre sont bien suivis.', 'Lutte contre la déforestation, réduction de l’érosion hydrique et éolienne', 'Ces plantations sont de potentiels puits de carbone.', 7),
(9, 'Augmente les rendements des cultures de 20 à 50%', 'Couverture du sol, gestion efficiente de l’eau', 'Séquestration du carbone dans le sol (retournement des résidus de culture et feuillage des arbres) et par la végétation', 7),
(10, 'Production intensive ou semi intensive,\r\nAugmentation de la production par unité de surface comparativement aux systèmes extensifs\r\n', 'Utilisation efficiente de l’eau (pas d’infiltration).\r\nEau recyclable en sécheresse ou en période de tarissement\r\n', 'N’augmente pas l’émission des GES', 8),
(11, 'Valorisation de déjections animales pour produire de nourriture primaire aux poissons', 'Qualité nutritionnelle de l’eau permettant une adaptation à la diminution d’aliments naturels dans les milieux d’élevage dans les étangs', 'Émission de GES suite à la dégradation des produits fertilisants', 8),
(12, 'Productivité plus élevée que celle du séchage traditionnel,\r\nrevenu plus accru pour les ménages\r\n', 'Permettent aux producteurs de prévenir et de gérer les risques liés à l’indisponibilité alimentaire du fait de la sécheresse prolongée ou des inondations.', 'N’émettent pas de GES, n’utilisent que de l’énergie solaire', 9),
(13, 'Permet de récupérer 40 à 70% de l’énergie produite par la combustion du bois pour la\r\ncuisson des aliments contre 8% seulement pour les foyers ordinaires;\r\n', 'Permet une réduction de la consommation de bois\r\nde chauffe de 70 à 80%\r\n', 'Permet d’économiser 42 à 62% du bois utilisé pour la cuisson des aliments et des ressources ligneuses de la forêt\r\nFaible émission de\r\nGES\r\n', 9);

-- --------------------------------------------------------

--
-- Structure de la table `pilier_technique`
--

DROP TABLE IF EXISTS `pilier_technique`;
CREATE TABLE IF NOT EXISTS `pilier_technique` (
  `id_pilier_tech` int NOT NULL AUTO_INCREMENT,
  `id_pilier` int NOT NULL,
  `id_technique_glo` int NOT NULL,
  PRIMARY KEY (`id_pilier_tech`),
  KEY `id_pilier` (`id_pilier`),
  KEY `id_technique_glo` (`id_technique_glo`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `pilier_technique`
--

INSERT INTO `pilier_technique` (`id_pilier_tech`, `id_pilier`, `id_technique_glo`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 4, 4),
(5, 0, 5),
(6, 5, 6),
(7, 0, 7),
(8, 6, 8),
(9, 0, 9),
(10, 7, 10),
(11, 8, 11),
(12, 9, 12),
(13, 0, 13),
(14, 0, 14),
(15, 10, 15),
(16, 0, 16),
(17, 0, 17),
(18, 0, 18),
(19, 11, 19),
(20, 0, 20),
(21, 12, 21),
(22, 13, 22);

-- --------------------------------------------------------

--
-- Structure de la table `probleme`
--

DROP TABLE IF EXISTS `probleme`;
CREATE TABLE IF NOT EXISTS `probleme` (
  `id_probleme` int NOT NULL AUTO_INCREMENT,
  `descri_probleme` varchar(255) NOT NULL,
  PRIMARY KEY (`id_probleme`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `probleme`
--

INSERT INTO `probleme` (`id_probleme`, `descri_probleme`) VALUES
(1, 'cyclone'),
(2, 'innondation'),
(3, 'manque de pluie'),
(4, 'hausse de température '),
(5, 'sècheresse '),
(6, 'insuffisance de la surface cultivable '),
(7, 'utilisation des petits outillages traditionnels.'),
(8, 'Manque d’infrastructures et d’encadrement technique des paysans '),
(9, 'Les cultures maraîchères ne représentent qu’une infime partie de la superficie cultivée'),
(10, 'les parcelles sont exigües et leur  opographie sur tanety limite  l’utilisation de matériel tracté. Ce qui justifie le non utilisation de la technique mécanisée dans cette région.'),
(11, 'faible synergie entre cultures industrielles et les industries de la région'),
(12, 'saison de grêle: grêles intenses et ravageuses'),
(13, 'saison de chaleur: forte chaleur et brulante, changement brusque entre le froid et la chaleur'),
(14, '\'saison de pluie: Retard des pluies, courtes périodes de pluie et longue saison de secheresse, hauteur de plui faible');

-- --------------------------------------------------------

--
-- Structure de la table `probleme_technique`
--

DROP TABLE IF EXISTS `probleme_technique`;
CREATE TABLE IF NOT EXISTS `probleme_technique` (
  `id_pb_technique` int NOT NULL AUTO_INCREMENT,
  `id_technique` int NOT NULL,
  `id_probleme` int NOT NULL,
  PRIMARY KEY (`id_pb_technique`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `probleme_technique`
--

INSERT INTO `probleme_technique` (`id_pb_technique`, `id_technique`, `id_probleme`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 2),
(7, 4, 5),
(8, 4, 14),
(9, 4, 13),
(10, 5, 10),
(11, 5, 11),
(12, 6, 6),
(13, 11, 12),
(14, 7, 9),
(15, 7, 7),
(16, 8, 9),
(17, 8, 8),
(18, 9, 7),
(19, 10, 6),
(20, 10, 9),
(21, 12, 1),
(22, 13, 7),
(23, 14, 7),
(24, 15, 4),
(25, 15, 11),
(26, 16, 2),
(27, 17, 5),
(28, 18, 3),
(29, 18, 4),
(30, 18, 5),
(31, 19, 3),
(32, 19, 1),
(33, 20, 14),
(34, 21, 9),
(35, 22, 13);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `id_region` int NOT NULL AUTO_INCREMENT,
  `nom_region` varchar(255) NOT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id_region`, `nom_region`) VALUES
(1, 'Diana'),
(2, 'Sava'),
(3, 'Sofia'),
(4, 'Boeny'),
(5, 'Itasy'),
(6, 'Menabe'),
(7, 'Atsimo-Andrefana'),
(8, 'Anosy'),
(9, 'Androy'),
(10, 'Melaky'),
(11, 'Betsiboka'),
(12, 'Atsinanana'),
(13, 'Analanjirofo'),
(14, 'Alaotra Mangoro'),
(15, 'Ihorombe'),
(16, 'Haute Matsiatra'),
(17, 'Atsimo-Atsinanana'),
(18, 'Amoron\'i Mania'),
(19, 'Vakinakaratra'),
(20, 'Bongolava'),
(21, 'Analamanga'),
(22, 'Vatovavy-Fitovinany');

-- --------------------------------------------------------

--
-- Structure de la table `region_probleme`
--

DROP TABLE IF EXISTS `region_probleme`;
CREATE TABLE IF NOT EXISTS `region_probleme` (
  `id_region_pb` int NOT NULL AUTO_INCREMENT,
  `id_region` int NOT NULL,
  `id_probleme` int NOT NULL,
  PRIMARY KEY (`id_region_pb`),
  KEY `id_probleme` (`id_probleme`),
  KEY `id_region` (`id_region`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `region_probleme`
--

INSERT INTO `region_probleme` (`id_region_pb`, `id_region`, `id_probleme`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 1),
(6, 3, 5),
(7, 6, 6),
(8, 7, 6),
(9, 8, 7),
(10, 9, 6),
(11, 10, 6),
(12, 11, 8),
(13, 11, 6),
(14, 12, 6),
(15, 13, 7),
(16, 16, 5),
(17, 17, 9),
(18, 18, 10),
(19, 19, 11),
(20, 20, 1),
(21, 20, 5),
(22, 20, 4),
(23, 21, 12),
(24, 21, 13),
(25, 21, 14),
(26, 1, 3),
(27, 4, 6),
(28, 5, 8),
(29, 14, 4),
(30, 15, 9),
(31, 22, 12),
(32, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `technique`
--

DROP TABLE IF EXISTS `technique`;
CREATE TABLE IF NOT EXISTS `technique` (
  `id_technique` int NOT NULL AUTO_INCREMENT,
  `nom_technique` varchar(255) NOT NULL,
  `descri_technique` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_technique`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `technique`
--

INSERT INTO `technique` (`id_technique`, `nom_technique`, `descri_technique`) VALUES
(1, 'Jardin flottant lors de l\'innondation', 'C’est un lieu très vert qui flotte ! Il s’agit en effet d’un jardin où les plantes et les fleurs se nourrissent directement de l’eau, les agriculteurs ont pu faire pousser des cultures sans avoir besoin de terres agricoles\r\n1. Décidez d’une taille appropriée pour le jardin flottant\r\n2. Récupérez la jacinthe d’eau. \r\n3. Posez des poteaux en bambou sur les plantes récoltées.\r\n4. Récupérez de la jacinthe d’eau supplémentaire et placez-la sur la couche de bambou pour augmenter l’épaisseur. Tissez la jacinthe d’eau dans un radeau.\r\n5. Une fois que les plantes ont été tissées et que la structure générale du radeau a été établie, retirez les poteaux en bambou.\r\n6. Attendez 7 à 10 jours et ajoutez plus de jacinthe d’eau au radeau existant.\r\n7. Ajoutez un paillis de terre, de compost et de bouse de vache pour recouvrir le radeau.\r\n8. Plantez des graines\r\n9. Entretenez le jardin flottant en fonction des cultures plantées.\r\n10. Récoltez les récoltes.\r\n\r\n'),
(2, 'Mulch : manque de pluie, hausse de température', 'Mulch ou paillage : est une couche de matériaux étendue sur le sol\r\n1, Choix du matériel végétal pour le paillage\r\n2 mise en pratique du paillage si possible avant ou au début de la saison des pluies, pendant laquelle le sol\r\nest le plus vulnérable.\r\nSi la couche de paillis n’est pas trop épaisse, les graines (ou les jeunes plants) peuvent être directement\r\nsemées (ou plantés) sur (ou dans) la couche de mulch\r\nSi le paillis est appliqué avant le semis ou la plantation, la couche de paillis ne doit pas être trop épaisse\r\nafin de permettre aux graines de pénétrer le paillis et de germer. '),
(3, 'Sol nu', ' (sechoir solaire): contact direct avec le soleil'),
(4, 'utilisation de reservoir artificielle', 'c\'est un lac de barrage d\'eau qu\'on peut utiliser quand on manque d\'eau'),
(5, 'Industriel ', 'L\'agriculture industrielle est une expression qualifiant un type d\'agriculture moderne qui se caractérise par son intégration verticale ainsi qu\'un chiffre d\'affaires et une masse salariale plus semblable aux entreprises du secteur secondaire qu\'aux exploitations agricoles à structure familiale'),
(6, ' stratification multidimensionnelle', ''),
(7, 'système de rizipermaculture ZANATANY', ''),
(8, 'Mécanisée', 'L\'Agriculture mécanisée est un processus qui consiste à l\'utilisation de machines agricoles afin de travailler l\'agriculture et d\'améliorer significativement la productivité engendrée par les travailleurs agricoles\r\n'),
(9, 'technique de vulgarisation de technique SRI/SRA', 'Le Système de Riziculture Intensive (SRI) est une méthode de culture du riz qui produit des rendements nettement plus élevés avec la plantation de beaucoup moins de semis et l’utilisation de moins d’intrants que les méthodes traditionnelles (c’est-à-dire d’inondation) ou les méthodes plus « modernes » (utilisant des engrais minéraux ou agrochimiques). Cette approche implique l’utilisation de diverses pratiques de gestion des plantes, du sol, de l’eau et des éléments nutritifs.'),
(10, 'Découpage du parcellaire', 'La division parcellaire est le fait de découper votre terrain en plusieurs parcelles'),
(11, 'Couvert végétal', 'consistent à laisser un ensemble de végétaux recouvrir le sol afin d’y placer le semis par la suite. Il s’agit de rendre le sol plus fertile et de limiter la pousse des mauvaises herbes'),
(12, 'Alterner les cultures sur un bassin versan', ''),
(13, 'Limiter la concentration du ruissellement et créer des zones de dépôts', ''),
(14, 'La bande enherbée', 'Les bandes enherbées, plus ou moins larges, sont des dispositifs agro-paysagers longeant les cours d\'eau ou plantées transversalement à la pente\r\n'),
(15, 'Effectuer un sous-solage', 'Le sous-solage est une opération de travail du sol visant à briser ou ameublir sans retournement une couche compacte du sol à une profondeur supérieure à celle des labours.\r\n'),
(16, 'introduction de jachère', ''),
(17, 'Plantation des especes tolerantes à la secheresse: sorgho, tournesol,', ''),
(18, 'Variété de culture d\'été précoce', ''),
(19, 'Ajustement des apports aux besoins de la plante', ''),
(20, 'Réduction de l\'évaporation lors des aspersions ', ''),
(21, 'Pratiquer une irrigation restrictive', 'Cette technique consiste à dériver un cours d\'eau dans une rigole en vue de l\'amener en amont des prairies à irriguer.'),
(22, ' Privilégier l\'irrigation de complément', 'Le terme irrigation de complément désigne l’addition de petites quantités d’eau aux cultures pluviales, afin de réduire les pertes de récolte et de stabiliser les rendements');

-- --------------------------------------------------------

--
-- Structure de la table `technique_glo`
--

DROP TABLE IF EXISTS `technique_glo`;
CREATE TABLE IF NOT EXISTS `technique_glo` (
  `id_technique_glo` int NOT NULL AUTO_INCREMENT,
  `nom_technique_glo` varchar(255) NOT NULL,
  `descri_technique_glo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_technique_glo`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `technique_glo`
--

INSERT INTO `technique_glo` (`id_technique_glo`, `nom_technique_glo`, `descri_technique_glo`) VALUES
(1, 'Paillage', 'couche de matériaux étendue sur le sol'),
(2, 'Système micro-irrigation', 'L’irrigation goutte à goutte est un système composé d’un tuyau porteur en polyéthylène basse densité́ (traité anti UV) et perforés (extrudés) et de goutteurs plus ou moins écartés. Il peut être installé en surface ou enterré, en plein champs, dans un '),
(3, 'Culture sous couverture végétale', 'consistent à laisser un ensemble de végétaux recouvrir le sol afin d’y placer le semis par la suite. Il s’agit de rendre le sol plus fertile et de limiter la pousse des mauvaises herbes'),
(4, 'Assolement – Rotation de culture', 'L’assolement décrit les différents types de cultures réparties annuellement sur la Surface Agricole Utile (SAU) d’une exploitation. La diversification des assolements peut se concevoir à l’échelle d’une parcelle avec la mise en place de cultures associées'),
(5, 'Utilisation de nouvelles sources de matières organiques pour l’énergie', ''),
(6, 'Utilisation variétés améliorées, résistants à cycle court et/ou résistantes à la sécheresse et aux maladies', ''),
(7, 'Introduction des races améliorées pour une bonne résistance aux maladies', ''),
(8, 'Construction réserve alimentaire pour la saison sèche', ''),
(9, 'Recours à des nouvelles sources d’aliments', ''),
(10, 'Culture de variétés fourragères résistantes', 'C\'est la capacité d\'une plante à monter en épis l\'année du semis'),
(11, 'Plantation/ Reboisement', 'La plantation est un des moyens de restaurer un boisement après une coupe rase'),
(12, 'Agroforesterie', 'L’agroforesterie désigne les pratiques, nouvelles ou historiques, associant arbres, cultures et-ou animaux sur une même parcelle agricole, en bordure ou en plein champ.'),
(13, 'Domestication et plantation des espèces fruitières locales', ''),
(14, 'Greffage – Sur greffage', 'le greffage est un mode de reproduction végétative qui consiste à implanter dans les tissus d\'une plante un bourgeon ou un fragment quelconque, prélevé sur une autre plante ou de la même plante, pour que celui-ci continue à croître en faisant corps avec l'),
(15, 'Elevage dans un bassin', 'Les poissons grandissent dans des bassins d\'élevage (remplis d\'eau douce ou d\'eau de mer selon l\'espèce'),
(16, 'Introduction de nouvelles poissons à cycle court', ''),
(17, 'Bac hors sol', 'Les bacs hors sol, en pisciculture, sont des dispositifs de production où la matière principale utilisée pour l\'étanchéité est du plastique.'),
(18, 'Elevage en cage flottantes', 'Cage flottante pour élevées des poissons'),
(19, 'Fertilisation des étangs piscicole', 'Les fertilisants des étangs piscicoles sont des substances naturelles ou synthétiques qui sont épandus dans les étangs en vue d\'augmenter la production de phytoplancton, zooplancton et des insectes qui servent d\'aliments pour certains poissons'),
(20, 'Stockage et conservation des produits', ''),
(21, 'Séchoirs solaires', ''),
(22, 'Foyers traditionnels améliorés', '');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int NOT NULL AUTO_INCREMENT,
  `lien_video` varchar(255) NOT NULL,
  `id_technique` int NOT NULL,
  PRIMARY KEY (`id_video`),
  KEY `id_technique` (`id_technique`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `video_glo`
--

DROP TABLE IF EXISTS `video_glo`;
CREATE TABLE IF NOT EXISTS `video_glo` (
  `id_vid_glo` int NOT NULL AUTO_INCREMENT,
  `lien_vid_glo` varchar(255) NOT NULL,
  `id_technique_glo` int NOT NULL,
  PRIMARY KEY (`id_vid_glo`),
  KEY `id_technique_glo` (`id_technique_glo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `video_glo`
--

INSERT INTO `video_glo` (`id_vid_glo`, `lien_vid_glo`, `id_technique_glo`) VALUES
(1, 'https://www.youtube.com/watch?v=ewhQN1zjOME', 1),
(2, 'https://www.youtube.com/watch?v=a96PIB0jW7s', 6),
(3, 'https://www.youtube.com/watch?v=AMy6zgjkgxg', 15),
(4, 'https://www.youtube.com/watch?v=_ZnKRQ_Y1o4', 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
