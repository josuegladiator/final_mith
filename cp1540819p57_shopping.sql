-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 28 fév. 2021 à 17:12
-- Version du serveur :  10.3.27-MariaDB-cll-lve
-- Version de PHP : 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cp1540819p57_shopping`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'FOOD DELIVERY/IBIRYO BIHIYE', 'foods from near restaurant', '2020-12-28 15:55:41', '29-01-2021 03:18:45 PM'),
(10, 'IBYO GUTEKA', 'all products from local market', '2021-01-09 06:15:16', '19-01-2021 07:55:04 PM'),
(11, 'Fashion', 'well dressing ', '2021-01-09 11:59:12', '29-01-2021 03:23:34 PM'),
(12, 'AGAKIRIRO', 'IBIKORESHO BITANDUKNAYE BYO MU NZU', '2021-01-20 14:06:20', '05-02-2021 01:33:18 PM'),
(13, 'BEVERAGES/ IBYO KUNYWA', 'Hano uhasanga ibyo kunywa bidasembuye ', '2021-01-25 09:08:52', '29-01-2021 03:26:22 PM'),
(15, 'RENT AND SELL/ Gukodesha no Kugura ', 'All things , houses, Cars, parcel  /Turanga inzu , ibibanza , imodoka , bikodeshwa cyangwa bigurishwa .', '2021-02-05 08:02:42', '05-02-2021 01:37:28 PM');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(65, 24, '172', 1, '2021-02-01 07:15:08', 'Nyanza', 'Delivered'),
(66, 24, '190', 1, '2021-02-01 07:15:08', 'Nyanza', 'Delivered'),
(67, 32, '172', 2, '2021-02-24 14:26:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ordertempo`
--

