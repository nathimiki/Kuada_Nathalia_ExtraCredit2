-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2018 at 08:59 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_video`
--

-- --------------------------------------------------------

--
-- Table structure for table `more`
--

DROP TABLE IF EXISTS `more`;
CREATE TABLE IF NOT EXISTS `more` (
  `more_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `more_image1` varchar(150) NOT NULL,
  `more_image2` varchar(150) NOT NULL,
  `more_image3` varchar(150) NOT NULL,
  `more_synopsis` text NOT NULL,
  PRIMARY KEY (`more_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `more`
--

INSERT INTO `more` (`more_id`, `more_image1`, `more_image2`, `more_image3`, `more_synopsis`) VALUES
(1, 'avengers_image1.jpg', 'avengers_image2.jpg', 'avengers_image3.jpg', 'Nick Fury is the director of S.H.I.E.L.D., an international peace-keeping agency. The agency is a who\'s who of Marvel Super Heroes, with Iron Man, The Incredible Hulk, Thor, Captain America, Hawkeye and Black Widow. When global security is threatened by Loki and his cohorts, Nick Fury and his team will need all their powers to save the world from disaster which is formed by Loki and his team.'),
(2, 'sw_image1.jpg', 'sw_image2.jpg', 'sw_image3.jpg', '30 years after the defeat of Darth Vader and the Empire, Rey, a scavenger from the planet Jakku, finds a BB-8 droid that knows the whereabouts of the long lost Luke Skywalker. Rey, as well as a rogue stormtrooper and two smugglers, are thrown into the middle of a battle between the Resistance and the daunting legions of the First Order.'),
(3, 'stranger_image1.jpg', 'stranger_image2.jpg', 'stranger_image3.jpg', 'When Will Byers suddenly goes missing, the whole town of Hawkins, Indiana, turns upside down. Many people are on the search for Will, including his mother, Joyce; his brother, Jonathan; his friends--Mike, Dustin, and Lucas; the police chief, Jim Hopper; and other notable people. But one thing leads to another, creating a supernatural trail. And things get even weirder when a little girl with a shaved head comes into the story.');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_genre` varchar(50) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `vid_name`, `vid_path`, `vid_desc`, `vid_genre`, `vid_thumb`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'When an unpredictable power source called is stolen, the Avengers have to unite and save the world.', 'Adventure', 'avengers.jpg'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'Three decades after the Empire\'s defeat, a new threat arises in the militant First Order. ', 'Science Fiction', 'forceawakens.jpg'),
(3, 'Stranger Things', 'strangerthings.mp4', 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying forces in order to get him back.', 'Science Fiction', 'strangerthings.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
