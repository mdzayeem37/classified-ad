-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 06:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ad-listing`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'Sports', 2),
(31, 'Entertainment', 2),
(32, 'Politics', 3),
(33, 'Health', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `ad_price` int(100) NOT NULL,
  `ad_address` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--




-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Yahoo Baba News', 'news.jpg', '© Copyright 2020 News | Powered by <a href=\"https://www.yahoobaba.net\">Yahoo Baba News</a>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(30, 'Salman', 'Khan', 'salman', '03346657feea0490a4d4f677faa0583d', 0),
(27, 'Yahoo', 'Baba', 'yahoobaba', '21232f297a57a5a743894a0e4a801fc3', 1),
(31, 'Anil ', 'Kapoor', 'anil', '71b9b5bc1094ee6eaeae8253e787d654', 0),
(32, 'Madhuri', 'Dixit', 'madhuri', '7ebc2c8aa51f075ccc653a0f8e86fbb4', 0),
(33, 'Amir', 'Khan', 'amir', '63eefbd45d89e8c91f24b609f7539942', 1),
(34, 'Shahid', 'Kapoor', 'shahid', 'f3224d90c778d5e456b49c75f85dd668', 0),
(35, 'Kriti', 'Sanon', 'kriti', 'f19e1368ef58fde93d78ba396f9046e3', 0),
(36, 'Kajal', 'Aggarwal', 'kajal', '7faafcbcc6456af72597bc2f3a9306b4', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