CREATE TABLE `ordertempo` (
  `id` int(11) NOT NULL,
  `sessionid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `val34` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ordertempo`
--

INSERT INTO `ordertempo` (`id`, `sessionid`, `qty`, `val34`, `status`) VALUES
(4, 7, 39, 1, NULL),
(5, 20, 53, 1, NULL),
(6, 20, 60, 1, NULL),
(7, 7, 53, 1, NULL),
(8, 7, 53, 1, NULL),
(9, 7, 96, 1, NULL),
(10, 7, 96, 6, NULL),
(11, 22, 32, 1, NULL),
(12, 7, 55, 10, NULL),
(13, 6, 55, 10, NULL),
(14, 6, 55, 10, NULL),
(15, 6, 154, 2, NULL),
(16, 6, 154, 2, NULL),
(17, 6, 154, 3, NULL),
(18, 6, 128, 2, NULL),
(19, 6, 128, 2, NULL),
(20, 6, 55, 10, NULL),
(21, 6, 192, 4, NULL),
(22, 6, 192, 4, NULL),
(23, 23, 63, 3, NULL),
(24, 24, 172, 1, NULL),
(25, 24, 190, 1, NULL),
(26, 25, 53, 1, NULL),
(27, 25, 194, 10, NULL),
(28, 24, 40, 1, NULL),
(29, 26, 74, 1, NULL),
(30, 26, 114, 1, NULL),
(31, 26, 116, 1, NULL),
(32, 26, 74, 1, NULL),
(33, 26, 114, 1, NULL),
(34, 26, 116, 1, NULL),
(35, 26, 74, 1, NULL),
(36, 26, 114, 1, NULL),
(37, 26, 116, 1, NULL),
(38, 26, 74, 1, NULL),
(39, 26, 114, 1, NULL),
(40, 26, 116, 1, NULL),
(41, 26, 74, 1, NULL),
(42, 26, 116, 1, NULL),
(43, 27, 32, 1, NULL),
(44, 29, 34, 1, NULL),
(45, 29, 122, 1, NULL),
(46, 29, 34, 1, NULL),
(47, 29, 122, 1, NULL),
(48, 29, 34, 1, NULL),
(49, 29, 122, 1, NULL),
(50, 7, 34, 1, NULL),
(51, 7, 130, 1, NULL),
(52, 7, 34, 1, NULL),
(53, 7, 127, 1, NULL),
(54, 7, 130, 1, NULL),
(55, 7, 53, 2, NULL),
(56, 7, 58, 6, NULL),
(57, 31, 184, 1, NULL),
(58, 32, 172, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 38, 'Delivered', 'finish', '2021-01-13 12:16:14'),
(6, 65, 'Delivered', 'delivered but lately and one error at admin panel', '2021-02-01 10:43:58'),
(7, 66, 'Delivered', 'delivered but lately and error on admin panel', '2021-02-01 10:44:36');

-- --------------------------------------------------------

--
-- Structure de la table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 7, 36, 'Full breakfast', 'Qarah group', 4000, 4000, 'continental breakfast,cereals,omelets,fruits,soup', 'English bREAKFAST.jpg', 'English bREAKFAST.jpg', 'English bREAKFAST.jpg', 300, 'In Stock', '2021-01-04 16:02:32', NULL),
(32, 7, 36, 'Plain omolette', 'Qarah group', 1500, 2000, 'plain omolette with bread', 'plain omolette.jpg', 'Plain Omollette Recipe.jpg', 'Plain Omollette Recipe.jpg', 300, 'In Stock', '2021-01-06 15:09:02', NULL),
(33, 7, 36, 'Special omolette', 'Qarah group', 2000, 2500, 'special omolette', 'Special Omolette.jpg', 'omellete special.jpg', 'omellete special.jpg', 300, 'In Stock', '2021-01-06 15:11:17', NULL),
(34, 7, 32, 'Fish Brochette simple', 'qarah group', 2000, 2000, 'brochette de poisson simple', 'fish brochette.jpg', 'Fish brochette simple.jpg', 'Fish brochette simple.jpg', 300, 'In Stock', '2021-01-06 15:16:50', NULL),
(35, 7, 32, 'Fish Brochette accompagnied', 'qarah group', 3000, 3000, 'brochette de poisson garnie', 'brochette poisson accompagne.jpg', 'fish brochette accompanied 2.jpg', 'fish brochette accompanied 2.jpg', 300, 'In Stock', '2021-01-06 15:21:53', NULL),
(37, 7, 36, 'Spanish omolette', 'qarah group', 3500, 4000, 'spanish omolette with bread', 'spanish omolette.jpeg', '93765438.jpg', '93765438.jpg', 300, 'In Stock', '2021-01-06 15:43:11', NULL),
(38, 10, 21, 'Beef Masala', 'Qarah Group', 1200, 2000, '<i>Ibirungo byiza cyane</i>', 'Beef Masala.jpg', 'Beef Masala.jpg', '', 300, 'In Stock', '2021-01-09 06:28:07', NULL),
(39, 10, 21, 'Celery, Umufungo', 'Qarah Group', 300, 350, 'cereri nziza Cyane .', 'Celery.jpg', 'Celery.jpg', '', 200, 'In Stock', '2021-01-09 06:29:52', NULL),
(40, 10, 21, 'Ibitunguru , 1Kg', 'Qarah Group', 400, 450, 'ibitunguru&nbsp; &nbsp;,&nbsp;&nbsp;<br><div><br></div><div><br></div>', 'ibitunguru.png', 'ibitunguru.png', 'ibitunguru.png', 200, 'In Stock', '2021-01-09 06:40:21', NULL),
(42, 10, 21, 'Maggy,  Agapaki', 'Qarah Group', 1500, 2000, 'Maggy<br>', 'Maggy.jpg', 'Maggy.jpg', 'Maggy.jpg', 300, 'In Stock', '2021-01-09 06:52:03', NULL),
(43, 10, 21, 'Pilau masala', 'Qarah Group', 1200, 1500, 'Pilau masala&nbsp; nziza&nbsp;<br>', 'Pilau masala.jpg', 'Pilau masala.jpg', 'Pilau masala.jpg', 300, 'In Stock', '2021-01-09 06:54:52', NULL),
(45, 10, 21, 'Soya sauce', 'Qarah Group', 2500, 2500, 'soya sauce iryoshye', 'soya sauce.jpg', 'soya sauce.jpg', 'soya sauce.jpg', 300, 'In Stock', '2021-01-09 07:02:23', NULL),
(47, 10, 22, 'Amasaka , Mironko ', 'Qarah Group', 700, 750, 'amasaka&nbsp;<br>', 'Amasaka.jpeg', 'amasaka.jpg', 'amasaka.jpg', 200, 'In Stock', '2021-01-09 07:13:42', NULL),
(48, 10, 22, 'Amashaza Mironko', 'Qarah Group', 1500, 1800, 'amashaza-mironko<br>', 'peas-1.jpg', 'amashaza mironko.jpg', 'amashaza mironko.jpg', 200, 'In Stock', '2021-01-09 07:15:22', NULL),
(51, 10, 22, 'Amateke, Umufungo', 'Qarah Group', 500, 600, 'amateke meza&nbsp;<br>', 'amateke.jpg', 'amateke.jpg', 'amateke.jpg', 200, 'In Stock', '2021-01-09 07:20:40', NULL),
(52, 10, 22, 'Bwayisi,Umufungo', 'Qarah Group', 600, 700, 'Bwayisi&nbsp;<br>', 'Bwayisi.jpg', 'Bwayisi.jpg', 'Bwayisi.jpg', 200, 'In Stock', '2021-01-09 07:22:11', NULL),
(53, 10, 22, 'Ibijumba . umufungo ', 'Qarah Group', 500, 550, 'ibijumba byiza', 'ibijumba.jpg', 'ibijumba.jpg', 'ibijumba.jpg', 200, 'In Stock', '2021-01-09 07:35:14', NULL),
(54, 10, 22, 'Ibirayi bisanzwe  1 kg', 'Qarah Group', 230, 260, 'ibirayi bisanzwe kandi biryoshye<br>', 'ibirayi bisanzwe.jpg', 'ibirayi bisanzwe.jpg', 'ibirayi bisanzwe.jpg', 200, 'In Stock', '2021-01-09 10:01:23', NULL),
(55, 10, 22, 'Ibirayi bya kinigi . 1 Kg', 'Qarah Group', 300, 350, 'ibirayi bya kinigi kandi biryoshye<br>', 'ibirayi kinigi.jpg', 'ibirayi bya kinigi.jpg', 'ibirayi bya kinigi.jpg', 200, 'In Stock', '2021-01-09 10:12:34', NULL),
(57, 10, 22, 'Ibishyimbo  Mironko ', 'Qarah Group', 700, 750, 'ibishyimbo bimeze neza !!!<br>', 'ibishyimbo.jpg', 'ibishyimbo.jpg', '', 200, 'In Stock', '2021-01-09 10:15:32', NULL),
(58, 10, 22, 'Igitoki (Inyamunyo) 1kg', 'Qarah Group', 250, 300, 'Igitoki (Inyamunyu)&nbsp;&nbsp;<br>', 'igitoki.jpg', 'Igitoki (Inyamunyo).jpg', '', 200, 'In Stock', '2021-01-09 10:17:27', NULL),
(59, 10, 22, 'imitonore,Mironko ', 'Qarah Group', 600, 700, 'imitonore myiza<br>', 'imitonore.jpg', 'imitonore.jpg', '', 200, 'In Stock', '2021-01-09 10:18:36', NULL),
(60, 10, 22, 'Imyumbati , Umufungo ', 'Qarah Group', 500, 600, 'imyumbati iryoshye<br>', 'imyumbati.jpg', 'imyumbati.jpg', 'imyumbati.jpg', 200, 'In Stock', '2021-01-09 10:19:50', NULL),
(62, 10, 23, 'Carottes   , 1 Kg', 'Qarah Group', 400, 500, 'carottes nziza<br>', 'carottes.jpg', 'carottes.jpg', 'carottes.jpg', 200, 'In Stock', '2021-01-09 10:24:03', NULL),
(63, 10, 23, 'Amashu (Ishu 1), Piece 1', 'Qarah Group', 200, 300, 'choux nziza cyane<br>', 'choux.jpg', 'choux.jpg', 'choux.jpg', 200, 'In Stock', '2021-01-09 10:25:34', NULL),
(64, 10, 23, 'choux-fleur . (imwe)/ 1 piece', 'Qarah Group', 700, 800, 'choux-fleur<br>', 'variete-choux_fleur.png', 'variete-choux_fleur.png', 'variete-choux_fleur.png', 200, 'In Stock', '2021-01-09 10:26:50', NULL),
(65, 10, 23, 'Cocomble , 1 Kg', 'Qarah Group', 800, 900, 'cocomble<br>', 'cocomble.png', 'cocomble.png', 'cocomble.png', 200, 'In Stock', '2021-01-09 10:28:48', NULL),
(66, 10, 23, 'Courgette , 1Kg', 'Qarah Group', 500, 600, 'cougette&nbsp;<br>', 'cougette.jpg', 'cougette.jpg', '', 200, 'In Stock', '2021-01-09 10:29:57', NULL),
(67, 10, 23, 'Ibihaza (Igihaza 1)', 'Qarah Group', 1000, 1200, 'ibihaza byiza<br>', 'ibihaza.jpg', 'ibihaza.jpg', '', 200, 'In Stock', '2021-01-09 10:31:14', NULL),
(68, 10, 23, 'Imboga Dodo (Umufungo 1)', 'Qarah Group', 200, 200, 'imboga Dodo ziryoshye<br>', 'dodo.jpg', 'imboga Dodo.jpg', 'imboga Dodo.jpg', 200, 'In Stock', '2021-01-09 10:32:24', NULL),
(69, 10, 23, 'Imiteja , 1Kg', 'Qarah Group', 500, 600, 'imiteja myiza kandi iryoshye<br>', 'imiteja.jpg', 'imiteja.jpg', '', 200, 'In Stock', '2021-01-09 10:33:42', NULL),
(70, 10, 23, 'Inyanya (Akadobo)', 'Qarah Group', 800, 500, 'inyanya&nbsp; zimeze neza<br>', 'inyanya 2.jpg', 'inyanya 2.jpg', 'inyanya 2.jpg', 200, 'In Stock', '2021-01-09 10:35:06', NULL),
(72, 10, 23, 'Isombe (1Kg)', 'Qarah Group', 500, 500, 'Iyi sombe iba itarimo ibirungo ', 'isombe.jpg', 'isombe.jpg', '', 200, 'In Stock', '2021-01-09 10:50:04', NULL),
(74, 10, 24, 'Imineke ya Kamara (Iseri 1)', 'Qarah Group', 700, 800, 'imineke imeze neza<br>', 'imineke ya kamara.jpg', 'imineke.jpg', '', 200, 'In Stock', '2021-01-09 10:53:05', NULL),
(75, 10, 24, 'Imyembe (Umwembe 1)', 'Qarah Group', 350, 400, 'imyembe imeze neza<br>', 'imyembe.jpg', 'imyembe.jpg', 'imyembe.jpg', 200, 'In Stock', '2021-01-09 10:54:25', NULL),
(76, 10, 24, 'Pomme(imwe)', 'Qarah Group', 350, 450, 'pomme nziza cyane<br>', 'pomme.jpg', 'pomme.jpg', 'pomme.jpg', 200, 'In Stock', '2021-01-09 10:55:43', NULL),
(77, 10, 25, 'Kinazi Cassava 2kg ', 'Qarah Group', 2000, 2000, 'cassava2<br>', 'cassava2.png', 'cassava2.png', '', 300, 'In Stock', '2021-01-09 11:04:51', NULL),
(79, 10, 25, 'Ubuto / Gorden Oil (5L)', 'Qarah Group', 9000, 9500, 'Gorden Oil<br>', 'Gorden Oil.jpg', 'Gorden Oil.jpg', '', 300, 'In Stock', '2021-01-09 11:07:17', NULL),
(80, 10, 25, 'Minimex 25 kg', 'Qarah Group', 16000, 16200, 'minimex<br>', 'minimex.jpeg', 'minimex.jpeg', '', 300, 'In Stock', '2021-01-09 11:08:17', NULL),
(81, 10, 25, 'Nootri Mama , 1 Kg', 'Qarah Group', 2800, 3000, 'nutry mama<br>', 'nutry mama.jpg', 'nutry mama.jpg', '', 300, 'In Stock', '2021-01-09 11:09:21', NULL),
(82, 10, 25, 'Shisha Kibondo 1Kg', 'Qarah Group', 2000, 2000, 'shisha kibondo<br>', 'shisha kibondo.jpg', 'shisha kibondo.jpg', '', 300, 'In Stock', '2021-01-09 11:10:27', NULL),
(114, 10, 24, 'Amatunda , 1kg', 'Qarah Group ', 1200, 1600, '', 'amatunda.jpg', 'amatunda.jpg', 'amatunda.jpg', 300, 'In Stock', '2021-01-19 11:25:47', NULL),
(116, 10, 24, 'Ibinyomoro (1Kg)', 'Qarah Group ', 1200, 0, 'Ibinyomoro byiza cyane kandi ubwoko bwose ', 'IBINYOMORO.png', 'ibinyomoro-.jpg', '', 300, 'In Stock', '2021-01-19 11:27:35', NULL),
(117, 10, 24, 'Wotameloni , 1 Kg', 'Qarah Group ', 1000, 0, '', 'watermelon.jpg', 'watermeloni.jpg', '', 200, 'In Stock', '2021-01-19 11:29:39', NULL),
(118, 10, 24, 'Inanas (imwe)', 'Qarah Group ', 500, 0, '', 'inanasi 2.png', 'ananas-2.jpg', '', 200, 'In Stock', '2021-01-19 11:32:34', NULL),
(119, 10, 24, 'Indimu , 1Kg', 'Qarah Group ', 1800, 0, '', 'Indimu_1_kg.jpg', 'indimu.png', '', 300, 'In Stock', '2021-01-19 11:34:58', NULL),
(120, 10, 24, 'Betrave , (3piece-5piece)', 'Qarah Group ', 500, 0, 'Betrave ni nziza , tuguha hagati( 3-5)', 'betteraves.jpg', 'betrave.jpg', '', 200, 'In Stock', '2021-01-19 11:36:16', NULL),
(121, 7, 32, 'RABBIT/URUKWAVU', 'Qarah Group ', 5300, 6500, 'Urukwavu ruraryoha cyane ', 'Urukwavu 2.png', 'urukwavu.png', '', 300, 'In Stock', '2021-01-19 11:50:59', NULL),
(122, 7, 32, 'Chips', 'Qarah Group ', 1500, 0, '', 'chips 2.jpg', 'chips 1.jpg', '', 300, 'In Stock', '2021-01-19 11:52:33', NULL),
(123, 10, 25, 'Mayonaise', 'Qarah Group ', 5200, 6000, 'Mayonnaise  ni nziza ', 'mayonaise.jpg', 'mayonaise.jpg', '', 300, 'In Stock', '2021-01-19 13:24:32', NULL),
(125, 10, 23, 'Intoryi', 'Qarah Group', 400, 500, '', 'intoryi.jpg', 'hqdefault.jpg', '', 200, 'In Stock', '2021-01-19 19:40:38', NULL),
(126, 11, 37, 'Godas', 'qarah group', 17000, 18000, 'Godasi nziza cyane', 'IMG_0598-compressed.jpg', 'IMG_0596-compressed.jpg', 'IMG_0599-compressed.jpg', 300, 'In Stock', '2021-01-19 19:52:01', NULL),
(128, 11, 34, 'T-shirt ', 'Qarah group', 5000, 5500, 'Size : M', 'Optimized-IMG_0609.png', 'Optimized-IMG_0609.png', 'Optimized-IMG_0609.png', 300, 'In Stock', '2021-01-19 20:01:48', NULL),
(129, 7, 32, 'whole grilled fish', 'Qarah group', 12000, 13000, 'whole grilled fish', 'whole grilled fish.jpg', 'whole grilled fish.jpg', 'whole grilled fish.jpg', 300, 'In Stock', '2021-01-20 11:25:12', NULL),
(130, 7, 32, 'poulet complet(Inkoko Yose)', 'Qarah group', 8000, 10000, 'inkoko yose iteguye neza cyane', 'poulet.jpg', 'poulet.jpg', 'poulet.jpg', 300, 'In Stock', '2021-01-20 11:42:50', NULL),
(131, 7, 32, '1/2 Poulet(icyakabiri cyinkoko yose)', 'Qarah group', 4000, 4500, 'igice cyinkoko', 'demi-poulet.jpg', 'demi-poulet.jpg', 'demi-poulet.jpg', 300, 'In Stock', '2021-01-20 11:54:12', NULL),
(132, 7, 32, '1/4 de poulet(icyakane cyinkoko yose)', 'Qarah group', 2000, 2500, 'icyakane cyinkokp yose)', 'quart de poulet.jpeg', 'quart de poulet.jpeg', 'quart de poulet.jpeg', 300, 'In Stock', '2021-01-20 12:02:18', NULL),
(133, 11, 34, 'Pantalon size:32-38', 'qarah group', 12000, 13000, 'ipantaro yumukara', 'IMG_0613-compressed.jpg', 'IMG_0614-compressed.jpg', '', 300, 'In Stock', '2021-01-20 13:17:05', NULL),
(134, 11, 34, 'Pantalon size:32-38', 'Qarah group', 12000, 13000, 'pantaro nziza cyane', 'Optimized-IMG_0623.png', 'Optimized-IMG_0631.png', '', 300, 'In Stock', '2021-01-20 13:21:56', NULL),
(135, 11, 34, 'Ishati size:XL', 'Qarah group', 4000, 5000, 'ishati ifite size ya XL', 'Optimized-IMG_0610.png', 'Optimized-IMG_0610.png', '', 300, 'In Stock', '2021-01-20 13:38:21', NULL),
(136, 12, 38, 'salon', 'Qarah group', 500000, 550000, 'Salon nziza cyane', 'resized salon1.jpeg', 'WhatsApp Image 2021-01-20 at 13.57.54.jpeg', 'WhatsApp Image 2021-01-20 at 13.57.54.jpeg', 20000, 'In Stock', '2021-01-20 14:13:33', NULL),
(137, 12, 38, 'salon', 'Qarah group', 200000, 250000, 'Salon nziza Cyane', 'WhatsApp Image 2021-01-20 at 13.59.34.jpeg', 'WhatsApp Image 2021-01-20 at 13.59.34.jpeg', 'WhatsApp Image 2021-01-20 at 13.59.34.jpeg', 20000, 'In Stock', '2021-01-20 14:16:17', NULL),
(138, 10, 25, 'Umunyu wa Nezo ', 'Qarah Group', 1600, 1800, '', 'nezo.png', 'nezo.png', '', 300, 'In Stock', '2021-01-20 14:22:52', NULL),
(139, 10, 25, 'Umunyu 500 g,Salt 500g, sel 500g', 'Qarah Group', 250, 300, '', 'umunyu wa Habali.jpg', 'umunyu wa Habali.jpg', '', 200, 'In Stock', '2021-01-20 14:24:47', NULL),
(140, 12, 38, 'Akabati', 'Qarah group', 250000, 300000, 'Akabati keza cyane', 'WhatsApp Image 2021-01-20 at 13.58.22.jpeg', 'WhatsApp Image 2021-01-20 at 13.58.22.jpeg', 'WhatsApp Image 2021-01-20 at 13.58.22.jpeg', 20000, 'In Stock', '2021-01-20 14:29:07', NULL),
(141, 12, 38, 'Salle A manger', 'Qarah group', 150000, 200000, 'Salle A manger', 'WhatsApp Image 2021-01-20 at 13.56.16.jpeg', 'WhatsApp Image 2021-01-20 at 13.56.16.jpeg', '', 20000, 'In Stock', '2021-01-20 14:34:18', NULL),
(142, 10, 25, 'Sosoma 500g', 'Qarah Group', 1200, 1300, 'Sosoma numero 1 ,500g ni nziza cyane ', 'Sosoma.png', 'Sosoma.png', '', 300, 'In Stock', '2021-01-20 14:37:30', NULL),
(143, 12, 38, 'Salle A manger', 'Qarah group', 350000, 400000, 'Salle A manger', 'WhatsApp Image 2021-01-20 at 13.56.59.jpeg', 'WhatsApp Image 2021-01-20 at 13.56.59.jpeg', '', 20000, 'In Stock', '2021-01-20 14:37:33', NULL),
(144, 10, 25, 'Sosoma  1kg', 'Qarah Group', 1800, 2000, 'Sosoma numero 2 .', 'sosoma n2.png', 'sosoma n2.png', '', 300, 'In Stock', '2021-01-20 14:40:32', NULL),
(145, 12, 39, 'Igitanda', 'Qarah group', 100000, 120000, 'Igitanda kininiya kandi cyiza', 'WhatsApp Image 2021-01-20 at 13.59.00.jpeg', 'WhatsApp Image 2021-01-20 at 13.59.00.jpeg', 'WhatsApp Image 2021-01-20 at 13.59.00.jpeg', 20000, 'In Stock', '2021-01-20 14:42:23', NULL),
(146, 10, 25, 'Umuceli paskistan 25 kg', 'Qarah Group', 24700, 25000, 'Umuceli wa pakstan ', 'pakistan rice.jpg', 'pakistan rice.jpg', '', 300, 'In Stock', '2021-01-20 15:04:38', NULL),
(147, 10, 25, 'Umuceli wa Tailand  , 25 Kg', 'Qarah Group', 30000, 30500, 'Umuceli wa Tailand ', 'Tailand rice.jpg', 'Tailand rice.jpg', '', 300, 'In Stock', '2021-01-20 15:07:08', NULL),
(148, 10, 25, 'Umuceli wa Kigori 25 kg', 'Qarah Group', 16500, 17000, 'Umuceli wa kigori uboneka i nyanza ', 'Kigoli.jpg', 'Kigoli.jpg', '', 300, 'In Stock', '2021-01-20 15:17:57', NULL),
(149, 10, 25, 'Umuceli wa kigoli ndende , 25 kg ', 'Qarah Group', 18700, 19000, 'Umuceli wa Kigali ndende uboneka i Nyanza ', 'Gasoro Riz.jpg', 'Gasoro Riz.jpg', '', 300, 'In Stock', '2021-01-20 15:24:46', NULL),
(150, 7, 32, 'Akabenzi (1Kg )', 'Qarah Group', 5300, 5500, 'Akabenzi karyoshye', 'akabenzi.jpg', 'akabenzi.jpg', '', 300, 'In Stock', '2021-01-20 18:22:55', NULL),
(151, 10, 23, 'Isombe (1Kg)', 'Qarah group', 800, 900, 'Iyi sombe iba irimo ibirungo ', 'unnamed.jpg', 'unnamed.jpg', '', 200, 'In Stock', '2021-01-21 07:03:47', NULL),
(152, 10, 24, 'Imineke Ya Golomisheri(umuneke 1)', 'Qarah group', 110, 200, 'Iyi mineke ni iya golomisheri ', 'imineke ya Gro micheri.jpg', 'imineke ya Gro micheri.jpg', '', 200, 'In Stock', '2021-01-21 07:46:05', NULL),
(154, 10, 40, 'Umufupa  1 kg', 'Qarah group', 1200, 1500, 'umufupa uriho inyama ', 'imifupa.jpg', 'umufupa.jpg', '', 300, 'In Stock', '2021-01-21 09:00:55', NULL),
(155, 10, 25, 'Fish Masala', 'Qarah Group ', 1200, 1500, 'Fish masala ', 'Fish-Masala (1).png', 'Fish-Masala (1).png', '', 300, 'In Stock', '2021-01-21 09:42:15', NULL),
(156, 10, 25, 'Chicken Masala', 'Qarah Group ', 1200, 0, 'chicken masala', 'chicken-masala-powder-500x500.jpg', 'chicken-masala-powder-500x500.jpg', '', 300, 'In Stock', '2021-01-21 09:43:30', NULL),
(158, 7, 32, 'Ikirayi ( cyokeje)', 'Hertage Hotel (LENIMA Ltd)', 300, 350, 'Ikirayi cyokeje neza cyane ', 'ikirayi cyokeje.jpg', 'ikirayi cyokeje.jpg', '', 200, 'In Stock', '2021-01-21 12:16:05', NULL),
(159, 10, 25, 'Umunyu . 1 Kg', 'Qarah group', 400, 450, 'umunyu usanzwe', 'umunyu 1kg.jpeg', 'umunyu 1kg.jpeg', 'umunyu 1kg.jpeg', 200, 'In Stock', '2021-01-21 15:28:47', NULL),
(160, 7, 32, 'Akabenzi , 1/2Kg ', 'Qarah group', 2600, 2800, 'Akabenzi ', 'akabenzi.jpg', 'akabenzi.jpg', '', 300, 'In Stock', '2021-01-24 15:23:43', NULL),
(161, 13, 42, 'Amata (Ikivuguto )Nyanza milk industry (5L)', 'Nyanza Milk Industry', 3000, 4000, 'Amata meza ', 'nyanza milk 5l.jpg', 'nyanza milk 5l.jpg', '', 300, 'In Stock', '2021-01-25 14:31:07', NULL),
(162, 13, 42, 'Amata (Ikivuguto)  (5L) Zirakamwa Dairy (5L)', 'Zirakamwa Dairy ', 3000, 3500, 'Amata meza \r\nNi amata ikivuguto ', 'zirakamwa Diary 5l.png', 'zirakamwa Diary 5l.png', '', 300, 'In Stock', '2021-01-25 14:37:39', NULL),
(163, 13, 42, 'Amata(ikivuguto) 1L', 'Zirakamwa Dairy ', 1000, 1200, 'amata meza ', 'inshyushyu  1l.png', 'inshyushyu  1l.png', '', 200, 'In Stock', '2021-01-25 14:59:42', NULL),
(164, 13, 42, 'Amata (Ikivuguto 3L) ', 'Zirakamwa Dairy ', 2000, 2500, 'Amata meza cyane ,\r\nTubaha amata akurikira:\r\nIkivuguto cyiza kandi gikonje \r\nkuri iki giciro ', 'amata 3l.png', 'amata 3l.png', '', 300, 'In Stock', '2021-01-26 07:18:47', NULL),
(165, 13, 42, 'Amazi (Jibu) 20 L ( udafite icupa)', 'Qarah Group ', 12500, 13000, 'amazi ya Jibu udafite icupa ', 'jibu 20.jpg', 'jibu 20.jpg', '', 300, 'In Stock', '2021-01-26 09:06:31', NULL),
(166, 13, 42, 'Amazi (Jibu) 20 L ( ufite icupa)', 'Jibu branch Nyanza ', 1500, 1700, 'Amazi ya Jibu ufite icupa ', 'jibu 20.jpg', 'jibu 20.jpg', '', 300, 'In Stock', '2021-01-26 09:09:20', NULL),
(167, 13, 42, 'Amazi (Jibu) 18 L ( udafite icupa) ', 'Jibu branch Nyanza ', 10000, 11000, 'Aya mazi ni meza ', 'jibu.png', 'jibu.png', '', 300, 'In Stock', '2021-01-26 09:11:25', NULL),
(168, 13, 42, 'Amazi (Jibu) 20 L ( ufite icupa)', 'Jibu branch Nyanza ', 1700, 1800, 'amazi ya jibu ku muntu uyagura afite icupa ', 'jibu.png', 'jibu.png', '', 300, 'In Stock', '2021-01-26 09:13:32', NULL),
(169, 13, 42, 'Amazi (Jibu) 20 L ( udafite ijerekani)', 'Jibu branch Nyanza ', 5000, 6000, 'Amazi ya Jibu ', 'jibu-540x540.jpg', 'jibu-540x540.jpg', '', 300, 'In Stock', '2021-01-26 09:15:41', NULL),
(170, 13, 42, 'Amazi (Jibu) 20 L ( ufite ijerekani)', 'Jibu branch Nyanza ', 1500, 1600, 'Amazi ya Jibu ku muntu ufite ijerekani ', 'jibu-540x540.jpg', 'jibu-540x540.jpg', '', 300, 'In Stock', '2021-01-26 09:17:50', NULL),
(171, 13, 42, 'Yawurute (nini yo mu icupa)', 'Zirakamwa Dairy ', 650, 700, 'Dufite izubwoko butandukanye ', 'yoghurt white.jpg', 'yoghurt.jpg', '', 200, 'In Stock', '2021-01-26 09:55:12', NULL),
(172, 13, 42, 'Yawurute (ntoya)', 'Zirakamwa Dairy ', 350, 450, 'Dufite yawurute amoko yose ', 'yoghurt small.jpg', 'yoghurt small.jpg', '', 200, 'In Stock', '2021-01-26 10:52:25', NULL),
(173, 7, 44, 'Sunduich ', 'Lenima Ltd', 750, 800, 'umugati  mwiza cyane ', 'Sandwich.jpeg', 'sandwich pack.jpeg', '', 200, 'In Stock', '2021-01-26 13:49:51', NULL),
(174, 7, 44, 'Umugati (ingano) muto', 'Lenima Ltd', 1050, 1100, 'umugati mwiza cyane , ufite intungamibiri ', 'Umugati(ingano) 2.jpeg', 'umugati (ingano).jpeg', '', 300, 'In Stock', '2021-01-26 13:54:51', NULL),
(175, 7, 44, 'Pain coupe (nini)', 'Lenima Ltd', 1050, 1200, 'umugati ufite intungamubiri ', 'pain coupe nini.jpeg', 'pain coupe nini.jpeg', '', 300, 'In Stock', '2021-01-26 13:58:12', NULL),
(176, 7, 44, 'Pain Francais', 'Lenima Ltd', 850, 800, 'umugati mwiza cyane ', 'Pain France.jpeg', 'Pain France.jpeg', '', 200, 'In Stock', '2021-01-26 14:00:07', NULL),
(177, 7, 44, 'Amandazi ', 'Lenima Ltd', 100, 150, 'Amandazi ni meza cyane .', 'amandazi.jpeg', 'amandazi.jpeg', '', 200, 'In Stock', '2021-01-26 14:02:01', NULL),
(178, 7, 44, 'Cake (ntoya)', 'Lenima Ltd', 150, 200, 'Cake nto ', 'cake ntoya.jpeg', 'Cake nto 2.jpeg', '', 200, 'In Stock', '2021-01-26 14:05:30', NULL),
(179, 7, 44, 'Cake (nini)', 'Lenima Ltd', 300, 350, 'cake nini ', 'cake nini.jpeg', 'cake nini.jpeg', '', 200, 'In Stock', '2021-01-26 14:07:08', NULL),
(180, 7, 44, 'Pain Croissant ', 'Lenima Ltd', 300, 350, 'Umugati mwiza ', 'Pain  Croissant.jpeg', 'Pain  Croissant.jpeg', '', 200, 'In Stock', '2021-01-26 14:09:08', NULL),
(181, 7, 44, 'Lemon Cake ', 'Lenima Ltd', 2100, 2200, 'Lemon cake ni nziza cyane ku bantu bose ', 'Limon cake (3).jpeg', 'Limon cake (3).jpeg', 'Limon Cake.jpeg', 300, 'In Stock', '2021-01-26 14:13:59', NULL),
(182, 7, 44, 'Marble Cake', 'Lenima Ltd', 2600, 3000, 'Marble cake ni iya mbere', 'Marble Cake 2 (2).jpeg', 'Mabo 20.jpeg', 'Mabo 20.jpeg', 300, 'In Stock', '2021-01-26 14:16:29', NULL),
(183, 7, 44, 'Marble small Cake ', 'Lenima Ltd', 550, 700, 'marble small cake ni nziza cyane', 'Mabo 20.jpeg', 'Mabo 20.jpeg', '', 200, 'In Stock', '2021-01-26 14:18:37', NULL),
(184, 7, 44, 'Vanilla Chocolate cake ', 'Lenima Ltd', 200, 250, 'Vanilla ', 'Vanilla Cake 2.jpeg', 'Vanilla Chocolate cake.jpeg', '', 200, 'In Stock', '2021-01-26 14:22:02', NULL),
(185, 7, 44, 'Large Marble Cake', 'Lenima Ltd', 2700, 3000, 'large marble cake ni nziza ', 'Mabo 20.jpeg', 'Mabo 20.jpeg', '', 300, 'In Stock', '2021-01-26 14:27:50', NULL),
(186, 7, 44, 'Qeen Cake ', 'Lenima Ltd', 150, 200, 'Queen Cake ', 'Qeen Cake (2).jpeg', 'Qeen cake.jpeg', '', 200, 'In Stock', '2021-01-26 14:29:54', NULL),
(187, 7, 44, 'Birthday Cake ', 'Lenima Ltd', 10500, 12000, 'Ku bantu bafite isabukuru ', 'birthday Cake 20.jpeg', 'Birthday cake.jpeg', '', 300, 'In Stock', '2021-01-26 14:33:43', NULL),
(188, 7, 44, 'Birthday Cake ', 'Lenima Ltd', 10500, 11000, 'Igisubizo ku bafite isabukuru ', 'Birthday Cke.jpeg', 'Birthday Cke.jpeg', '', 300, 'In Stock', '2021-01-26 14:35:17', NULL),
(189, 7, 44, 'Cookies&Buscuit', 'Lenima Ltd', 550, 600, 'Buscuit ifite intungamubiri ', 'cookies& buscuit.jpeg', 'cookies& buscuit.jpeg', '', 200, 'In Stock', '2021-01-26 14:40:40', NULL),
(190, 7, 32, 'Ikirayi (cyokeje) /Grilled irish Patato', 'Free Motel', 300, 350, 'Igitoki cyokeje ni kiza kibone muri Qarah group ku bufatanye na Free Motel ', 'Potetoes.jpg', 'Potetoes.jpg', '', 200, 'In Stock', '2021-01-27 10:41:45', NULL),
(191, 7, 32, 'Igitoki (cyokeje)/grilled Banana ', 'Free Motel', 200, 300, 'Igitoki cyokeje neza ku mbabura , ndetse no mu mavuta ', 'grilled-bananas-second-side-grilled-w-1.jpg', 'Bananas 1.png', '', 200, 'In Stock', '2021-01-27 10:46:50', NULL),
(192, 7, 32, 'Brochette (Zingaro)', 'Qarah Group ', 700, 900, 'Brochette ziboneka ku bufatanye na Free Motel Ltd ', 'zingaro.jpg', 'zingaro.jpg', '', 200, 'In Stock', '2021-01-27 11:03:11', NULL),
(193, 7, 32, 'Brochette (zisanzwe)', 'Qarah Group ', 600, 700, 'Brochette isanzwe iraryoha cyane , iboneka ku bufatanye na Free Motel ', 'brochette.jpg', 'brochette.jpg', '', 200, 'In Stock', '2021-01-27 11:06:51', NULL),
(194, 10, 22, 'Ibirayi (Umutuku) satura useke ', 'qarah group', 270, 280, 'Ibi birayi ni byiza cyane ', 'ibirayi bya satura useke.jpg', 'ibirayi.jpg', '', 200, 'In Stock', '2021-01-29 07:23:19', NULL),
(195, 10, 25, 'Mayonnaise Nto ', 'Qarah Group ', 3300, 3500, 'Mayonnaise nto ni nziza ', 'mayonnaise nto.jpg', 'mayonnaise nto.jpg', '', 300, 'In Stock', '2021-01-30 09:17:39', NULL),
(196, 10, 40, 'Inyama (Iroti)', 'Qarah Group ', 3500, 4000, 'Inyama ni nziza cyane ,izi nyama ziba ari izi nka ', 'inyama.jpg', 'inyama.jpg', '', 300, 'In Stock', '2021-01-30 09:31:42', NULL),
(197, 10, 25, 'Soya sauce', 'Qarah Group ', 2500, 3000, 'Soya sauce ni ikurungo kiryoshya ibiryo , kandi iba irimo umunyu ', 'Soya sauce.jpeg', 'Soya sauce.jpeg', '', 0, 'In Stock', '2021-02-03 13:03:03', NULL),
(198, 10, 25, 'Royco ', 'Qarah Group ', 1000, 1200, 'Royco ni nziza cyane ', 'Royco.jpeg', 'Royco.jpeg', '', 0, 'In Stock', '2021-02-03 13:07:13', NULL),
(199, 10, 25, 'Tangawize (Ifu) nini', 'Idrissa shop', 1500, 1700, 'iyi tangawize iba ari ifu ', 'Tangawize ( Nini).jpeg', 'Tangawize ( Nini).jpeg', '', 0, 'In Stock', '2021-02-03 13:44:01', NULL),
(200, 10, 25, 'amavuya (Ibihwagari ubwoko bwose) 5L , SUN SEED OIL all types 5L', 'Idrissa shop', 10500, 11000, 'Aya mavuta ni meza kandi ugura wihitiyemo ubwoko ushaka , JAMBO,CRYSTAL,KALISIMBI,YONKA...', 'amavuta (Ibihwagari) 5L , sun seed oil 5L.jpeg', 'amavuta (Ibihwagari) 5L , sun seed oil 5L.jpeg', '', 0, 'In Stock', '2021-02-03 13:48:36', NULL),
(201, 10, 25, 'Amavuta ya KARANGA  5L/KARANGA OIL 5L ', 'Idrissa shop', 8800, 9000, 'Aya mavuta ni 5L', 'Karanga oil 5L.jpeg', 'Karanga oil 5L.jpeg', '', 0, 'In Stock', '2021-02-03 13:51:18', NULL),
(202, 10, 25, 'Amavuta ya KARANGA  3L/KARANGA OIL 3L ', 'Idrissa shop', 5500, 6000, 'Aya mavuta ni meza cyane ', 'Amavuta ya Karanga 3L , Karanga Oil 3L.jpeg', 'Amavuta ya Karanga 3L , Karanga Oil 3L.jpeg', '', 0, 'In Stock', '2021-02-03 13:55:30', NULL),
(203, 10, 25, 'Amavuta ya KARANGA  3L/KARANGA OIL 3L ', 'Idrissa shop', 5500, 6000, 'Aya mavuta ni meza cyane ', 'Amavuta ya Karanga 3L , Karanga Oil 3L.jpeg', 'Amavuta ya Karanga 3L , Karanga Oil 3L.jpeg', '', 0, 'In Stock', '2021-02-03 13:56:06', NULL),
(204, 10, 25, 'Sun Light  5kg ', 'Idrissa shop', 9000, 1000, 'Iyi sabune ni ifu , ', 'Sun light 5kg.jpeg', 'Sun light 5kg.jpeg', '', 0, 'In Stock', '2021-02-03 13:59:17', NULL),
(205, 10, 25, 'Sun Light  1kg ', 'Idrissa shop', 2000, 2500, 'sun light soap pawder', 'Sun light 1 kg.jpeg', 'Sun light 1 kg.jpeg', '', 0, 'In Stock', '2021-02-03 14:00:56', NULL),
(206, 10, 25, 'Sun Light  1/2 kg ', 'Idrissa shop', 1000, 1200, 'sun light 1/2 kg ', 'Sun light 0.5 kg.jpeg', 'Sun light 0.5 kg.jpeg', '', 0, 'In Stock', '2021-02-03 14:02:42', NULL),
(207, 10, 25, 'SHINEX ', 'Idrissa shop', 2000, 2100, 'Iyi Shinex ikoreshwa mu koza ibirahure byo ku nzugi cyangwa ku birahure ', 'Shinex.jpeg', 'Shinex.jpeg', '', 0, 'In Stock', '2021-02-03 14:05:13', NULL),
(208, 10, 25, 'VIMU', 'Idrissa shop', 600, 700, 'VIMU Ikoreshwa ahantu hatandukanye mu gukora isuku ', 'Vim.jpeg', 'Vim.jpeg', '', 0, 'In Stock', '2021-02-03 14:06:52', NULL),
(209, 10, 21, 'Salsa ', 'Idrissa shop', 300, 350, 'Salsa , Original ', 'Salsa.png', 'Salsa.png', '', 0, 'In Stock', '2021-02-09 09:20:26', NULL),
(210, 10, 25, 'Nescafee , nini', 'Idrissa shop', 3500, 4000, 'Nescafee , nini ', 'Nescafe nini.jpeg', 'Nescafe nini.jpeg', '', 0, 'In Stock', '2021-02-09 09:27:30', NULL),
(211, 10, 25, 'Yonka sun seed Oil 1 L /Amavuta (Ibihwagari ya Yonka 1 L', 'Idrissa shop ', 2200, 2500, 'amavuta ya yonca ni amavuta meza ', 'SUN SEED YONKA OIL 1L.jpeg', 'SUN SEED YONKA OIL 1L.jpeg', '', 0, 'In Stock', '2021-02-09 10:44:23', NULL),
(212, 10, 25, 'Crystal Sun seed Oil 1 L / Amavuta ya crystal (Ibihwagari) 1 L ', 'Idrissa shop ', 2200, 2500, 'Aya Mavuta ni meza cyane ni litiro 1 / Good Oil of 1 L', 'SUN SEED CRSTAL OIL 1 L.jpeg', 'SUN SEED CRSTAL OIL 1 L.jpeg', '', 0, 'In Stock', '2021-02-09 10:47:18', NULL),
(213, 10, 25, 'Bright sun seed Oil 1 L / Amavuta (Ibihwagari ) Bright ', 'Idrissa shop ', 2200, 2500, 'good oil for Cooking ', 'SUN SEED BRIGHT OIL 1 L.jpeg', 'SUN SEED BRIGHT OIL 1 L.jpeg', '', 0, 'In Stock', '2021-02-09 10:53:21', NULL),
(214, 10, 25, 'Zahabu Oil 1 L / Amavuta ya Zahabu 1 l ', 'Idrissa shop ', 2200, 2500, 'Amavuta ya Zahabu ni meza  cyane ', 'ZAHABU OIL 1L.jpeg', 'ZAHABU OIL 1L.jpeg', '', 0, 'In Stock', '2021-02-09 10:58:58', NULL),
(216, 10, 25, 'Soya bean Oil 5l', 'Idrissa shop ', 10000, 10500, 'NICE OIL ', 'Amavuta.jpeg', 'Amavuta.jpeg', '', 0, 'In Stock', '2021-02-09 11:04:32', NULL),
(217, 10, 25, 'NIDO', 'Idrissa shop ', 7000, 7500, 'Nido ni nziza ', 'NIDO.jpeg', 'NIDO.jpeg', '', 0, 'In Stock', '2021-02-09 11:06:37', NULL),
(218, 10, 25, 'Blue Band big 1 kg  / Blue Band Nini 1 kg ', 'Idrissa shop ', 3000, 3200, 'Blue Band of 1 Kg ', 'Blue Band.jpeg', 'Blue Band.jpeg', '', 0, 'In Stock', '2021-02-09 11:09:17', NULL),
(219, 10, 25, 'Blue Band of 500g/ Blue Band ya 500g ', 'Idrissa shop ', 2000, 2100, 'Blue band of 500g ', 'Blue Bnd Moyenne.jpeg', 'Blue Bnd Moyenne.jpeg', '', 0, 'In Stock', '2021-02-09 11:11:30', NULL),
(220, 10, 25, 'Blue Band of 250 g/Blue Band of 250', 'Idrissa shop ', 1000, 1050, 'Blue Band of 250g ', 'Blue Bnd nto.jpeg', 'Blue Bnd nto.jpeg', '', 0, 'In Stock', '2021-02-09 11:13:24', NULL),
(221, 10, 25, 'Blue Band of 100g /Blue Band ya 100g', 'Idrissa shop ', 500, 600, 'Blue Band Nto cyane ', 'Blue Bnd nto.jpeg', 'Blue Bnd nto.jpeg', '', 0, 'In Stock', '2021-02-09 11:14:51', NULL),
(222, 11, 54, 'Ikote ,ikanzu biri kumwe ', 'Dalia Shop ', 30000, 33000, 'iyi mbyenda ushobora kuyambara wibere mu kazi ', 'IMYENDA MYIZA CYANE.jpeg', 'IMYENDA MYIZA CYANE.jpeg', '', 0, 'In Stock', '2021-02-09 11:21:48', NULL),
(223, 11, 54, 'Ikote ,ikanzu biri kumwe ', 'Dalia Shop ', 30000, 33000, 'iyi myenda ushobora kuyambara wibere mu kazi ', 'IMYENDA MYIZA CYANE.jpeg', 'IMYENDA MYIZA CYANE.jpeg', '', 0, 'In Stock', '2021-02-09 11:21:54', NULL),
(225, 11, 55, 'Ikanzu ', 'Dalia Shop ', 13000, 14000, 'ikanzu nziza watemberana ', 'IKANZU NZIZA.jpeg', 'IKANZU 2.jpeg', '', 0, 'In Stock', '2021-02-09 11:29:42', NULL),
(226, 11, 55, 'Ikanzu ', 'Dalia Shop ', 20000, 22000, 'ikanzu nziza yo gutembera uyiyambariye', 'IKANZU NZIZA 2.jpeg', 'IKANZU NZIZA 2.jpeg', '', 0, 'In Stock', '2021-02-09 11:31:37', NULL),
(227, 11, 54, 'inkwto zifunguye high hills', 'Dalia Shop ', 18000, 19000, 'inkweto zifunguye neza , size 39 and all size ', 'IFUNGUYE 2.jpeg', 'INKWETO ZIFUNGUYE.jpeg', '', 0, 'In Stock', '2021-02-09 11:35:17', NULL),
(228, 11, 54, 'Inkweto ya taro ', 'Dalia Shop ', 13000, 14000, 'IYI NKWETO WAYAMBARA UKAYIJYANA MU BIRORI USHAKA BYOSE ', 'BOOT 1.jpeg', 'BOOT 1.jpeg', '', 0, 'In Stock', '2021-02-09 11:40:33', NULL),
(229, 11, 54, 'Sandals  size 39', 'Dalia Shop ', 15000, 16000, 'kyi sandal ni sawa cyane ', 'SANDAL.jpeg', 'SANDAL.jpeg', '', 0, 'In Stock', '2021-02-09 11:42:22', NULL),
(230, 11, 54, 'Sandals  size 39', 'Dalia Shop ', 12000, 13000, 'iyi sandal ni nziz cyane ', 'SANDAL 2.jpeg', 'SANDAL 2.jpeg', '', 0, 'In Stock', '2021-02-09 11:47:11', NULL),
(231, 11, 54, 'inkweto idafite taro', 'Dalia Shop ', 12000, 13000, 'iyi nkweto ni nziza ', 'BOOT 2.jpeg', 'BOOT 2.jpeg', '', 0, 'In Stock', '2021-02-09 11:50:20', NULL),
(232, 10, 25, 'Quaker ', 'Idrissa shop ', 3000, 3200, 'Quaker ni nziza ', 'Quaker.jpeg', 'Quaker.jpeg', '', 0, 'In Stock', '2021-02-09 11:57:18', NULL),
(233, 10, 25, 'Tea Bag', 'Rwanda Mountain Tea', 2000, 2200, 'Tea Bag uyikoresha utiriwe uyiteka ', 'Tea Bag.jpeg', 'Tea Bag.jpeg', '', 0, 'In Stock', '2021-02-09 11:59:56', NULL),
(234, 10, 25, 'Makaloni ', 'Idrissa shop ', 200, 250, 'Makaloni  nziza cyane ku bana ', 'Makaloni.jpeg', 'Makaloni.jpeg', '', 0, 'In Stock', '2021-02-09 12:03:43', NULL),
(235, 10, 25, 'Makaloni  ndende ', 'Idrissa shop ', 300, 350, 'Izi makaloni ni nziza ku bantu bakuru ', 'Macaloni ndende.jpeg', 'Macaloni ndende.jpeg', '', 0, 'In Stock', '2021-02-09 12:05:29', NULL),
(236, 13, 42, 'AYACU (AMAZI) 20 L (nta cupa )', 'OffGridBox Rwanda Ltd', 7000, 7000, 'Aya mazi nta cupa uyatwara kuri 20000', 'AMAZI AYACU 20 L.jpeg', 'AMAZI AYACU 20 L.jpeg', '', 0, 'In Stock', '2021-02-09 12:32:44', NULL),
(237, 13, 42, 'AYACU (AMAZI) 20 L (refill ) cyanwa wifitiye icupa ', 'OffGridBox Rwanda Ltd', 1500, 1500, 'Aya mazi iyo wifitiye icupa bakuvomeye wishyura 1500', 'AMAZI AYACU 20 L.jpeg', 'AMAZI AYACU 20 L.jpeg', '', 0, 'In Stock', '2021-02-09 12:35:17', NULL),
(238, 13, 42, 'AYACU (AMAZI) 5 L (nta cupa )', 'OffGridBox Rwanda Ltd', 1200, 1200, 'Aya mazi wishyura 1200 nta cupa uzanye ngo bagusukiremo ', 'AMAZI AYACU 5 L.jpeg', 'AMAZI AYACU 5 L.jpeg', '', 0, 'In Stock', '2021-02-09 12:36:53', NULL),
(239, 13, 42, 'AYACU (AMAZI) 5L (refill ) cyangwa wifitiye icupa ', 'OffGridBox Rwanda Ltd', 600, 600, 'Ayazi uyahabwa wifitiye icupa ku giciro gito cyane ', 'AMAZI AYACU 5 L.jpeg', 'AMAZI AYACU 5 L.jpeg', '', 0, 'In Stock', '2021-02-09 12:38:43', NULL),
(240, 11, 56, 'Ikanzu ifite agapira ', 'Lily Fashion House ', 10000, 11000, 'uyu mwenda wambara umwana ufite umwaka umwe ari umukobwa ', 'Agakanzu.jpeg', 'Agakanzu.jpeg', '', 0, 'In Stock', '2021-02-09 16:09:05', NULL),
(241, 11, 56, 'Complete ', 'Lily Fashion House ', 15000, 16000, 'iyi myenda yambara umwana ufite imyaka ine (4) ari umukobwa ', 'ISHATI +IPATALO (1).jpeg', 'ISHATI +IPATALO (1).jpeg', '', 0, 'In Stock', '2021-02-09 16:15:02', NULL),
(242, 11, 56, 'complete 2', 'Lily Fashion House ', 13000, 14000, 'iyi myenda yambara umwana ufite imyaka ine ari umuhungu', 'ISHATI +IPATALO (3).jpeg', 'ISHATI +IPATALO (3).jpeg', '', 0, 'In Stock', '2021-02-09 16:17:18', NULL),
(243, 11, 56, 'Costume ', 'Lily Fashion House ', 14000, 15000, 'iyi costume yambara umwana ufite imyaka 2 ari umuhungu ', 'ISHATI +IPATALO (4).jpeg', 'ISHATI +IPATALO (4).jpeg', '', 0, 'In Stock', '2021-02-09 16:18:51', NULL),
(244, 11, 56, 'Ikanzu ', 'Qarah Fashion House ', 4000, 7000, 'Aka gakanzu ka kwambara umwana ufite kuva kuri 1kugeza ku myaka 2 ', 'Agakanzu 1.jpeg', 'ikanzu imbere.jpeg', 'ikanzu imbere 2.jpeg', 0, 'In Stock', '2021-02-15 11:13:24', NULL),
(245, 13, 42, 'Fanta', 'Free Motel', 500, 500, 'Fanta zose , uko amoko yazo ari izo mu icupa ', 'Fanta.jpg', 'Fanta.jpg', '', 0, 'In Stock', '2021-02-18 10:10:20', NULL),
(246, 7, 36, 'Take away ', 'Free Motel ', 1500, 1700, 'Iyi take away iba irimo ibiryo umukiliya yifuza cyane , atubwira ibyo yifuza akaba aribyo tumuzanira ', 'brown-paper-bag-and-two-takeaway-food-containers-PFPCEA.jpg', 'Take away.webp', '', 0, 'In Stock', '2021-02-18 10:16:49', NULL),
(247, 7, 36, 'Beef Party ', 'Lenima Ltd', 3000, 3500, 'ubwoko bwose , grilled  ', 'Take away.webp', 'brown-paper-bag-and-two-takeaway-food-containers-PFPCEA.jpg', '', 0, 'In Stock', '2021-02-18 10:42:50', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(21, 10, 'ibirungo', '2021-01-09 06:16:12', NULL),
(22, 10, 'ibya Kinyarwanda', '2021-01-09 06:16:35', NULL),
(23, 10, 'Imboga', '2021-01-09 06:16:59', NULL),
(24, 10, 'imbuto', '2021-01-09 06:17:15', NULL),
(25, 10, 'supermarket', '2021-01-09 06:20:59', NULL),
(32, 7, 'Bar Food', '2021-01-12 16:22:57', '20-01-2021 03:42:46 PM'),
(34, 11, 'Men Clothes', '2021-01-19 10:11:32', NULL),
(36, 7, 'Hotel/Resto', '2021-01-19 14:44:33', NULL),
(37, 11, 'Inkweto / Men Shoes', '2021-01-19 18:10:07', NULL),
(38, 12, 'Salon', '2021-01-20 14:08:04', NULL),
(39, 12, 'Room materials', '2021-01-20 14:39:25', '20-01-2021 08:10:19 PM'),
(40, 10, 'Ibagiro /Boucherie', '2021-01-21 08:34:00', NULL),
(42, 13, 'IBIDASEMBUYE ', '2021-01-25 09:12:58', NULL),
(44, 7, 'BAKERY AND PASTRY ', '2021-01-26 11:23:52', NULL),
(45, 14, 'Houses', '2021-02-05 07:59:32', NULL),
(46, 14, 'Houses', '2021-02-05 08:00:04', NULL),
(47, 14, 'Houses', '2021-02-05 08:00:16', NULL),
(48, 14, 'Car ', '2021-02-05 08:00:42', NULL),
(49, 14, 'APARTMENT ', '2021-02-05 08:00:58', NULL),
(50, 15, 'House/ Inzu /Maison ', '2021-02-05 08:08:20', NULL),
(51, 15, 'Imodoka/car/Vehicules ,Moto ....', '2021-02-05 08:09:10', NULL),
(52, 15, 'APARTMENT /inzu yo kubamo igezweho ', '2021-02-05 08:10:21', NULL),
(53, 15, 'Ibibanza cyangwa Isambu  /Parcel ', '2021-02-05 08:11:06', NULL),
(54, 11, 'Women Foot wear ', '2021-02-09 11:16:40', NULL),
(55, 11, 'Women Fashon ', '2021-02-09 11:17:14', NULL),
(56, 11, 'Kid Fashion ', '2021-02-09 16:06:42', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3139372e3135372e3133352e31323000, '2020-12-28 16:23:32', NULL, 1),
(25, 'josuempundu@gmail.com', 0x3139372e3135372e3136352e32323600, '2021-01-04 16:35:17', NULL, 0),
(26, 'josuegasibire@gmail.com', 0x3139372e3135372e3136352e32323600, '2021-01-04 16:38:05', NULL, 1),
(27, 'josuegasibire@gmail.com', 0x34312e3138362e37382e353200000000, '2021-01-05 06:14:39', '05-01-2021 11:46:19 AM', 1),
(28, 'josuempundu@gmail.com', 0x3139372e3135372e3134352e32313000, '2021-01-07 16:47:20', NULL, 0),
(29, 'irinivianney@gmail.com', 0x3139372e3135372e3134352e32313000, '2021-01-07 16:50:11', NULL, 0),
(30, 'irinivianney@gmail.com', 0x3139372e3135372e3134352e32313000, '2021-01-07 16:50:31', NULL, 1),
(31, 'kadogo@gmail.com', 0x3139372e3135372e3134352e32313000, '2021-01-07 18:59:15', NULL, 0),
(32, 'kadogo@gmail.com', 0x3139372e3135372e3134352e32313000, '2021-01-07 19:00:32', NULL, 0),
(33, 'kadogo@gmail.com', 0x3139372e3135372e3134352e32313000, '2021-01-07 19:00:49', NULL, 0),
(34, 'josuegasibire@gmail.com', 0x3139372e3135372e3134352e32313000, '2021-01-07 19:02:51', NULL, 1),
(35, 'josuegasbire@gmail.com', 0x3139372e3135372e3136352e31373800, '2021-01-07 19:54:42', NULL, 0),
(36, 'irinivianney@gmail.com', 0x3139372e3135372e3136352e31373800, '2021-01-07 19:55:16', NULL, 1),
(37, 'josuegasibire@gmail.com', 0x34312e3133382e38342e313436000000, '2021-01-08 05:31:44', NULL, 1),
(38, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 07:17:02', NULL, 1),
(39, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 07:21:19', NULL, 1),
(40, 'kadogo@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 09:10:11', '08-01-2021 02:46:43 PM', 1),
(41, 'irinivianney@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 09:17:45', NULL, 1),
(42, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 09:23:23', NULL, 1),
(43, 'musingajoe@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 18:51:30', '09-01-2021 12:24:25 AM', 1),
(44, 'irinivianney@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 18:55:26', NULL, 1),
(45, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 18:58:07', NULL, 1),
(46, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 19:07:28', '09-01-2021 12:39:56 AM', 1),
(47, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 19:12:37', NULL, 1),
(48, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 19:19:44', NULL, 1),
(49, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 19:34:54', '09-01-2021 01:28:30 AM', 1),
(50, 'irinivianney@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 19:59:02', '09-01-2021 01:50:19 AM', 1),
(51, 'josuegasibire@gmail.com', 0x3139372e3135372e3133352e31320000, '2021-01-08 20:03:32', NULL, 1),
(52, 'josuegasibire@gmail.com', 0x3139372e3135372e3133352e31320000, '2021-01-08 20:06:58', NULL, 1),
(53, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 20:20:52', '09-01-2021 02:02:44 AM', 1),
(54, 'kadogo@gmail.com', 0x34312e3138362e37382e323239000000, '2021-01-08 20:33:26', NULL, 1),
(55, 'josuegasibire@gmail.com', 0x3139372e3135372e3135352e32333900, '2021-01-09 08:24:54', NULL, 1),
(56, 'irinivianney@gmail.com', 0x3139372e3135372e3135352e32333900, '2021-01-09 08:28:35', NULL, 1),
(57, 'irinivianney@gmail.com', 0x3139372e3135372e3135352e32333900, '2021-01-09 08:34:52', NULL, 1),
(58, 'josuegasibire@gmail.com', 0x3139372e3135372e3135352e32333900, '2021-01-09 08:46:20', NULL, 1),
(59, 'irinivianney@gmail.com', 0x3139372e3135372e3134352e39350000, '2021-01-09 10:28:59', '09-01-2021 04:04:27 PM', 1),
(60, 'musingajoe@gmail.com', 0x3139372e3135372e3134352e39350000, '2021-01-09 10:34:53', NULL, 1),
(61, 'musingajoe@gmail.com', 0x34312e3138362e37382e313234000000, '2021-01-09 13:06:21', NULL, 1),
(62, 'musingajoe@gmail.com', 0x34312e3133382e38342e313433000000, '2021-01-09 13:33:02', NULL, 1),
(63, 'musingajoe@gmail.com', 0x34312e3138362e37382e313234000000, '2021-01-09 14:33:10', NULL, 1),
(64, 'musingajoe@gmail.com', 0x34312e3133382e38342e313339000000, '2021-01-09 14:38:34', NULL, 1),
(65, 'musingajoe@gmail.com', 0x3139372e3135372e3135352e35340000, '2021-01-11 08:56:23', NULL, 1),
(66, 'musingajoe@gmail.com', 0x34312e3138362e37382e313032000000, '2021-01-11 09:28:36', NULL, 1),
(67, 'musingajoe@gmail.com', 0x34312e3138362e37382e313831000000, '2021-01-11 11:17:29', NULL, 1),
(68, 'nibigira@gmail.com', 0x34312e3133382e38362e323200000000, '2021-01-11 12:50:56', NULL, 1),
(69, 'Musingajoe@gmail.com', 0x3139372e3135372e3133352e31343000, '2021-01-11 15:22:28', NULL, 1),
(70, 'kadogo@gmail.com', 0x34312e3138362e37382e323133000000, '2021-01-12 12:13:01', NULL, 1),
(71, 'josuegasibire@gmail.com', 0x34312e3138362e37382e323133000000, '2021-01-12 12:26:01', NULL, 1),
(72, 'robert@gmail.com', 0x34312e3138362e37382e323133000000, '2021-01-12 13:03:20', NULL, 1),
(73, 'robert@gmail.com', 0x3139372e3135372e3133352e31343600, '2021-01-12 13:43:55', NULL, 1),
(74, 'josuempundu@gmail.com', 0x34312e3138362e37382e363200000000, '2021-01-12 20:07:28', NULL, 0),
(75, 'musingajoe@gmail.com', 0x34312e3138362e37382e363200000000, '2021-01-12 20:08:07', NULL, 1),
(76, 'musingajoe@gmail.com', 0x34312e3138362e37382e363200000000, '2021-01-12 20:12:04', '13-01-2021 01:45:24 AM', 1),
(77, 'musingajoe@gmail.com', 0x34312e3138362e37382e363200000000, '2021-01-12 20:16:06', '13-01-2021 01:49:44 AM', 1),
(78, 'josuempundu@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 07:22:52', NULL, 0),
(79, 'kadogo@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 07:23:13', NULL, 1),
(80, 'musingajoe@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 07:34:36', NULL, 1),
(81, 'irinivianney@gmail.com', 0x34312e3138362e37382e333900000000, '2021-01-13 08:15:18', '13-01-2021 02:12:11 PM', 1),
(82, 'josuegladiator@gmail.com', 0x34312e3138362e37382e333900000000, '2021-01-13 08:45:12', NULL, 1),
(83, 'josuegladiator@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 08:51:17', NULL, 1),
(84, 'nibigira@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 09:10:30', '13-01-2021 02:43:11 PM', 1),
(85, 'musingajoe@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 09:22:03', NULL, 1),
(86, 'josuempundu@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 09:32:46', NULL, 0),
(87, 'josuegladiator@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 09:33:49', NULL, 1),
(88, 'nibigira@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 10:00:44', '13-01-2021 03:32:14 PM', 1),
(89, 'kadogo@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 10:03:00', '13-01-2021 03:35:04 PM', 1),
(90, 'citegetse@gmail.com', 0x34312e3138362e37382e373300000000, '2021-01-13 10:08:19', '13-01-2021 03:47:27 PM', 1),
(91, 'citegetse@gmail.com', 0x34312e3138362e37382e333900000000, '2021-01-13 10:17:51', NULL, 1),
(92, 'musingajoe@gmail.com', 0x34312e3138362e37382e323434000000, '2021-01-13 10:39:48', NULL, 1),
(93, 'musingajoe@gmail.com', 0x3139372e3135372e3134352e38380000, '2021-01-13 12:22:40', NULL, 1),
(94, 'nshimiyimana169@gmail.com', 0x3139372e3135372e3136352e31393700, '2021-01-13 14:51:25', NULL, 1),
(95, 'irinivianney@gmail.com', 0x34312e3138362e37382e313732000000, '2021-01-13 15:04:03', NULL, 1),
(96, 'ngabirano@gmail.com', 0x34312e3138362e37382e313732000000, '2021-01-13 15:49:59', NULL, 1),
(97, 'ngabirano@gmail.com', 0x34312e3138362e37382e313732000000, '2021-01-13 15:59:48', NULL, 1),
(98, 'ngabirano@gmail.com', 0x34312e3138362e37382e343200000000, '2021-01-13 18:47:43', NULL, 1),
(99, 'ngabirano@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 13:24:51', NULL, 1),
(100, 'alliyah@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 14:33:39', NULL, 1),
(101, 'lewis@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 14:45:47', '14-01-2021 08:32:43 PM', 1),
(102, 'kadogo@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 15:06:48', NULL, 1),
(103, 'ngabirano@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 17:16:02', NULL, 1),
(104, 'ngabirano@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 17:36:57', '14-01-2021 11:27:51 PM', 1),
(105, 'alliyah@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 17:41:39', NULL, 1),
(106, 'lewis@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 18:01:44', '14-01-2021 11:43:11 PM', 1),
(107, 'kadogo@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 18:13:56', NULL, 1),
(108, 'musingajoe@gmail.com', 0x34312e3138362e37382e323500000000, '2021-01-14 18:27:34', NULL, 0),
(109, 'musingajoe@gmail.com', 0x34312e3138362e37382e323500000000, '2021-01-14 18:28:13', NULL, 1),
(110, 'musingajoe@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 19:07:53', NULL, 1),
(111, 'musingajoe@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 19:12:21', NULL, 0),
(112, 'josuegladiator@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 19:12:42', '15-01-2021 12:57:56 AM', 1),
(113, 'musingajoe@gmail.com', 0x34312e3133382e38342e313530000000, '2021-01-14 19:28:31', '15-01-2021 01:02:29 AM', 1),
(114, 'ngabirano@gmail.com', 0x3139372e3135372e3133352e32350000, '2021-01-15 15:07:24', NULL, 1),
(115, 'musingajoe@gmail.com', 0x34312e3133382e38342e313330000000, '2021-01-15 16:09:41', NULL, 1),
(116, 'ishimwerobe04@gmail.com', 0x34312e3133382e38342e313330000000, '2021-01-15 16:41:52', NULL, 0),
(117, 'ishimwerobe04@gmail.com', 0x34312e3133382e38342e313330000000, '2021-01-15 16:44:00', NULL, 1),
(118, 'josuegladiator@gmail.com', 0x34312e3133382e38372e373200000000, '2021-01-16 09:21:59', '16-01-2021 02:53:38 PM', 1),
(119, 'musingajoe@gmail.com', 0x34312e3133382e38342e313334000000, '2021-01-16 11:35:11', NULL, 1),
(120, 'musingajoe@gmail.com', 0x3139372e3135372e3134352e32313800, '2021-01-16 14:02:45', NULL, 0),
(121, 'musingajoe@gmail.com', 0x3139372e3135372e3134352e32313800, '2021-01-16 14:03:09', NULL, 1),
(122, 'musingajoe@gmail.com', 0x3139372e3135372e3134352e32333500, '2021-01-19 08:14:42', NULL, 1),
(123, 'musingajoe@gmail.com', 0x3130352e3137382e34352e3138380000, '2021-01-22 05:04:51', NULL, 1),
(124, 'immaculeediane123@gmail.com', 0x34312e3138362e37382e313834000000, '2021-01-22 15:10:11', NULL, 1),
(125, 'ngabirano@gmail.com', 0x34312e3133382e38362e313000000000, '2021-01-22 15:19:27', '22-01-2021 09:05:48 PM', 1),
(126, 'ngabirano@gmail.com', 0x3139372e3135372e3136352e31333300, '2021-01-22 15:43:45', '22-01-2021 09:19:11 PM', 1),
(127, 'ngabirano@gmail.com', 0x3139372e3135372e3136352e31333300, '2021-01-22 15:49:29', '22-01-2021 09:21:36 PM', 1),
(128, 'musingajoe@gmail.com', 0x34312e3138362e37382e353000000000, '2021-01-22 15:55:05', NULL, 0),
(129, 'irinivianney@gmail.com', 0x3139372e3135372e3136352e31333300, '2021-01-22 15:55:15', NULL, 0),
(130, 'musingajoe@gmail.com', 0x34312e3138362e37382e353000000000, '2021-01-22 15:55:24', NULL, 1),
(131, 'musingajoe@gmail.com', 0x34312e3138362e37382e353000000000, '2021-01-22 15:55:25', NULL, 1),
(132, 'musingajoe@gmail.com', 0x3139372e3135372e3136352e31333300, '2021-01-22 15:55:46', '22-01-2021 09:29:41 PM', 1),
(133, 'kadogo@gmail.com', 0x3139372e3135372e3136352e31333300, '2021-01-22 16:00:12', NULL, 1),
(134, 'musingajoe@gmail.com', 0x34312e3138362e37382e313900000000, '2021-01-22 19:58:08', NULL, 1),
(135, 'nshimyumuremyig@gmail.com', 0x3139372e3135372e3134352e31343000, '2021-01-22 19:58:21', NULL, 0),
(136, 'nshimyumuremyig@gmail.com', 0x3139372e3135372e3134352e31343000, '2021-01-22 19:59:15', NULL, 0),
(137, 'nshimyumuremyig@gmail.com', 0x3139372e3135372e3134352e31343000, '2021-01-22 20:00:46', NULL, 1),
(138, 'nshimyumuremyig@gmail.com', 0x3139372e3135372e3133352e39360000, '2021-01-23 05:47:40', NULL, 1),
(139, 'mukunde2000@yahoo.fr', 0x3139372e3135372e3134352e32343600, '2021-01-24 09:13:41', NULL, 1),
(140, 'musingajie@gmail.com', 0x3139372e3135372e3134352e31363700, '2021-01-24 11:31:04', NULL, 0),
(141, 'musingajoe@gmail.com', 0x3139372e3135372e3134352e31363700, '2021-01-24 11:31:48', NULL, 1),
(142, 'musingajoe@gmail.com', 0x34312e3138362e37382e313500000000, '2021-01-24 14:31:52', '24-01-2021 08:22:49 PM', 1),
(143, 'musingajoe@gmail.com', 0x34312e3133382e38352e323500000000, '2021-01-24 14:58:13', NULL, 1),
(144, 'musingajoe@gmail.com', 0x34312e3133382e38352e323500000000, '2021-01-24 15:08:47', NULL, 1),
(145, 'umuhoza@gmail.com', 0x3139372e3135372e3135352e35380000, '2021-01-25 14:48:44', NULL, 1),
(146, 'ishimweyvan98@gmail.com', 0x34312e3133382e38362e323500000000, '2021-01-25 16:20:29', NULL, 1),
(147, 'irinivianney@gmail.com', 0x3139372e3135372e3136352e31393400, '2021-01-27 12:43:09', NULL, 1),
(148, 'Musingajoe@gmail.com', 0x3139372e3135372e3136352e32323700, '2021-01-29 06:17:10', NULL, 1),
(149, 'kadogo@gmail.com', 0x34312e3133382e38342e313239000000, '2021-01-29 07:10:10', '29-01-2021 01:11:17 PM', 1),
(150, 'kadogo@gmail.com', 0x34312e3133382e38342e313239000000, '2021-01-29 07:42:14', '29-01-2021 01:45:47 PM', 1),
(151, 'kadogo@gmail.com', 0x34312e3133382e38342e313239000000, '2021-01-29 08:17:45', NULL, 1),
(152, 'kadogo@gmail.com', 0x34312e3133382e38342e313239000000, '2021-01-29 09:39:35', '29-01-2021 03:16:34 PM', 1),
(153, 'kadogo@gmail.com', 0x3139372e3135372e3134352e32313800, '2021-01-29 10:15:42', NULL, 1),
(154, 'jkayirangwa@yahoo.fr', 0x34312e3138362e37382e323135000000, '2021-01-29 11:24:55', NULL, 1),
(155, 'sylvebizu@gmail.com', 0x34312e3138362e37382e353900000000, '2021-02-01 06:51:32', NULL, 0),
(156, 'sylvebizu@gmail.com', 0x34312e3138362e37382e353900000000, '2021-02-01 06:59:13', NULL, 1),
(157, 'dimukamuzima@gmail.com', 0x34312e3138362e37382e373000000000, '2021-02-01 09:48:37', NULL, 0),
(158, 'dimukamuzima@gmail.com', 0x34312e3138362e37382e373000000000, '2021-02-01 09:48:48', NULL, 0),
(159, 'DonathaMukamuzima@gmail.com', 0x34312e3138362e37382e373000000000, '2021-02-01 09:54:47', NULL, 1),
(160, '', 0x3130352e3137382e3130362e39380000, '2021-02-02 10:49:13', NULL, 0),
(161, 'sylvebizu@gmail.com', 0x3130352e3137382e3130362e39380000, '2021-02-02 10:49:55', NULL, 1),
(162, 'uwinezagrace92@gmail.com', 0x34312e3138362e37382e313031000000, '2021-02-02 15:47:30', NULL, 0),
(163, 'uwinezagrace92@gmail.com', 0x34312e3138362e37382e313031000000, '2021-02-02 15:47:30', NULL, 0),
(164, 'uwinezagrace92@gmail.com', 0x34312e3138362e37382e313031000000, '2021-02-02 15:47:50', NULL, 0),
(165, 'graceuwineza01@gmail.com', 0x34312e3138362e37382e313031000000, '2021-02-02 15:48:47', NULL, 1),
(166, 'graceuwineza01@gmail.com', 0x34312e3138362e37382e313031000000, '2021-02-02 16:10:41', NULL, 1),
(167, 'graceuwineza01@gmail.com', 0x34312e3138362e37382e313031000000, '2021-02-02 16:10:42', NULL, 1),
(168, 'graceuwineza01@gmail.com', 0x34312e3138362e37382e313034000000, '2021-02-02 16:23:52', NULL, 1),
(169, 'dd@gmail.com', 0x3139372e3135372e3136352e31393400, '2021-02-02 23:19:39', '03-02-2021 04:52:31 AM', 1),
(170, 'manastase@gmail.com', 0x34312e3133382e38352e323300000000, '2021-02-04 07:25:17', NULL, 1),
(171, 'manastase@gmail.com', 0x34312e3133382e38342e313835000000, '2021-02-04 07:53:27', '04-02-2021 01:26:34 PM', 1),
(172, 'manastase@gmail.com', 0x34312e3133382e38342e313835000000, '2021-02-04 08:33:57', NULL, 1),
(173, 'musingajoe@gmail.com', 0x34312e3133382e38352e323300000000, '2021-02-04 09:45:17', NULL, 1),
(174, 'fixew13127@botfed.com', 0x3130352e39382e3235312e3137300000, '2021-02-06 13:41:06', '06-02-2021 07:11:58 PM', 1),
(175, 'musingajoe@gmail.com', 0x34312e3138362e37382e313831000000, '2021-02-07 14:57:40', NULL, 1),
(176, 'mutoniwaseliliane01@gmail.com', 0x34312e3138362e37382e313230000000, '2021-02-10 11:48:22', NULL, 1),
(177, 'Umulisalily@gmail.com', 0x34312e3138362e37382e313200000000, '2021-02-15 11:12:53', NULL, 0),
(178, 'Umulisalily@gmail.com', 0x34312e3138362e37382e313200000000, '2021-02-15 11:13:26', NULL, 0),
(179, 'ferdinand.ndayiringiye@ilpd.ac.rw', 0x34312e37342e3137302e343200000000, '2021-02-24 14:20:08', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'josue iradukunda', 'josuegasibire@gmail.com', 781560004, 'c762f05cad4672ea395018e0f3dcc94f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-04 16:37:37', NULL),
(5, 'irinimbabazi', 'irinivianney@gmail.com', 784527377, '2de374586a376955462fa5e107a12c69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-07 16:49:53', NULL),
(6, 'kadogo bosco', 'kadogo@gmail.com', 784527877, 'baa9ac279cee613ad86e7d0da1c95446', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-08 09:09:45', NULL),
(7, 'Joseph Ndayishimiye', 'musingajoe@gmail.com', 784567890, '47ae81e353f4d7b1381526a647443ff8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-08 18:50:37', NULL),
(8, 'Uwase Alice', 'aliceuwase207@gmail.com', 786089464, '716d9a600eb7d71a0a8961eea6801e4f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-09 14:48:02', NULL),
(9, 'nibigira', 'nibigira@gmail.com', 783333456, '106a6c241b8797f52e1e77317b96a201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-11 12:50:29', NULL),
(10, 'Robert', 'robert@gmail.com', 781111145, 'b99da6afb822d9160a302091df4a7629', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-12 13:02:52', NULL),
(11, 'JosuÃ© Gasibire', 'josuegladiator@gmail.com', 781564009, 'f7aa6066f95255096672e3a5fc537081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 08:44:23', NULL),
(12, 'citegetse', 'citegetse@gmail.com', 782333456, '829a56cc8ffa56209e3a10b80d0bbdf8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 10:08:06', NULL),
(13, 'nshimiyimana Innocent', 'nshimiyimana169@gmail.com', 783010013, '15cb1df039179b98815220012a18dcbd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 14:50:54', NULL),
(14, 'Nelly ngabirano', 'ngabirano@gmail.com', 786564009, 'daffd55e1b8020c7a60a7b6e36afb775', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 15:49:37', NULL),
(15, 'Alliyah', 'alliyah@gmail.com', 6899356, '37f0de6944176a3f7bad42c410a2a99c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 14:33:12', NULL),
(16, 'Lewis', 'lewis@gmail.com', 7865678899, '0ac6cd34e2fac333bf0ee3cd06bdcf96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 14:45:19', NULL),
(17, 'Ishimwe Robert', 'ishimwerobe04@gmail.com', 789218083, '96d3895aa807dac8f67f6923bf05390e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-15 16:43:16', NULL),
(18, 'M.lmmaculee Diane ', 'immaculeediane123@gmail.com', 788683777, '48848037cb50cf244223dbe7e734c247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 15:09:41', NULL),
(19, 'Nshimyumuremyi Gilbert', 'nshimyumuremyig@gmail.com', 783703383, 'ed63325a4cb3214d1e6e8590a01eec25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 20:00:14', NULL),
(20, 'Ngabonziza janvier', 'mukunde2000@yahoo.fr', 788784252, 'dcbbe3360abecd3b3e87654130e7de7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 09:13:00', NULL),
(21, 'Grace Umuhoza', 'umuhoza@gmail.com', 788999883, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-25 14:47:19', NULL),
(22, 'Ishimwe yvan ', 'ishimweyvan98@gmail.com', 783624953, 'f4da656b7624d840dfba5610bb197fbd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-25 16:19:43', NULL),
(23, 'Kayirangwa Jacqueline', 'jkayirangwa@yahoo.fr', 788795934, '06b3b7548e15459406c9b8a65dfc445b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-29 11:22:46', NULL),
(24, 'Sylvestre Bizumuremyi ', 'sylvebizu@gmail.com', 788414897, '2c44a9853a2c22a41f7c12e362683dff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-01 06:54:37', NULL),
(25, 'Mukamuzima Donatha', 'DonathaMukamuzima@gmail.com', 782803181, '872bc968cf2a2d102f01d7a2f7de2365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-01 09:54:33', NULL),
(26, 'Uwineza Grace ', 'graceuwineza01@gmail.com', 789265201, '3dcfdf5a5d32d4996e443e6c15b2b5c2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-02 15:47:10', NULL),
(27, 'testuser', 'dd@gmail.com', 788451236, '0327b2c7a10e5c4a1eceb052aa3ee91a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-02 23:19:23', NULL),
(28, 'IRAMBONA Jean Pierre', 'irivianney@gmail.com', 786543343, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-03 21:17:22', NULL),
(29, 'MANIRIHO Anastaste', 'manastase@gmail.com', 783337374, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-04 07:17:11', NULL),
(30, 'test', 'fixew13127@botfed.com', 552154771, 'f6faaed9cc5821e0fecabe3302ee7062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 13:40:57', NULL),
(31, 'Mutoniwase liliane ', 'mutoniwaseliliane01@gmail.com', 787709308, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-10 11:47:42', NULL),
(32, 'NDAYIRINGIYE Ferdinand', 'ferdinand.ndayiringiye@ilpd.ac.rw', 788674106, '282212e8442a09d0dddfa7dda6632332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-24 14:19:47', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 1, 5, '2020-12-28 16:30:13');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ordertempo`
--
ALTER TABLE `ordertempo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `ordertempo`
--
ALTER TABLE `ordertempo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT pour la table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
