-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 04:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(1, 2, 'img/mj1.png', '20th bday celeb with my love', NULL),
(2, 2, 'img/mj2.png', 'balai isabel shoot', NULL),
(3, 2, 'img/mj3.png', 'MOA captured by sir cj', NULL),
(4, 2, 'img/mj4.png', 'dunkin\' date', NULL),
(5, 3, 'img/jhs1.png', 'get', NULL),
(6, 3, 'img/jhs2.jpg', 'together', NULL),
(7, 3, 'img/jhs3.jpg', 'indaker\'s dance lesson', NULL),
(8, 3, 'img/jhs4.png', 'fresh from david\'s salon', NULL),
(9, 4, 'img/shs1.jpg', 'first onight w/them', NULL),
(10, 4, 'img/shs2.jpg', 'ft. smirnoff', NULL),
(11, 4, 'img/shs3.png', 'Kenneth visited us at PUPSTC', NULL),
(12, 4, 'img/shs4.png', 'photoshoot', NULL),
(13, 5, 'img/c1.jpg', 'sb', NULL),
(14, 5, 'img/c2.jpg', 'bk', NULL),
(15, 5, 'img/c3.png', 'kanluran cafe', NULL),
(16, 5, 'img/c4.jpg', 'filming', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(900) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(1, 'Friendships', NULL, 'Friendships hold a special place in my heart, especially those formed during my junior high school, senior high school, and college years. These are the people who have seen me grow, celebrated my quirks, and stuck by me through thick and thin. They’re not just friends—they’re my partners-in-crime, my comedic relief, and my confidants rolled into one. \r\n\r\nEvery moment with them feels like an adventure, a nonstop ride of hilarious banter, inside jokes,  and witty comebacks that leave us all laughing until our stomachs hurt. Whether we’re reminiscing about old times, creating new memories, or just being our unfiltered selves, there’s never a dull moment. They bring out the best in me, reminding me that life’s greatest joys are found in shared laughter and heartfelt connections. These friendships are treasures I’ll cherish forever, a constant source of fun and positivity that lights up my w', NULL, 'img/background.png', NULL),
(2, 'Love of my Life', 'In a relationship', NULL, NULL, 'img/mjjm.png', NULL),
(3, 'Junior Highschool', 'Tanauan Institute Inc.', NULL, NULL, 'img/jhs.png', NULL),
(4, 'Senior Highschool', 'Tanauan city Integrated Highschool', NULL, NULL, 'img/shs.png', NULL),
(5, 'College', 'Polytechnic University of the Philippines', NULL, NULL, 'img/college.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
