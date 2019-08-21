-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 10:49 AM
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
(5, 'บทความใหม่ กว่าเดิม', ' a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e ', '15 สิงหาคม 2562', '15082019172038rsiwX4FZ2S.jpg'),
(6, 'aticle 19', ' a a a a a  t t t t t  i i i i  c c c c c  ll l l l  e e e e', '19 สิงหาคม 2562', '19082019153152dwhref5eGu.jpg'),
(7, 'ข่าวใหม่จัดๆ', 'จัดๆ', '20 สิงหาคม 2562', '20082019143743ZTg2RdaMSc.jpg'),
(8, 'บทความใหม่ ๆ ๆ ๆ ๆ ๆ ๆ ', ' ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ', '20 สิงหาคม 2562', '20082019144153PkAqNJ2lyb.jpg'),
(9, 'บทความ แมวใหม่', 'แม่โจ้ Go Green', '20 สิงหาคม 2562', '20082019144240njzo78Kpv9.jpg'),
(10, '=..=', '-..-', '20 สิงหาคม 2562', '200820191524297eSLcHeKhy.jpg');

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
(14, '2019-08-20 08:38:16', '1', '200820191538161');

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
(3, 'zzz First', 'zzz Last', 'zzz', 'admin', '', '', 'f3abb86bd34cf4d52698f14c0da1dc60', ''),
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
  `n_image` text NOT NULL,
  `n_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_detail`, `n_date`, `n_image`, `n_update_date`) VALUES
(1, 'First News', 'First NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst News', '09 สิงหาคม 2562', '09082019150024t7cOlWKSAM.png', '2019-08-21 08:40:29'),
(2, 'Second News', '2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 ', '09 สิงหาคม 2562', '21082019153515QL56ZnnvcX.jpg', '2019-08-21 08:40:29'),
(3, 'Third News', 'Third NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird News', '09 สิงหาคม 2562', '09082019150538dqEi1JDxud.png', '2019-08-21 08:40:29'),
(4, '4', '4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 ', '09 สิงหาคม 2562', '090820191506457UZem5eaDf.png', '2019-08-21 08:40:29'),
(5, '5 ', '5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 \n', '09 สิงหาคม 2562', '09082019150809lZFJ5K9hOQ.png', '2019-08-21 08:40:29'),
(6, '6', 'six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six ', '09 สิงหาคม 2562', '09082019150930c2a0LEweth.png', '2019-08-21 08:40:29'),
(7, 'seven', 'seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven ', '09 สิงหาคม 2562', '09082019151042et3bMGNViA.png', '2019-08-21 08:40:29'),
(8, '8 ', '8 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 8\n', '09 สิงหาคม 2562', '09082019151447qBnbBdOqZQ.png', '2019-08-21 08:40:29'),
(9, '9', '9 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 9', '09 สิงหาคม 2562', '09082019151537mANNBpVkt6.png', '2019-08-21 08:40:29'),
(10, '10', 'ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten \n', '09 สิงหาคม 2562', '090820191516536Kv48Z9xTO.png', '2019-08-21 08:40:29'),
(11, 'ข่าวใหม่', 'ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ', '13 สิงหาคม 2562', '1308201916025846MMVsNVRZ.jpg', '2019-08-21 08:40:29'),
(12, 'ข่าวใหม่กว่า', 'ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ', '16 สิงหาคม 2562', '160820191206149RJtSFgbpz.jpg', '2019-08-21 08:40:29'),
(13, 'new news 19/8', 'newnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n n', '19 สิงหาคม 2562', '19082019145437d1dAywg3Hs.jpg', '2019-08-21 08:40:29'),
(14, 'new 2', 'a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a ', '19 สิงหาคม 2562', '190820191503495ywC49VpKD.jpg', '2019-08-21 08:40:29'),
(15, 'JPG is real ?', 'jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh ', '19 สิงหาคม 2562', '19082019151226KMRl8GHzxN.png', '2019-08-21 08:40:29'),
(16, 'newxxxaaarrr', ' mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa ', '19 สิงหาคม 2562', '19082019151815XMA0Bn1Eh1.jpg', '2019-08-21 08:40:29'),
(17, 'az', 'za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za ', '19 สิงหาคม 2562', '19082019151920lxnC2gscfr.png', '2019-08-21 08:40:29'),
(18, 'ข่าวใหม่จัดๆ กว่าเมื่อกี้', 'จัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีก', '20 สิงหาคม 2562', '20082019143841OcxCtsNGk9.png', '2019-08-21 08:40:29'),
(19, 'จัดๆ อีกละ', 'จัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆ', '20 สิงหาคม 2562', '200820191441074njfofI007.jpg', '2019-08-21 08:40:29'),
(20, 'แมว 15', 'แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15', '20 สิงหาคม 2562', '20082019145749zdj45UG1Zc.jpg', '2019-08-21 08:40:29'),
(21, 'New 15 21', '21 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 21', '20 สิงหาคม 2562', '20082019152127XkDlhj6IkC.png', '2019-08-21 08:40:29'),
(22, 'Edit ID 22', '22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit', '20 สิงหาคม 2562', '21082019151818MR58uLmxY9.jpg', '2019-08-21 08:49:12'),
(23, '23 Cat03HD de', 'cat 03 HD\n21082019152855D5tKjouGgR', '21 สิงหาคม 2562', '21082019152855D5tKjouGgR.jpg', '2019-08-21 08:48:16');

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
(11, 'Train to tree', 'train human to tree', '999', 'free', '13082019150931dkUJeuHBuW.jpg', '999', 'training_course', '13 สิงหาคม 2562'),
(12, 'book new  19', 'book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new ', '49', '48', '190820191525463GSonY6Y1E.png', '40', 'book', '19 สิงหาคม 2562'),
(13, 'm m m', 'n n n', '555', '554', '20082019152710f4xtdmNQmx.png', '333', 'book', '20 สิงหาคม 2562'),
(14, 'cat03', 'real cat 03', '999', '888', '21082019111357IkN3cWoYuo.jpg', '1000', 'book', '21 สิงหาคม 2562');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `v_id` int(11) NOT NULL,
  `v_name` text NOT NULL,
  `v_description` text NOT NULL,
  `v_link` text NOT NULL,
  `v_room` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`v_id`, `v_name`, `v_description`, `v_link`, `v_room`) VALUES
