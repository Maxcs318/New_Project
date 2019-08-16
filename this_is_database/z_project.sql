-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2019 at 10:37 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `z_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `a_id` int(11) NOT NULL,
  `a_title` text NOT NULL,
  `a_detail` text NOT NULL,
  `a_date` text NOT NULL,
  `a_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`a_id`, `a_title`, `a_detail`, `a_date`, `a_image`) VALUES
(1, 'Iron-cat 4', 'Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4', '09 สิงหาคม 2562', '09082019150155PXzaYKlybN.jpg'),
(2, 'Iron-cat 5', 'ต่อจาก 4 นั่นแหละ', '09 สิงหาคม 2562', '09082019151749TOkyl2rIYq.jpg'),
(3, 'Iron-cat 6', 'ต่อจาก 5 ครับ', '09 สิงหาคม 2562', '09082019155938qOKbmxTRJ1.jpg'),
(4, 'Article NEW', 'article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article \n', '13 สิงหาคม 2562', '13082019152524yLd4dlsEJh.png'),
(5, 'บทความใหม่ กว่าเดิม', ' a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e ', '15 สิงหาคม 2562', '15082019172038rsiwX4FZ2S.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logged`
--

CREATE TABLE `logged` (
  `l_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `l_id_m_id` text NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logged`
--

INSERT INTO `logged` (`l_id`, `time`, `l_id_m_id`, `token`) VALUES
(62, '2019-08-16 08:19:29', '1', '160820191519291');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `m_id` int(11) NOT NULL,
  `m_firstname` varchar(50) NOT NULL,
  `m_lastname` varchar(50) NOT NULL,
  `m_username` varchar(50) NOT NULL,
  `m_status` varchar(50) NOT NULL,
  `m_phone` varchar(20) NOT NULL,
  `m_email` text NOT NULL,
  `m_password` text NOT NULL,
  `m_imageprofile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`m_id`, `m_firstname`, `m_lastname`, `m_username`, `m_status`, `m_phone`, `m_email`, `m_password`, `m_imageprofile`) VALUES
(1, 'DuangdeeGG', 'Moolkham', 'max', 'admin', '0987654321', 'max@gmail.com', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', ''),
(2, 'm', 'm', 'xxx', 'user', '', '', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', ''),
(3, 'zzz First', 'zzz Last', 'zzz', 'user', '', '', 'f3abb86bd34cf4d52698f14c0da1dc60', ''),
(4, 'ggg', 'ggg', 'ggg', 'user', '', '', 'ba248c985ace94863880921d8900c53f', ''),
(5, 'kkk', 'kkk', 'kkk', 'user', '', '', 'cb42e130d1471239a27fca6228094f0e', ''),
(6, 'ooo', 'ooo', 'ooo', 'user', '', '', '7f94dd413148ff9ac9e9e4b6ff2b6ca9', ''),
(7, 'aaa', 'aaa', 'aaa', 'user', '', '', '47bce5c74f589f4867dbd57e9ca9f808', ''),
(8, 'ttt', 'ttt', 'ttt', 'user', '', '', '9990775155c3518a0d7917f7780b24aa', ''),
(9, 'xyz', 'cb', 'asd', 'user', '', '', '7815696ecbf1c96e6894b779456d330e', ''),
(10, 'max', 'max', 'max2', 'user', '', '', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(11) NOT NULL,
  `n_title` text NOT NULL,
  `n_detail` text NOT NULL,
  `n_date` text NOT NULL,
  `n_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_detail`, `n_date`, `n_image`) VALUES
(1, 'First News', 'First NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst News', '09 สิงหาคม 2562', '09082019150024t7cOlWKSAM.png'),
(2, 'Second News', 'Second NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond NewsSecond News', '09 สิงหาคม 2562', '09082019150413rZqDvFddML.png'),
(3, 'Third News', 'Third NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird News', '09 สิงหาคม 2562', '09082019150538dqEi1JDxud.png'),
(4, '4', '4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 ', '09 สิงหาคม 2562', '090820191506457UZem5eaDf.png'),
(5, '5 ', '5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 \n', '09 สิงหาคม 2562', '09082019150809lZFJ5K9hOQ.png'),
(6, '6', 'six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six ', '09 สิงหาคม 2562', '09082019150930c2a0LEweth.png'),
(7, 'seven', 'seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven ', '09 สิงหาคม 2562', '09082019151042et3bMGNViA.png'),
(8, '8 ', '8 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 8\n', '09 สิงหาคม 2562', '09082019151447qBnbBdOqZQ.png'),
(9, '9', '9 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 9', '09 สิงหาคม 2562', '09082019151537mANNBpVkt6.png'),
(10, '10', 'ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten \n', '09 สิงหาคม 2562', '090820191516536Kv48Z9xTO.png'),
(11, 'ข่าวใหม่', 'ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ', '13 สิงหาคม 2562', '1308201916025846MMVsNVRZ.jpg'),
(12, 'ข่าวใหม่กว่า', 'ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ', '16 สิงหาคม 2562', '160820191206149RJtSFgbpz.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_title` text NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` text NOT NULL,
  `p_price2` text NOT NULL,
  `p_image` text NOT NULL,
  `p_amount` text NOT NULL,
  `p_type` text NOT NULL,
  `p_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_title`, `p_detail`, `p_price`, `p_price2`, `p_image`, `p_amount`, `p_type`, `p_date`) VALUES
(1, 'green', 'green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green ', '500', '5000', '09082019165757PR6HC4zZsj.jpg', '6', 'book', '09 สิงหาคม 2562'),
(2, 'training to Iron-cat', 'คุณก็เป็นซุปเปอร์แมวมหาปะลัยได้', '40000', '1000', '090820191702553xMQci4hWZ.jpg', '999', 'training_course', '09 สิงหาคม 2562'),
(3, 'Book 2', 'green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 ', '5000', '4999', '09082019174606sUcnOWBaq9.jpg', '10', 'book', '09 สิงหาคม 2562'),
(4, 'green SS3', 'SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 ', '666', '665', '09082019175238xhZP5a2yN0.jpg', '4', 'book', '09 สิงหาคม 2562'),
(5, 'training to Iron-cat 2', 'เป็นอีกละ 2', '100001', '100000', '09082019175406BvwohdpUE1.jpg', '60', 'training_course', '09 สิงหาคม 2562'),
(6, 'Book', 'book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book ', '888', '999', '13082019102929JvKmF3XBJt.png', '101010', 'book', '13 สิงหาคม 2562'),
(7, 'Book 2', 'Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2', '57', '56', '13082019103011jP31W0Co8P.jpg', '55', 'book', '13 สิงหาคม 2562'),
(8, 'Training', 'cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man ', '5000000', '1000', '13082019104825MpWq8fV6YC.jpg', '10', 'training_course', '13 สิงหาคม 2562'),
(9, 'Book Again', 'Book AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook Again', '1000', '999', '13082019150402pKRyoCRMWm.jpg', '59', 'book', '13 สิงหาคม 2562'),
(10, 'Course A', 'ad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad ad', '99', '9', '13082019150823Fup1QEgWBX.png', '59', 'training_course', '13 สิงหาคม 2562'),
(11, 'Train to tree', 'train human to tree', '999', 'free', '13082019150931dkUJeuHBuW.jpg', '999', 'training_course', '13 สิงหาคม 2562');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `logged`
--
ALTER TABLE `logged`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logged`
--
ALTER TABLE `logged`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
