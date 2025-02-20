-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 20 fév. 2025 à 15:36
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `passionauto`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories_voitures`
--

DROP TABLE IF EXISTS `categories_voitures`;
CREATE TABLE IF NOT EXISTS `categories_voitures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories_voitures`
--

INSERT INTO `categories_voitures` (`id`, `name`) VALUES
(9, 'Sportive'),
(10, 'SUV'),
(11, 'Berline'),
(12, 'Coupé'),
(13, 'Électrique'),
(14, 'Hybride'),
(15, 'Pickup'),
(16, 'Muscle'),
(17, 'Ancienne'),
(18, 'Supercar'),
(19, 'Hypercar'),
(20, 'Concept Car'),
(21, 'Compacte'),
(22, 'Cabriolet'),
(23, 'GT'),
(24, 'Luxe'),
(25, 'Tout-terrain'),
(26, 'Utilitaire'),
(27, 'Familiale'),
(28, 'Citadine');

-- --------------------------------------------------------

--
-- Structure de la table `details_voitures`
--

DROP TABLE IF EXISTS `details_voitures`;
CREATE TABLE IF NOT EXISTS `details_voitures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puissance` int NOT NULL,
  `couple` int NOT NULL,
  `acceleration` double NOT NULL,
  `vitesse` int NOT NULL,
  `poids` int NOT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortie_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autonomie` int NOT NULL,
  `carburant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suspension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `details_voitures`
--

INSERT INTO `details_voitures` (`id`, `marque`, `nom`, `image`, `moteur`, `puissance`, `couple`, `acceleration`, `vitesse`, `poids`, `transmission`, `sortie_at`, `prix`, `description`, `autonomie`, `carburant`, `suspension`) VALUES
(1, 'Koenigsegg', 'Jesko Absolut', 'car_koenigsegg_jeskoAbsolut.jpg', 'V8 5.0L biturbo', 1600, 1500, 2.5, 500, 1420, 'Propulsion - Boîte auto 9 rapports', '0000-00-00 00:00:00', 3000000, 'La Koenigsegg Jesko Absolut est la voiture la plus rapide du monde, avec une vitesse maximale atteignant les 500 km/h. Elle est équipée d\'un moteur V8 biturbo de 5.0L qui développe une puissance de 1600 chevaux et un couple de 1500 Nm. Ce modèle allie performances extrêmes et technologie de pointe pour offrir une expérience de conduite inégalée.', 1000, 'Essence sans plomb', 'Suspension active et réglable'),
(2, 'Jaguar', 'XJ13', 'car_jaguar_xj13_1959.jpg', 'V12 5.0L', 500, 500, 3, 280, 1000, 'Propulsion - Boîte manuelle 5 rapports', '0000-00-00 00:00:00', 30000000, 'La Jaguar XJ13 est un prototype de voiture de course conçu dans les années 1960, avec une silhouette distinctive et un moteur V12 de 5.0L. Bien qu\'elle n\'ait jamais été produite en série, ce modèle est reconnu pour sa beauté et ses performances exceptionnelles. La XJ13 a été conçue pour participer aux 24 Heures du Mans, mais elle est restée une pièce de collection rare et précieuse.', 500, 'Essence sans plomb', 'Suspension indépendante à double triangulation'),
(3, 'Jaguar', 'E-Type', 'car_jaguar_e_type.jpg', '6-cylindres en ligne 4.2L', 265, 380, 6.2, 240, 1300, 'Propulsion - Boîte manuelle 4 rapports', '0000-00-00 00:00:00', 1200000, 'La Jaguar E-Type, surnommée la \'véritable voiture de rêve\', est l\'une des voitures les plus emblématiques des années 60. Avec son design révolutionnaire, ses lignes épurées et son moteur performant, elle est un symbole de l\'élégance et de la performance britannique. Véritablement conçue pour la route, elle a marqué l\'histoire de l\'automobile et reste une pièce de collection très prisée.', 550, 'Essence sans plomb', 'Suspension avant indépendante et arrière avec essieu rigide'),
(5, 'Koenigsegg', 'Jesko', 'koenigsegg-jesko-attack.jpg', 'V8 biturbo 5.0L', 1600, 1500, 2.5, 531, 1390, 'Propulsion - Boîte automatique 9 rapports', '0000-00-00 00:00:00', 3000000, 'La Koenigsegg Jesko est l\'une des hypercars les plus rapides et technologiquement avancées au monde.', 400, 'Essence sans plomb', 'Suspension active à double triangulation'),
(6, 'Koenigsegg', 'Gemera', 'koenigsegg-gemera.jpg', '3-cylindres hybride 2.0L', 1700, 3500, 1.9, 400, 1850, 'Transmission intégrale - Boîte automatique', '0000-00-00 00:00:00', 1700000, 'La Koenigsegg Gemera est une révolution avec son moteur hybride et ses performances extrêmes.', 500, 'Hybride', 'Suspension active'),
(7, 'Jaguar', 'XK120', 'jaguar-xk120-m-roadster.jpg', '6-cylindres en ligne 3.4L', 160, 260, 10, 200, 1315, 'Propulsion - Boîte manuelle 4 rapports', '0000-00-00 00:00:00', 200000, 'Une des voitures de sport britanniques les plus emblématiques des années 50.', 500, 'Essence sans plomb', 'Suspension avant indépendante et arrière rigide'),
(8, 'Jaguar', 'F-Type R', 'jaguar-f-type-r.jpg', 'V8 5.0L Supercharged', 575, 700, 3.7, 300, 1770, 'Transmission intégrale - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 120000, 'La Jaguar F-Type R est une GT moderne alliant puissance, luxe et plaisir de conduite.', 550, 'Essence sans plomb', 'Suspension active'),
(9, 'Jaguar', 'C-X75', 'jaguar_c_x75.jpg', 'Hybride 1.6L Turbo + moteurs électriques', 850, 1000, 2.8, 330, 1350, 'Transmission intégrale - Boîte séquentielle', '0000-00-00 00:00:00', 1000000, 'La Jaguar C-X75 est une supercar hybride développée par Jaguar, combinant design futuriste et performances exceptionnelles.', 500, 'Hybride', 'Suspension active et adaptative'),
(10, 'Koenigsegg', 'Regera', 'koenigsegg_regera.jpg', 'V8 biturbo hybride 5.0L', 1500, 2000, 2.8, 410, 1628, 'Propulsion - Boîte automatique à une vitesse', '0000-00-00 00:00:00', 2100000, 'La Koenigsegg Regera est une hypercar hybride combinant luxe et performances extrêmes.', 500, 'Hybride', 'Suspension active adaptative'),
(11, 'Koenigsegg', 'Agera', 'koenigsegg_agera.jpg', 'V8 biturbo 5.0L', 1341, 1371, 2.7, 447, 1295, 'Propulsion - Boîte automatique 7 rapports', '0000-00-00 00:00:00', 2500000, 'L\'Agera est une voiture emblématique de Koenigsegg, réputée pour ses performances incroyables.', 450, 'Essence', 'Suspension active'),
(12, 'Audi', 'R8 V10', 'audi_r8_coupe_V10.jpg', 'V10 5.2L', 620, 580, 3.1, 330, 1650, 'Transmission intégrale - Boîte automatique 7 rapports', '0000-00-00 00:00:00', 200000, 'L\'Audi R8 V10 est une supercar alliant performance et élégance.', 500, 'Essence', 'Suspension sport adaptative'),
(13, 'Audi', 'PB18 20 e-Tron 3', 'audi_20PB18_20e-Tron_3.jpg', 'Électrique', 764, 830, 2, 350, 1550, 'Transmission intégrale', '0000-00-00 00:00:00', 1000000, 'L\'Audi PB18 e-tron est un concept car hyper sportif entièrement électrique.', 600, 'Électrique', 'Suspension magnétique active'),
(14, 'Audi', 'A6 Avant', 'audi_a6_avant.jpg', 'V6 3.0L TDI', 286, 620, 5.5, 250, 1850, 'Transmission intégrale - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 70000, 'L\'Audi A6 Avant est une familiale spacieuse et élégante avec des performances remarquables.', 900, 'Diesel', 'Suspension pneumatique adaptative'),
(16, 'Audi', 'Quattro Turbo', 'audi_quattro_turbo.jpg', '5 cylindres en ligne 2.2L turbo', 300, 350, 4.8, 250, 1300, 'Transmission intégrale - Boîte manuelle 5 rapports', '0000-00-00 00:00:00', 50000, 'L\'Audi Quattro Turbo est une icône des rallyes, célèbre pour sa transmission intégrale et ses performances exceptionnelles.', 600, 'Essence', 'Suspension sportive'),
(17, 'Audi', 'Q8', 'audi_q8.jpg', 'V6 3.0L TFSI', 335, 500, 5.9, 250, 2145, 'Transmission intégrale Quattro - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 90000, 'L\'Audi Q8 est un SUV luxueux qui combine élégance, performance et technologie avancée.', 800, 'Essence', 'Suspension pneumatique adaptative'),
(18, 'Tesla', 'Model S', 'tesla_model_s.jpg', 'Électrique', 1020, 1050, 2.1, 250, 2065, 'Transmission intégrale', '0000-00-00 00:00:00', 99990, 'La Tesla Model S est une berline électrique haut de gamme offrant des performances exceptionnelles et une autonomie impressionnante.', 652, 'Électrique', 'Suspension pneumatique adaptative'),
(19, 'Tesla', 'Model X', 'tesla_model_x.jpg', 'Électrique', 1020, 970, 2.6, 250, 2455, 'Transmission intégrale', '0000-00-00 00:00:00', 104990, 'Le Tesla Model X est un SUV électrique offrant des performances exceptionnelles et une grande capacité de transport.', 580, 'Électrique', 'Suspension pneumatique adaptative'),
(20, 'Tesla', 'Model 3', 'tesla_model_3.jpg', 'Électrique', 450, 640, 3.3, 233, 1645, 'Transmission intégrale', '0000-00-00 00:00:00', 49990, 'La Tesla Model 3 est une berline électrique compacte offrant un excellent rapport qualité-prix et des performances impressionnantes.', 568, 'Électrique', 'Suspension sportive'),
(21, 'Tesla', 'Model Y', 'tesla_model_y.jpg', 'Électrique', 456, 660, 3.7, 217, 1870, 'Transmission intégrale', '0000-00-00 00:00:00', 59990, 'Le Tesla Model Y est un SUV compact électrique offrant une grande polyvalence et des performances impressionnantes.', 507, 'Électrique', 'Suspension pneumatique adaptative'),
(22, 'Tesla', 'Roadster', 'tesla_roadster.jpg', 'Électrique', 1000, 1000, 1.9, 400, 1300, 'Transmission intégrale', '0000-00-00 00:00:00', 200000, 'La Tesla Roadster est une voiture de sport électrique offrant des performances exceptionnelles et une autonomie impressionnante.', 1000, 'Électrique', 'Suspension sportive'),
(23, 'BMW', 'Série 3', 'bmw_serie_3.jpg', '4 cylindres en ligne 2.0L turbo', 258, 400, 5.8, 250, 1540, 'Transmission intégrale xDrive - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 45000, 'La BMW Série 3 est une berline compacte offrant un excellent équilibre entre performance, confort et technologie.', 700, 'Essence', 'Suspension adaptative M'),
(24, 'BMW', 'X5', 'bmw_x5.jpg', '6 cylindres en ligne 3.0L turbo', 340, 450, 5.5, 243, 2110, 'Transmission intégrale xDrive - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 70000, 'Le BMW X5 est un SUV luxueux offrant une grande polyvalence, des performances impressionnantes et une technologie avancée.', 800, 'Essence', 'Suspension pneumatique adaptative'),
(25, 'BMW', 'Série 4', 'bmw_serie_4.jpg', '6 cylindres en ligne 3.0L turbo', 382, 500, 4.5, 250, 1670, 'Transmission intégrale xDrive - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 55000, 'La BMW Série 4 est un coupé sportif offrant des performances exceptionnelles et un design élégant.', 750, 'Essence', 'Suspension adaptative M'),
(26, 'BMW', 'Série 5', 'bmw_serie_5.jpg', '6 cylindres en ligne 3.0L turbo', 333, 450, 5.4, 250, 1725, 'Transmission intégrale xDrive - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 60000, 'La BMW Série 5 est une berline de luxe offrant un excellent équilibre entre confort, performance et technologie.', 850, 'Essence', 'Suspension adaptative M'),
(27, 'BMW', 'M3', 'bmw_m3.jpg', '6 cylindres en ligne 3.0L biturbo', 510, 650, 3.9, 290, 1730, 'Transmission intégrale xDrive - Boîte automatique 8 rapports', '0000-00-00 00:00:00', 85000, 'La BMW M3 est une voiture de sport offrant des performances exceptionnelles et un design agressif.', 700, 'Essence', 'Suspension adaptative M'),
(33, 'Bugatti', 'Chiron', 'bugatti_chiron.jpg', 'W16 8.0L quadriturbo', 1500, 1600, 2.4, 420, 1996, 'Transmission intégrale - Boîte automatique 7 rapports', '0000-00-00 00:00:00', 2400000, 'La Bugatti Chiron est une hypercar offrant des performances exceptionnelles et un design luxueux.', 1000, 'Essence', 'Suspension adaptative'),
(34, 'Bugatti', 'Veyron', 'bugatti_veyron.jpg', 'W16 8.0L quadriturbo', 1001, 1250, 2.5, 407, 1888, 'Transmission intégrale - Boîte automatique 7 rapports', '0000-00-00 00:00:00', 1700000, 'La Bugatti Veyron est une hypercar légendaire offrant des performances exceptionnelles et un design emblématique.', 1200, 'Essence', 'Suspension adaptative'),
(35, 'Bugatti', 'Divo', 'bugatti_divo.jpg', 'W16 8.0L quadriturbo', 1500, 1600, 2.4, 380, 1995, 'Transmission intégrale - Boîte automatique 7 rapports', '0000-00-00 00:00:00', 5800000, 'La Bugatti Divo est une hypercar axée sur la performance en circuit, offrant une maniabilité exceptionnelle.', 1000, 'Essence', 'Suspension adaptative'),
(36, 'Bugatti', 'Centodieci', 'bugatti_centodiecibugatti_centodieci.jpg', 'W16 8.0L quadriturbo', 1600, 1600, 2.4, 380, 1976, 'Transmission intégrale - Boîte automatique 7 rapports', '0000-00-00 00:00:00', 8900000, 'La Bugatti Centodieci est une hypercar rendant hommage à la Bugatti EB110, offrant des performances exceptionnelles et un design unique.', 1000, 'Essence', 'Suspension adaptative'),
(37, 'Bugatti', 'La Voiture Noire', 'bugatti_la_voiture_noire.jpg', 'W16 8.0L quadriturbo', 1500, 1600, 2.4, 420, 1995, 'Transmission intégrale - Boîte automatique 7 rapports', '0000-00-00 00:00:00', 18500000, 'La Bugatti La Voiture Noire est une hypercar unique et exclusive, rendant hommage à la Bugatti Type 57 SC Atlantic.', 1000, 'Essence', 'Suspension adaptative'),
(43, 'Chevrolet', 'Camaro', 'chevrolet_camaro.jpg', 'V8 6.2L', 455, 617, 4, 290, 1683, 'Boîte manuelle 6 rapports ou automatique 10 rapports', '0000-00-00 00:00:00', 25000, 'La Chevrolet Camaro est une muscle car emblématique offrant des performances impressionnantes et un design agressif.', 600, 'Essence', 'Suspension sportive'),
(44, 'Chevrolet', 'Tahoe', 'chevrolet_tahoe.jpg', 'V8 5.3L', 355, 519, 7.5, 200, 2548, 'Boîte automatique 10 rapports', '0000-00-00 00:00:00', 49000, 'Le Chevrolet Tahoe est un SUV full-size offrant une grande capacité de transport et des performances robustes.', 700, 'Essence', 'Suspension adaptative'),
(45, 'Chevrolet', 'Silverado', 'chevrolet_silverado.jpg', 'V8 6.2L', 420, 624, 6.1, 180, 2385, 'Boîte automatique 10 rapports', '0000-00-00 00:00:00', 28000, 'Le Chevrolet Silverado est un pick-up full-size offrant des capacités de remorquage impressionnantes et une robustesse à toute épreuve.', 800, 'Essence', 'Suspension robuste'),
(46, 'Chevrolet', 'Malibu', 'chevrolet_malibu.jpg', '4 cylindres en ligne 1.5L turbo', 163, 250, 8.2, 210, 1462, 'Boîte automatique CVT', '0000-00-00 00:00:00', 22000, 'La Chevrolet Malibu est une berline familiale offrant un bon équilibre entre confort, performance et efficacité énergétique.', 750, 'Essence', 'Suspension confort'),
(47, 'Chevrolet', 'Corvette', 'chevrolet_corvette.jpg', 'V8 6.2L', 495, 637, 3, 312, 1528, 'Boîte automatique 8 rapports', '0000-00-00 00:00:00', 58000, 'La Chevrolet Corvette est une voiture de sport emblématique offrant des performances exceptionnelles et un design iconique.', 650, 'Essence', 'Suspension sportive'),
(53, 'Ferrari', 'F8 Tributo', 'ferrari_f8_tributo.jpg', 'V8 3.9L biturbo', 720, 770, 2.9, 340, 1435, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 250000, 'La Ferrari F8 Tributo est une supercar offrant des performances exceptionnelles et un design élégant.', 700, 'Essence', 'Suspension sportive'),
(54, 'Ferrari', '488 GTB', 'ferrari_488_gtb.jpg', 'V8 3.9L biturbo', 670, 760, 3, 330, 1475, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 230000, 'La Ferrari 488 GTB est une supercar offrant des performances impressionnantes et un design sportif.', 750, 'Essence', 'Suspension sportive'),
(55, 'Ferrari', 'LaFerrari', 'ferrari_laferrari.jpg', 'V12 6.3L hybride', 963, 900, 2.4, 350, 1255, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 1400000, 'La Ferrari LaFerrari est une hypercar hybride offrant des performances exceptionnelles et une technologie avancée.', 600, 'Essence', 'Suspension sportive'),
(56, 'Ferrari', '812 Superfast', 'ferrari_812_superfast.jpg', 'V12 6.5L', 800, 718, 2.9, 340, 1630, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 315000, 'La Ferrari 812 Superfast est une supercar offrant des performances exceptionnelles et un design élégant.', 700, 'Essence', 'Suspension sportive'),
(57, 'Ferrari', 'SF90 Stradale', 'ferrari_sf90_stradale.jpg', 'V8 4.0L hybride', 1000, 800, 2.5, 340, 1570, 'Boîte automatique 8 rapports', '0000-00-00 00:00:00', 500000, 'La Ferrari SF90 Stradale est une supercar hybride offrant des performances exceptionnelles et une technologie avancée.', 650, 'Essence', 'Suspension sportive'),
(58, 'Lamborghini', 'Aventador', 'lamborghini_aventador.jpg', 'V12 6.5L', 740, 690, 2.9, 350, 1575, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 390000, 'La Lamborghini Aventador est une supercar offrant des performances exceptionnelles et un design agressif.', 700, 'Essence', 'Suspension sportive'),
(59, 'Lamborghini', 'Huracán', 'lamborghini_huracan.jpg', 'V10 5.2L', 610, 560, 3.2, 325, 1422, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 200000, 'La Lamborghini Huracán est une supercar offrant des performances impressionnantes et un design élégant.', 750, 'Essence', 'Suspension sportive'),
(60, 'Lamborghini', 'Sián', 'lamborghini_sian.jpg', 'V12 6.5L hybride', 819, 720, 2.8, 350, 1520, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 3600000, 'La Lamborghini Sián est une hypercar hybride offrant des performances exceptionnelles et une technologie avancée.', 600, 'Essence', 'Suspension sportive'),
(61, 'Lamborghini', 'Urus', 'lamborghini_urus.jpg', 'V8 4.0L biturbo', 650, 850, 3.6, 305, 2200, 'Boîte automatique 8 rapports', '0000-00-00 00:00:00', 200000, 'La Lamborghini Urus est un SUV super sportif offrant des performances impressionnantes et un design agressif.', 700, 'Essence', 'Suspension adaptative'),
(62, 'Lamborghini', 'Gallardo', 'lamborghini_gallardo.jpg', 'V10 5.0L', 520, 510, 4, 315, 1430, 'Boîte manuelle 6 rapports ou automatique 6 rapports', '0000-00-00 00:00:00', 180000, 'La Lamborghini Gallardo est une supercar offrant des performances impressionnantes et un design sportif.', 750, 'Essence', 'Suspension sportive'),
(73, 'Ford', 'Explorer', 'ford_explorer.jpg', 'V6 3.0L EcoBoost', 365, 494, 5.9, 230, 2085, 'Boîte automatique 10 rapports', '0000-00-00 00:00:00', 45000, 'Le Ford Explorer est un SUV offrant une grande polyvalence, des performances robustes et une technologie avancée.', 700, 'Essence', 'Suspension adaptative'),
(74, 'Ford', 'F-150', 'ford_f150.jpg', 'V6 3.5L EcoBoost', 375, 637, 5.9, 190, 2100, 'Boîte automatique 10 rapports', '0000-00-00 00:00:00', 30000, 'Le Ford F-150 est un pick-up offrant des capacités de remorquage impressionnantes et une robustesse à toute épreuve.', 800, 'Essence', 'Suspension robuste'),
(75, 'Ford', 'Mustang', 'ford_mustang.jpg', 'V8 5.0L', 460, 570, 4, 250, 1720, 'Boîte manuelle 6 rapports ou automatique 10 rapports', '0000-00-00 00:00:00', 35000, 'La Ford Mustang est une muscle car emblématique offrant des performances impressionnantes et un design sportif.', 750, 'Essence', 'Suspension sportive'),
(76, 'Ford', 'Focus', 'ford_focus.jpg', '4 cylindres en ligne 1.5L EcoBoost', 182, 240, 8.5, 225, 1350, 'Boîte manuelle 6 rapports ou automatique 8 rapports', '0000-00-00 00:00:00', 20000, 'La Ford Focus est une berline compacte offrant un bon équilibre entre confort, performance et efficacité énergétique.', 800, 'Essence', 'Suspension confort'),
(77, 'Ford', 'Mustang Mach 1', 'ford_mustang_mach1_1969.jpg', 'V8 7.0L', 351, 542, 6.5, 220, 1500, 'Boîte manuelle 4 rapports', '0000-00-00 00:00:00', 75000, 'La Ford Mustang Mach 1 1969 est une muscle car classique offrant des performances robustes et un design emblématique.', 600, 'Essence', 'Suspension sportive'),
(83, 'Mercedes-Benz', 'G-Class', 'mercedes_g_class.jpg', 'V8 4.0L biturbo', 585, 850, 4.5, 220, 2560, 'Boîte automatique 9 rapports', '0000-00-00 00:00:00', 130000, 'Le Mercedes-Benz G-Class est un SUV luxueux offrant des performances robustes et un design emblématique.', 700, 'Essence', 'Suspension adaptative'),
(84, 'Mercedes-Benz', 'AMG GT', 'mercedes_amg_gt.jpg', 'V8 4.0L biturbo', 585, 700, 3.6, 318, 1630, 'Boîte automatique 7 rapports', '0000-00-00 00:00:00', 150000, 'La Mercedes-AMG GT est une supercar offrant des performances exceptionnelles et un design sportif.', 700, 'Essence', 'Suspension sportive'),
(85, 'Mercedes-Benz', '300 SL', 'mercedes_300_sl.jpg', '6 cylindres en ligne 3.0L', 215, 295, 9, 260, 1290, 'Boîte manuelle 4 rapports', '0000-00-00 00:00:00', 1000000, 'La Mercedes-Benz 300 SL est une voiture de sport classique offrant un design emblématique et des performances historiques.', 600, 'Essence', 'Suspension sportive'),
(86, 'Mercedes-Benz', 'AMG One', 'mercedes_amg_one.jpg', 'V6 1.6L hybride turbo', 1063, 1000, 2.9, 350, 1550, 'Boîte automatique 8 rapports', '0000-00-00 00:00:00', 2750000, 'La Mercedes-AMG One est une hypercar hybride offrant des performances exceptionnelles et une technologie avancée.', 600, 'Essence', 'Suspension sportive'),
(87, 'Mercedes-Benz', 'Classe S', 'mercedes_classe_s.jpg', '6 cylindres en ligne 3.0L turbo', 435, 520, 5.1, 250, 1970, 'Boîte automatique 9 rapports', '0000-00-00 00:00:00', 110000, 'La Mercedes-Benz Classe S est une berline de luxe offrant un confort exceptionnel, des performances impressionnantes et une technologie de pointe.', 850, 'Essence', 'Suspension pneumatique adaptative'),
(88, 'Rimac', 'Concept One', 'rimac_concept_one.jpg', 'Électrique', 1224, 1600, 2.5, 355, 1850, 'Transmission directe', '0000-00-00 00:00:00', 980000, 'La Rimac Concept One est une hypercar électrique offrant des performances exceptionnelles et une technologie avancée.', 350, 'Électrique', 'Suspension adaptative'),
(89, 'Rimac', 'C_Two', 'rimac_c_two.jpg', 'Électrique', 1914, 2300, 1.9, 412, 1950, 'Transmission directe', '0000-00-00 00:00:00', 2000000, 'La Rimac C_Two est une hypercar électrique offrant des performances exceptionnelles et une technologie avancée.', 550, 'Électrique', 'Suspension adaptative'),
(90, 'Rimac', 'Nevera', 'rimac_nevera.jpg', 'Électrique', 1914, 2360, 1.85, 412, 2150, 'Transmission directe', '0000-00-00 00:00:00', 2400000, 'La Rimac Nevera est une hypercar électrique offrant des performances exceptionnelles et une technologie avancée.', 550, 'Électrique', 'Suspension adaptative'),
(91, 'Rimac', 'Concept S', 'rimac_concept_s.jpg', 'Électrique', 1384, 1800, 2.5, 365, 1800, 'Transmission directe', '0000-00-00 00:00:00', 1200000, 'La Rimac Concept S est une hypercar électrique offrant des performances exceptionnelles et une technologie avancée.', 350, 'Électrique', 'Suspension adaptative'),
(92, 'Rimac', 'E-Runner', 'rimac_e_runner.jpg', 'Électrique', 1914, 2300, 1.9, 412, 1950, 'Transmission directe', '0000-00-00 00:00:00', 2200000, 'La Rimac E-Runner est une hypercar électrique offrant des performances exceptionnelles et une technologie avancée.', 550, 'Électrique', 'Suspension adaptative'),
(103, 'Pagani', 'Zonda R', 'pagani_zonda.jpg', 'V12 7.3L AMG', 760, 780, 3.6, 350, 1280, 'Boîte manuelle 6 rapports ou séquentielle 6 rapports', '0000-00-00 00:00:00', 1500000, 'La Pagani Zonda est une hypercar emblématique offrant des performances exceptionnelles et un design unique.', 600, 'Essence', 'Suspension sportive'),
(104, 'Pagani', 'Huayra', 'pagani_huayra.jpg', 'V12 6.0L biturbo AMG', 730, 1000, 3, 383, 1350, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 2000000, 'La Pagani Huayra est une hypercar offrant des performances exceptionnelles et un design élégant.', 700, 'Essence', 'Suspension sportive'),
(105, 'Pagani', 'Huayra BC', 'pagani_huayra_bc.jpg', 'V12 6.0L biturbo AMG', 750, 1000, 2.8, 370, 1218, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 2500000, 'La Pagani Huayra BC est une version améliorée de la Huayra, offrant des performances encore plus impressionnantes.', 650, 'Essence', 'Suspension sportive'),
(106, 'Pagani', 'Huayra Roadster', 'pagani_huayra_roadster.jpg', 'V12 6.0L biturbo AMG', 764, 1000, 2.9, 370, 1280, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 2700000, 'La Pagani Huayra Roadster est une version décapotable de la Huayra, offrant des performances exceptionnelles.', 650, 'Essence', 'Suspension sportive'),
(107, 'Pagani', 'Utopia', 'pagani_utopia.jpg', 'V12 6.0L biturbo AMG', 864, 1100, 2.8, 370, 1280, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 3000000, 'La Pagani Utopia est la dernière hypercar de Pagani, offrant des performances exceptionnelles et un design unique.', 650, 'Essence', 'Suspension sportive'),
(108, 'Porsche', '911', 'Porsche_911.jpg', '6 cylindres à plat 3.0L biturbo', 450, 530, 3.7, 306, 1505, 'Boîte automatique PDK 8 rapports', '0000-00-00 00:00:00', 100000, 'La Porsche 911 est une supercar emblématique offrant des performances exceptionnelles et un design intemporel.', 700, 'Essence', 'Suspension sportive'),
(109, 'Porsche', '911 Turbo S', 'porsche_911_turbo_s.jpg', '6 cylindres à plat 3.8L biturbo', 650, 800, 2.7, 330, 1640, 'Boîte automatique PDK 8 rapports', '0000-00-00 00:00:00', 200000, 'La Porsche 911 Turbo S est une supercar offrant des performances exceptionnelles et une technologie avancée.', 650, 'Essence', 'Suspension sportive'),
(110, 'Porsche', '918 Spyder', 'porsche_918_spyder.jpg', 'V8 4.6L hybride', 887, 1280, 2.6, 345, 1640, 'Boîte automatique PDK 7 rapports', '0000-00-00 00:00:00', 845000, 'La Porsche 918 Spyder est une hypercar hybride offrant des performances exceptionnelles et une technologie avancée.', 450, 'Hybride', 'Suspension sportive'),
(111, 'Porsche', 'Cayenne', 'porsche_cayenne.jpg', 'V8 4.0L biturbo', 550, 770, 4.1, 286, 2100, 'Boîte automatique Tiptronic S 8 rapports', '0000-00-00 00:00:00', 80000, 'Le Porsche Cayenne est un SUV offrant des performances robustes et un design élégant.', 700, 'Essence', 'Suspension adaptative'),
(122, 'Porsche', 'Taycan', 'porsche_taycan.jpg', 'Électrique', 761, 1050, 2.8, 260, 2220, 'Transmission directe', '0000-00-00 00:00:00', 150000, 'La Porsche Taycan est une supercar électrique offrant des performances exceptionnelles et une technologie avancée.', 450, 'Électrique', 'Suspension adaptative'),
(123, 'Zenvo', 'ST1', 'zenvo_st1.jpg', 'V8 7.0L biturbo', 1104, 1430, 2.6, 375, 1680, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 1200000, 'La Zenvo ST1 est une hypercar offrant des performances exceptionnelles et un design unique.', 600, 'Essence', 'Suspension sportive'),
(124, 'Zenvo', 'TS1 GT', 'zenvo_ts1_gt.jpg', 'V8 5.8L biturbo', 1163, 1100, 2.8, 375, 1580, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 1500000, 'La Zenvo TS1 GT est une version améliorée de la ST1, offrant des performances encore plus impressionnantes.', 650, 'Essence', 'Suspension sportive'),
(125, 'Zenvo', 'TSR-S', 'zenvo_tsr_s.jpg', 'V8 5.8L biturbo', 1177, 1100, 2.8, 325, 1495, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 1600000, 'La Zenvo TSR-S est une hypercar offrant des performances exceptionnelles et un design aérodynamique.', 650, 'Essence', 'Suspension sportive'),
(126, 'Zenvo', 'Aurora', 'zenvo_aurora.jpg', 'V8 5.8L biturbo', 1250, 1100, 2.7, 390, 1500, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 2000000, 'La Zenvo Aurora est la dernière hypercar de Zenvo, offrant des performances exceptionnelles et un design unique.', 650, 'Essence', 'Suspension sportive'),
(127, 'Zenvo', 'Aurora Tur', 'zenvo_aurora_tur.jpg', 'V8 5.8L biturbo', 1250, 1100, 2.7, 390, 1500, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 2000000, 'La Zenvo Aurora est la dernière hypercar de Zenvo, offrant des performances exceptionnelles et un design unique.', 650, 'Essence', 'Suspension sportive'),
(128, 'De Tomaso', 'Pantera', 'de_tomaso_pantera.jpg', 'V8 5.7L', 330, 475, 5.5, 260, 1300, 'Boîte manuelle 5 rapports', '0000-00-00 00:00:00', 150000, 'La De Tomaso Pantera est une supercar classique offrant des performances robustes et un design emblématique.', 600, 'Essence', 'Suspension sportive'),
(129, 'De Tomaso', 'Mangusta', 'de_tomaso_mangusta.jpg', 'V8 4.6L', 305, 400, 5, 250, 1250, 'Boîte manuelle 5 rapports', '0000-00-00 00:00:00', 120000, 'La De Tomaso Mangusta est une supercar classique offrant des performances robustes et un design unique.', 600, 'Essence', 'Suspension sportive'),
(130, 'De Tomaso', 'Guarà', 'de_tomaso_guara.jpg', 'V8 4.6L', 304, 400, 5, 270, 1200, 'Boîte manuelle 6 rapports', '0000-00-00 00:00:00', 100000, 'La De Tomaso Guarà est une supercar offrant des performances robustes et un design élégant.', 600, 'Essence', 'Suspension sportive'),
(131, 'De Tomaso', 'P72', 'de_tomaso_p72.jpg', 'V8 5.0L', 700, 850, 2.9, 340, 1280, 'Boîte manuelle 6 rapports', '0000-00-00 00:00:00', 850000, 'La De Tomaso P72 est une supercar moderne offrant des performances exceptionnelles et un design unique.', 600, 'Essence', 'Suspension sportive'),
(132, 'De Tomaso', 'P900', 'de_tomaso_p900.jpg', 'V8 6.3L', 630, 664, 3.3, 330, 1300, 'Boîte manuelle 6 rapports', '0000-00-00 00:00:00', 350000, 'La De Tomaso P900 est une supercar offrant des performances robustes et un design unique.', 600, 'Essence', 'Suspension sportive'),
(133, 'McLaren', 'Solus GT', 'mclaren_solus_gt.jpg', 'V10 5.2L', 830, 650, 2.5, 322, 1400, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 3000000, 'La McLaren Solus GT est une hypercar offrant des performances exceptionnelles et un design unique.', 600, 'Essence', 'Suspension sportive'),
(134, 'McLaren', 'F1', 'mclaren_f1.jpg', 'V12 6.1L', 627, 651, 3.2, 391, 1140, 'Boîte manuelle 6 rapports', '0000-00-00 00:00:00', 1000000, 'La McLaren F1 est une hypercar emblématique offrant des performances exceptionnelles et un design unique.', 600, 'Essence', 'Suspension sportive'),
(135, 'McLaren', 'P1', 'mclaren_p1.jpg', 'V8 3.8L biturbo hybride', 903, 980, 2.8, 350, 1490, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 1200000, 'La McLaren P1 est une hypercar hybride offrant des performances exceptionnelles et une technologie avancée.', 500, 'Hybride', 'Suspension sportive'),
(136, 'McLaren', '720S', 'mclaren_720s.jpg', 'V8 4.0L biturbo', 720, 770, 2.9, 341, 1419, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 280000, 'La McLaren 720S est une supercar offrant des performances exceptionnelles et un design élégant.', 650, 'Essence', 'Suspension sportive'),
(137, 'McLaren', 'Senna', 'mclaren_senna.jpg', 'V8 4.0L biturbo', 800, 800, 2.8, 340, 1309, 'Boîte séquentielle 7 rapports', '0000-00-00 00:00:00', 1000000, 'La McLaren Senna est une supercar offrant des performances exceptionnelles et un design unique.', 600, 'Essence', 'Suspension sportive'),
(162, 'Hennessey', 'Venom F5', 'hennessey_venom_f5.jpg', 'V8 6.6L Twin-Turbo Fury', 1842, 1617, 2.6, 482, 1360, 'automatique', '2021', 2500000, 'Hypercar américaine ultra légère avec un V8 bi-turbo, conçue pour battre des records de vitesse.', 500, 'essence', 'sport'),
(163, 'Hennessey', 'Venom GT', 'hennessey_venom_gt.jpg', 'V8 7.0L Twin-Turbo', 1244, 1566, 2.7, 435, 1244, 'manuelle', '2010', 1200000, 'Supercar dérivée de la Lotus Elise, optimisée pour la vitesse avec un châssis allégé et un moteur puissant.', 500, 'essence', 'Sport'),
(164, 'Hennessey', 'Exorcist Camaro ZL1', 'hennessey_exorcist_Camaro_zl1.jpg', 'V8 6.2L Supercharged', 1014, 1197, 2.1, 350, 1790, 'manuelle', '2018', 135000, 'Muscle car basée sur la Camaro ZL1, modifiée pour surpasser la Dodge Demon avec plus de 1000 chevaux.', 400, 'essence', 'Sport'),
(165, 'Hennessey', 'Mammoth 1000 TRX', 'hennessey__mammoth_1000_trx.jpg', 'V8 6.2L Supercharged Hellcat', 1012, 1314, 3.2, 250, 2880, 'automatique', '2021', 150000, 'Pickup ultra-puissant basé sur le RAM TRX, préparé pour offrir des performances extrêmes en tout-terrain.', 600, 'essence', 'Off-Road'),
(166, 'Hennessey', 'H700 Corvette C8', 'hennessey_h700_corvette_c8.jpg', 'V8 6.2L Supercharged', 700, 865, 2.9, 320, 1530, 'automatique', '2023', 50000, 'Version boostée de la Corvette C8, équipée d\'un compresseur pour augmenter ses performances de manière spectaculaire.', 450, 'essence', 'Sport'),
(167, 'Lotus', 'Evija', 'lotus_evija.jpg', 'Électrique, 4 moteurs', 2000, 1700, 2, 320, 1680, 'automatique', '2023', 2200000, 'L\'Evija est une hypercar 100% électrique avec des performances extrêmes et une aérodynamique de pointe.', 400, 'électrique', 'Sport'),
(168, 'Lotus', 'Emira', 'lotus_emira.jpg', 'V6 3.5L Supercharged', 400, 420, 4.3, 290, 1405, 'semi-automatique', '2022', 100000, 'Dernière Lotus à moteur thermique, l\'Emira allie élégance, sportivité et maniabilité exceptionnelle.', 500, 'essence', 'Sport'),
(169, 'Lotus', 'Eletre', 'lotus_eletre.jpg', 'Électrique, 2 moteurs', 905, 985, 2.9, 260, 1400, 'automatique', '2023', 120000, 'Premier SUV électrique de Lotus, l\'Eletre combine luxe et performances pour une conduite', 600, 'électrique', 'Confort/Sport'),
(170, 'Lotus', 'Exige Final Edition', 'lotus_exige_final_edition.jpg', 'V6 3.5L Supercharged', 430, 440, 3.7, 290, 1175, 'manuelle', '2021', 110000, 'La version ultime de la mythique Exige, axée sur la légèreté et la performance pure.', 400, 'essence', 'Sport'),
(171, 'Lotus', 'Elise Final Edition', 'lotus_elise_final_edition.jpg', '4-cyl. 1.8L Supercharged', 240, 244, 4.1, 237, 922, 'manuelle', '2021', 60000, 'L\'ultime édition de l\'iconique Lotus Elise, une voiture ultra légère pour un plaisir de conduite maximal.', 500, 'essence', 'Sport'),
(172, 'Audi', 'TT 1.8T', 'audi_tt1.8t.jpg', '1.8L Turbo 4-cyl', 180, 235, 7.9, 226, 1260, 'manuelle', '1999', 35000, 'Modèle de base avec un moteur turbo offrant un bon compromis entre performance et économie.', 700, 'essence', 'Sport'),
(173, 'test', 'test', 'test', 'test', 50, 50, 2, 50, 500, 'manuelle', '2010', 5000, 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttest', 500, 'essence', '50');

-- --------------------------------------------------------

--
-- Structure de la table `details_voitures_categories_voitures`
--

DROP TABLE IF EXISTS `details_voitures_categories_voitures`;
CREATE TABLE IF NOT EXISTS `details_voitures_categories_voitures` (
  `details_voitures_id` int NOT NULL,
  `categories_voitures_id` int NOT NULL,
  PRIMARY KEY (`details_voitures_id`,`categories_voitures_id`),
  KEY `IDX_13517476A7BE4CE0` (`details_voitures_id`),
  KEY `IDX_13517476C2BE606D` (`categories_voitures_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `details_voitures_categories_voitures`
--

INSERT INTO `details_voitures_categories_voitures` (`details_voitures_id`, `categories_voitures_id`) VALUES
(173, 9),
(173, 11);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250213151846', '2025-02-13 15:19:01', 31),
('DoctrineMigrations\\Version20250219130008', '2025-02-19 13:00:24', 73),
('DoctrineMigrations\\Version20250219131924', '2025-02-19 13:19:54', 159),
('DoctrineMigrations\\Version20250220110624', '2025-02-20 11:06:36', 100);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`) VALUES
(1, 'Admin', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$2y$13$Ro02se9eaSP/eV4dQoPCPOYFIroD3EidTHpwGeiz4eY6jJ4qG05bG');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `details_voitures_categories_voitures`
--
ALTER TABLE `details_voitures_categories_voitures`
  ADD CONSTRAINT `FK_13517476A7BE4CE0` FOREIGN KEY (`details_voitures_id`) REFERENCES `details_voitures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_13517476C2BE606D` FOREIGN KEY (`categories_voitures_id`) REFERENCES `categories_voitures` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
