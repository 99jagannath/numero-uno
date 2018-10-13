-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 13, 2018 at 02:52 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nu2`
--

-- --------------------------------------------------------

--
-- Table structure for table `gameplay`
--

DROP TABLE IF EXISTS `gameplay`;
CREATE TABLE IF NOT EXISTS `gameplay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `level` int(2) NOT NULL,
  `clear_time` datetime NOT NULL,
  `attempts` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nu`
--

DROP TABLE IF EXISTS `nu`;
CREATE TABLE IF NOT EXISTS `nu` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phonenumber` varchar(1000) NOT NULL,
  `college` varchar(1000) NOT NULL,
  `referal` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nu`
--

INSERT INTO `nu` (`id`, `username`, `email`, `password`, `phonenumber`, `college`, `referal`) VALUES
(1, 'jagannath', '99jagannath@gmail.com', '123456', '9040522520', 'nitr', ''),
(2, 'jagannath', '99jagannath@gmail.com', '12345689', '9040522521', 'nitr', ''),
(3, 'jagannath', '99jagannath1@gmail.com', '987654321', '9040522529', 'nitr', ''),
(4, 'jagannath', 'emailjaga@gmail.com', 'qwertyu', '7327893450', 'nitr', ''),
(5, 'jagannath', '99jagannath6@gmail.com', 'zxcvbnm', '9040522523', 'nitr', ''),
(6, 'jagannath', 'jfjjnkn@hk', 'asdfghjkl', '7327893451', 'nitr', ''),
(7, 'jagannath', 'd,fndjgbjdfbj@gmail.com', 'zaqwsx', '9040522534', 'nitr', ''),
(8, 'jagannath', '33jagannath@gmail.com', 'mjuyhn', '8847878189', 'nitr', 'referal'),
(9, 'jagannath', '993jagannath@gmail.com', 'bgtrfv', '8847878182', 'nitr', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `level` int(2) NOT NULL,
  `html` text NOT NULL,
  `answer` varchar(40) NOT NULL,
  `url_mask` varchar(12) DEFAULT NULL,
  `favicon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_type` int(1) NOT NULL DEFAULT '0',
  `oauth_id` bigint(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(5) NOT NULL,
  `presence` varchar(40) NOT NULL,
  `auth_code` varchar(40) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '1',
  `location` varchar(40) NOT NULL,
  `institute` varchar(60) NOT NULL,
  `registered_in` datetime NOT NULL,
  `verified` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_temp`
--

DROP TABLE IF EXISTS `users_temp`;
CREATE TABLE IF NOT EXISTS `users_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_type` int(1) NOT NULL DEFAULT '0',
  `oauth_id` bigint(20) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` int(1) NOT NULL,
  `location` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_stats`
--

DROP TABLE IF EXISTS `user_stats`;
CREATE TABLE IF NOT EXISTS `user_stats` (
  `user_id` int(11) NOT NULL,
  `level` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