(1, 'videos 1', 'no description', 'https://www.youtube.com/embed/pNNMr5glICM', '1'),
(2, 'videos 2', 'no description 2', 'https://www.youtube.com/embed/Y1QZOprK7PQ', '1'),
(3, 'videos 3', 'no description 3', 'coming soon', '1'),
(4, 'videos new 1', 'no description new 1', 'https://www.youtube.com/embed/JZELmUooBlY', '2'),
(5, 'videos new 2', 'no description new 2', 'coming soon new', '2'),
(37, 'new 1', 'Marshmello ft. Bastille - Happier (Legendado PT/BR)', 'https://www.youtube.com/embed/k5DZBdL6qnA', '11'),
(38, 'new 2', 'Khalid - Talk (Audio)', 'https://www.youtube.com/embed/Y1QZOprK7PQ', '11'),
(39, 'DMT', '...', 'https://www.youtube.com/embed/c40lDlK-Gk8', '11'),
(40, 'The Chainsmokers - Closer / Lauv - I Like Me Better [Mashup]', '... wtf?', 'https://www.youtube.com/embed/XT_MY30IeY4', '11'),
(41, 'Khalid - Young Dumb & Broke (Official Music Video)', 'Young Dumb and Broke', 'https://www.youtube.com/embed/IPfJnp1guPc', '11'),
(42, 'Louis Tomlinson - Back to You (Official Video) ft. Bebe Rexha, Digital Farm Animals', 'Back to you', 'https://www.youtube.com/embed/-HjpL-Ns6_A', '11'),
(43, 'Louis Tomlinson - Back to You (Official Video) ft. Bebe Rexha, Digital Farm Animals', 'Back to you', 'https://www.youtube.com/embed/-HjpL-Ns6_A', '3');

-- --------------------------------------------------------

--
-- Table structure for table `video_room`
--

CREATE TABLE `video_room` (
  `vr_id` int(11) NOT NULL,
  `vr_name` text NOT NULL,
  `vr_description` text NOT NULL,
  `vr_owner` text NOT NULL,
  `vr_create_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video_room`
--

INSERT INTO `video_room` (`vr_id`, `vr_name`, `vr_description`, `vr_owner`, `vr_create_date`) VALUES
(1, 'New Videos', 'description video 1', '1', '16 สิงหาคม 2562'),
(2, 'New Videos2', 'description 2', '1', '16 สิงหาคม 2562'),
(3, 'the video training 1', 'training one', '1', '19 สิงหาคม 2562'),
(11, 'NEW Room 20/8/ 14:18', 'nwewasda', '3', '20 สิงหาคม 2562');

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
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `video_room`
--
ALTER TABLE `video_room`
  ADD PRIMARY KEY (`vr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `logged`
--
ALTER TABLE `logged`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `video_room`
--
ALTER TABLE `video_room`
  MODIFY `vr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
