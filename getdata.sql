-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2015 at 11:34 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `getdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `category` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'margarita'),
(2, 'Vesuvio'),
(3, 'Funghi'),
(4, 'Altona'),
(5, 'Hawaii'),
(6, 'Vegetarian'),
(7, 'Tropicana'),
(8, 'Mamma Mia'),
(9, 'Fantastico'),
(10, 'Carousel'),
(11, 'Calzone'),
(12, 'Pepperoni'),
(13, 'Kerab Pizza'),
(14, 'Crocodile Pizza'),
(15, 'Taco Pizza'),
(16, 'Bravisimo'),
(17, 'Opera'),
(18, 'Romeo'),
(19, 'Chicken Pizza'),
(20, 'Black & White'),
(21, 'Mexicana'),
(22, 'Frutti De Mare'),
(23, 'Quattro Stagione'),
(24, 'Parma'),
(25, 'Capricciosa');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `views` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `subject`, `body`, `date`, `views`) VALUES
(15, 'check lang, 1st blog pero ang body, XSS ang laman. :v', '<script> alert ("this is very simple noob XSS sample!")</script>', '2015-05-23 13:26:22', 0),
(16, 'im a web php developer!', 'congrats to me!\r\nisa na namang system ang natapos ko!\r\n(design nlng ng konti. :) )', '2015-07-01 06:20:30', 0),
(17, 'tapos na ang css', 'jquery nlng!! :v', '2015-07-02 10:55:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `pid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`pid`, `fname`, `lname`, `mi`, `age`, `gender`, `address`, `username`, `password`) VALUES
(27, 'ronel', 'llarenas', 'bugarin', 22, 'Male', 'hinigaran', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(28, 'kalokalike ni dora', 'sa panasia', 'tupad ko p', 24, 'Femal', 'bacolod', 'dora', '7ec4fa89d0c005d7b155848254f5e7ef0897d95b');

-- --------------------------------------------------------

--
-- Table structure for table `marias_products`
--

CREATE TABLE IF NOT EXISTS `marias_products` (
  `id` int(11) NOT NULL,
  `product_id` int(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(50) NOT NULL,
  `product_size` int(10) NOT NULL,
  `product_size_name` varchar(100) NOT NULL,
  `product_photo` varchar(100) NOT NULL,
  `product_ingredients` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marias_products`
--

INSERT INTO `marias_products` (`id`, `product_id`, `product_name`, `product_price`, `product_size`, `product_size_name`, `product_photo`, `product_ingredients`, `status`) VALUES
(1, 1, 'margarita', 100, 1, 'single', 'img001.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Onion, Pineapple, Olives, Cayen Paper, ', 'unavailable'),
(2, 1, 'margarita', 200, 2, 'regular', 'img001.png', '', 'available'),
(3, 1, 'margarita', 300, 3, 'family', 'img001.png', '', 'available'),
(4, 1, 'margarita', 400, 4, 'XL family', 'img001.png', '', 'available'),
(5, 1, 'margarita', 500, 5, 'XXL party', 'img001.png', '', 'available'),
(6, 2, 'Vesuvio', 125, 6, 'Single', 'img002.png', 'Tomato Sauce, Tomato Sauce, Mushrooms, Pineapple, Sardines, Bacon, Curry, ', 'available'),
(7, 2, 'Vesuvio', 225, 7, 'Regular', 'img002.png', '', 'available'),
(8, 2, 'Vesuvio', 325, 8, 'Family', 'img002.png', '', 'available'),
(9, 2, 'Vesuvio', 425, 9, 'XL Family', 'img002.png', '', 'available'),
(10, 2, 'Vesuvio', 525, 10, 'XXL Party', 'img002.png', '', 'available'),
(11, 3, 'Funghi', 145, 11, 'Single', 'img003.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Bellpepper, Chicken, Pork Tenderloin, Schrimps, ', 'available'),
(12, 3, 'Funghi', 245, 12, 'Regular', 'img003.png', '', 'available'),
(13, 3, 'Funghi', 345, 13, 'Family', 'img003.png', '', 'available'),
(14, 3, 'Funghi', 445, 14, 'XL Family', 'img003.png', '', 'available'),
(15, 3, 'Funghi', 545, 15, 'XXL Party', 'img003.png', '', 'available'),
(16, 4, 'Altona', 134, 16, 'Single', 'img004.png', 'Tomato Sauce, Mozzarella Chesse, Bellpepper, Zuchini, Cayen Paper, Bearnaise Sauce, ', 'available'),
(17, 4, 'Altona', 234, 17, 'Regular', 'img004.png', '', 'available'),
(18, 4, 'Altona', 334, 18, 'Family', 'img004.png', '', 'available'),
(19, 4, 'Altona', 435, 19, 'XL Family', 'img004.png', '', 'available'),
(20, 4, 'Altona', 534, 20, 'XXL Party', 'img004.png', '', 'available'),
(21, 5, 'Hawaii', 156, 21, 'Single', 'img005.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Onion, Tuna, Pepperoni, ', 'available'),
(22, 5, 'Hawaii', 245, 22, 'Regular', 'img005.png', '', 'available'),
(23, 5, 'Hawaii', 367, 23, 'Family', 'img005.png', '', 'available'),
(24, 5, 'Hawaii', 456, 24, 'XL Family', 'img005.png', '', 'available'),
(25, 5, 'Hawaii', 546, 25, 'XXL Party', 'img005.png', '', 'available'),
(26, 6, 'Vegetarian', 125, 26, 'Single', 'img006.png', 'Tomato Sauce, Mozzarella Chesse, Ham, Mushrooms, Salami, Tabasco, Beef Tenderloin, ', 'available'),
(27, 6, 'Vegetarian', 225, 27, 'Regular', 'img006.png', '', 'available'),
(28, 6, 'Vegetarian', 325, 28, 'Family', 'img006.png', '', 'available'),
(29, 6, 'Vegetarian', 425, 29, 'XL Family', 'img006.png', '', 'available'),
(30, 6, 'Vegetarian', 525, 30, 'XXL Party', 'img006.png', '', 'available'),
(31, 7, 'Tropicana', 124, 31, 'Single', 'img007.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Bellpepper, Schrimps, Pepperoni, ', 'available'),
(32, 7, 'Tropicana', 234, 32, 'Regular', 'img007.png', '', 'available'),
(33, 7, 'Tropicana', 345, 33, 'Family', 'img007.png', '', 'available'),
(34, 7, 'Tropicana', 435, 34, 'XL Family', 'img007.png', '', 'available'),
(35, 7, 'Tropicana', 546, 35, 'XXL Party', 'img007.png', '', 'available'),
(36, 8, 'Mamma Mia', 134, 36, 'Single', 'img008.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ground Beef, Olives, Curry, ', 'available'),
(37, 8, 'Mamma Mia', 234, 37, 'Regular', 'img008.png', '', 'available'),
(38, 8, 'Mamma Mia', 345, 38, 'Family', 'img008.png', '', 'available'),
(39, 8, 'Mamma Mia', 456, 39, 'XL Family', 'img008.png', '', 'available'),
(40, 8, 'Mamma Mia', 567, 40, 'XXL Party', 'img008.png', '', 'available'),
(41, 9, 'Fantastico', 125, 41, 'Single', 'img009.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Onion, Bellpepper, Zuchini, Cayen Paper', 'available'),
(42, 9, 'Fantastico', 225, 42, 'Regular', 'img009.png', '', 'available'),
(43, 9, 'Fantastico', 325, 43, 'Family', 'img009.png', '', 'available'),
(44, 9, 'Fantastico', 425, 44, 'XL Family', 'img009.png', '', 'available'),
(45, 9, 'Fantastico', 525, 45, 'XXL Party', 'img009.png', '', 'available'),
(46, 10, 'Carousel', 136, 46, 'Single', 'img010.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Pineapple, Sardines, Olives, Cayen Paper, ', 'available'),
(47, 10, 'Carousel', 237, 47, 'Regular', 'img010.png', '', 'available'),
(48, 10, 'Carousel', 345, 48, 'Family', 'img010.png', '', 'available'),
(49, 10, 'Carousel', 456, 49, 'XL Family', 'img010.png', '', 'available'),
(50, 10, 'Carousel', 567, 50, 'XXL Party', 'img010.png', '', 'available'),
(51, 11, 'Calzone', 123, 51, 'Single', 'img011.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Onion, Bellpepper, Tabasco, Salami, ', 'available'),
(52, 11, 'Calzone', 234, 52, 'Regular', 'img011.png', '', 'available'),
(53, 11, 'Calzone', 345, 53, 'Family', 'img011.png', '', 'available'),
(54, 11, 'Calzone', 458, 54, 'XL Family', 'img011.png', '', 'available'),
(55, 11, 'Calzone', 568, 55, 'XXL Party', 'img011.png', '', 'available'),
(56, 12, 'Pepperoni', 145, 56, 'Single', 'img012.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Tabasco, Bellpepper, Meat Balls, ', 'available'),
(57, 12, 'Pepperoni', 245, 57, 'Regular', 'img012.png', '', 'available'),
(58, 12, 'Pepperoni', 345, 58, 'Family', 'img012.png', '', 'available'),
(59, 12, 'Pepperoni', 456, 59, 'XL Family', 'img012.png', '', 'available'),
(60, 12, 'Pepperoni', 578, 60, 'XXL Party', 'img012.png', '', 'available'),
(61, 13, 'Kerab Pizza', 178, 61, 'Single', 'img013.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Pineapple, Curry, Bearnaise Sauce, ', 'available'),
(62, 13, 'Kerab Pizza', 268, 62, 'Regular', 'img013.png', '', 'available'),
(63, 13, 'Kerab Pizza', 378, 63, 'Family', 'img013.png', '', 'available'),
(64, 13, 'Kerab Pizza', 478, 64, 'XL Family', 'img013.png', '', 'available'),
(65, 13, 'Kerab Pizza', 578, 65, 'XXL Party', 'img013.png', '', 'available'),
(66, 14, 'Crocodile Pizza', 156, 66, 'Single', 'img014.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Tuna, Sardines, Ground Beef, Pork Tenderloin, ', 'available'),
(67, 14, 'Crocodile Pizza', 256, 67, 'Regular', 'img014.png', '', 'available'),
(68, 14, 'Crocodile Pizza', 356, 68, 'Family', 'img014.png', '', 'available'),
(69, 14, 'Crocodile Pizza', 456, 69, 'XL Family', 'img014.png', '', 'available'),
(70, 14, 'Crocodile Pizza', 567, 70, 'XXL Party', 'img014.png', '', 'available'),
(71, 15, 'Taco Pizza', 123, 71, 'Single', 'img015.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Beef Tenderloin, Bearnaise Sauce, ', 'available'),
(72, 15, 'Taco Pizza', 234, 72, 'Regular', 'img015.png', '', 'available'),
(73, 15, 'Taco Pizza', 334, 73, 'Family', 'img015.png', '', 'available'),
(74, 15, 'Taco Pizza', 445, 74, 'XL Family', 'img015.png', '', 'available'),
(75, 15, 'Taco Pizza', 556, 75, 'XXL Party', 'img015.png', '', 'available'),
(76, 16, 'Bravisimo', 134, 76, 'Single', 'img016.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Meat Balls, Pepperoni, Olives, ', 'available'),
(77, 16, 'Bravisimo', 234, 77, 'Regular', 'img016.png', '', 'available'),
(78, 16, 'Bravisimo', 345, 78, 'Family', 'img016.png', '', 'available'),
(79, 16, 'Bravisimo', 456, 79, 'XL Family', 'img016.png', '', 'available'),
(80, 16, 'Bravisimo', 567, 80, 'XXL Party', 'img016.png', '', 'available'),
(81, 17, 'Opera', 125, 81, 'Single', 'img017.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Aubergine, Bellpepper, Zuchini, ', 'available'),
(82, 17, 'Opera', 225, 82, 'Regular', 'img017.png', '', 'available'),
(83, 17, 'Opera', 325, 83, 'Family', 'img017.png', '', 'available'),
(84, 17, 'Opera', 425, 84, 'XL Family', 'img017.png', '', 'available'),
(85, 17, 'Opera', 525, 85, 'XXL Party', 'img017.png', '', 'available'),
(86, 18, 'Romeo', 136, 86, 'Single', 'img018.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Bellpepper, Olives, Balogenese Sauce, ', 'available'),
(87, 18, 'Romeo', 237, 87, 'Regular', 'img018.png', '', 'available'),
(88, 18, 'Romeo', 345, 88, 'Family', 'img018.png', '', 'available'),
(89, 18, 'Romeo', 456, 89, 'XL Family', 'img018.png', '', 'available'),
(90, 18, 'Romeo', 567, 90, 'XXL Party', 'img018.png', '', 'available'),
(91, 19, 'Chicken Pizza', 123, 91, 'Single', 'img019.png', 'Tomato Sauce, Tomato Sauce, Mushrooms, Chicken, Pepperoni, Cayen Paper, ', 'available'),
(92, 19, 'Chicken Pizza', 234, 92, 'Regular', 'img019.png', '', 'available'),
(93, 19, 'Chicken Pizza', 345, 93, 'Family', 'img019.png', '', 'available'),
(94, 19, 'Chicken Pizza', 458, 94, 'XL Family', 'img011.png', '', 'available'),
(95, 19, 'Chicken Pizza', 568, 95, 'XXL Party', 'img019.png', '', 'available'),
(96, 20, 'Black & White', 124, 96, 'Single', 'img020.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Aubergine, Ground Beef, Bacon, ', 'available'),
(97, 20, 'Black & White', 234, 97, 'Regular', 'img020.png', '', 'available'),
(98, 20, 'Black & White', 345, 98, 'Family', 'img020.png', '', 'available'),
(99, 20, 'Black & White', 465, 99, 'XL Family', 'img020.png', '', 'available'),
(100, 20, 'Black & White', 567, 100, 'XXL Party', 'img020.png', '', 'available'),
(101, 21, 'Mexicana', 124, 101, 'Single', 'img021.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Chicken, Bacon, Beef Tenderloin, ', 'available'),
(102, 21, 'Mexicana', 234, 102, 'Regular', 'img021.png', '', 'available'),
(103, 21, 'Mexicana', 356, 103, 'Family', 'img021.png', '', 'available'),
(104, 21, 'Mexicana', 456, 104, 'XL Family', 'img021.png', '', 'available'),
(105, 21, 'Mexicana', 567, 105, 'XXL Party', 'img021.png', '', 'available'),
(106, 22, 'Frutti De Mare', 123, 106, 'Single', 'img022.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Schrimps, Beef Tenderloin, Egg, ', 'available'),
(107, 22, 'Frutti De Mare', 107, 234, 'Regular', 'img022.png', '', 'available'),
(108, 22, 'Frutti De Mare', 324, 108, 'Family', 'img022.png', '', 'available'),
(109, 22, 'Frutti De Mare', 435, 109, 'XL Family', 'img022.png', '', 'available'),
(110, 22, 'Frutti De Mare', 543, 110, 'XXL Party', 'img022.png', '', 'available'),
(111, 23, 'Quattro Stagione', 167, 111, 'Single', 'img023.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Aubergine, Balogenese Sauce, Egg, ', 'available'),
(112, 23, 'Quattro Stagione', 267, 112, 'Regular', 'img023.png', '', 'available'),
(113, 23, 'Quattro Stagione', 367, 113, 'Family', 'img023.png', '', 'available'),
(114, 23, 'Quattro Stagione', 467, 114, 'XL Family', 'img023.png', '', 'available'),
(115, 23, 'Quattro Stagione', 567, 115, 'XXL Party', 'img023.png', '', 'available'),
(116, 24, 'Parma', 125, 116, 'Single', 'img024.png', 'Tomato Sauce, Mozzarella Chesse, Mushrooms, Ham, Tuna, Onion, Pineapple, ', 'available'),
(117, 24, 'Parma', 225, 117, 'Regular', 'img024.png', '', 'available'),
(118, 24, 'Parma', 325, 118, 'Family', 'img024.png', '', 'available'),
(119, 24, 'Parma', 425, 119, 'XL Family', 'img024.png', '', 'available'),
(120, 24, 'Parma', 525, 120, 'XXL Party', 'img024.png', '', 'available'),
(121, 25, 'Capricciosa', 156, 121, 'Single', 'img025.png', 'Tomato Sauce, Mozzarella Chesse, Onion, Sardines, Chicken, Beef Tenderloin, ', 'available'),
(122, 25, 'Capricciosa', 267, 122, 'Regular', 'img025.png', '', 'available'),
(123, 25, 'Capricciosa', 367, 123, 'Family', 'img025.png', '', 'available'),
(124, 25, 'Capricciosa', 467, 124, 'XL Family', 'img025.png', '', 'available'),
(125, 25, 'Capricciosa', 567, 125, 'XXL Party', 'img025.png', '', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `prodid` int(11) NOT NULL,
  `prodname` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodid`, `prodname`, `description`, `photo`) VALUES
(24, 'accept me', 'jade', '1435826157_34323_102984536421445_1646666_n.jpg'),
(22, 'jade', 'movies', '1435723047_10983215_809517832461934_8387099412367675562_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` int(255) NOT NULL,
  `userid` int(33) NOT NULL,
  `username` varchar(22) NOT NULL,
  `ip_addr` varchar(66) NOT NULL,
  `session_start` varchar(100) NOT NULL,
  `session_end` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
