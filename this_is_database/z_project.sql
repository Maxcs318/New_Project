-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2019 at 08:03 AM
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
(14, '2019-08-09 04:46:09', '1', '090820191146091');

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
(8, 'ttt', 'ttt', 'ttt', 'user', '', '', '9990775155c3518a0d7917f7780b24aa', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(11) NOT NULL,
  `n_title` text NOT NULL,
  `n_detail` text NOT NULL,
  `n_price` int(11) NOT NULL,
  `n_quantity` int(11) NOT NULL,
  `n_date` text NOT NULL,
  `n_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_detail`, `n_price`, `n_quantity`, `n_date`, `n_image`) VALUES
(1, 'head', 'detail', 10, 999, '08 สิงหาคม 2562', '080820191614203rwQgd8hOb.png'),
(2, 'a', 'asd', 12, 2, '09 สิงหาคม 2562', '090820191048527tlpEQYqJx.jpg'),
(3, 'g', 'ghj', 9, 2555, '09 สิงหาคม 2562', '09082019104907rqH2omBRdF.jpg'),
(4, 'u', 'rty', 6, 345, '09 สิงหาคม 2562', '09082019104930Zah1Rg5hSk.png'),
(5, 'SS', 'asdf sdfsad fasdfs dgfasd gsda gasd gsd g asg sad gads g sd gsa dg sda gas dg rd hrt jytk yiu ui yl yiul o . io. ip /ui . u, y jm gd ms fmn gf sn gn g nfg jn yt kj krutk  ytuk yu k edgtk  edk ed k r uk ruk r uk edt gk et ks t k tu kr t kty k r tk ur k d k  tuk  rfdt k gtkm gh dm yeke yke k e', 100, 999, '09 สิงหาคม 2562', '090820191111303AVLAcr1Er.jpg'),
(6, 'S15', 'asd\nsgsg\nsdfgsadg\nsadgsa\ngasd\ngasdg\n', 1000, 122, '09 สิงหาคม 2562', '09082019111416Io9txSMInj.jpg'),
(7, 'cat', 'cat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcatcat catcat', 100, 199, '09 สิงหาคม 2562', '09082019111629Dhw8AcBZJQ.jpg'),
(8, 'JPG', 'a', 9, 789, '09 สิงหาคม 2562', '09082019111855u1biSHzBJX.png'),
(9, 'SS44', 'a', 5, 45, '09 สิงหาคม 2562', '090820191122210CpMQx4tMy.jpg'),
(10, 'ad', 'gg\n5\n4', 33, 4, '09 สิงหาคม 2562', '090820191123599TxW5eMjS0.jpg'),
(11, 'ka', 'asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.asd l \'; m,.\n5\n', 5, 78, '09 สิงหาคม 2562', '09082019113436T6ecLIzun6.jpg'),
(12, 'Cattwo', 'cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two cat two ', 500, 1990, '09 สิงหาคม 2562', '09082019114256ZbAj7LcSuu.jpg'),
(13, 'cat t', 'cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t cat t t t \n', 3, 4, '09 สิงหาคม 2562', '09082019115238ucmjxdcSA2.jpg'),
(14, 'cat fool', 'cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l cat f o o l ', 5000, 1, '09 สิงหาคม 2562', '09082019115523YTE0KOzkk8.jpg'),
(15, 'cat fi', 'cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi cat fi ', 44, 6, '09 สิงหาคม 2562', '09082019115722W4dpDep9cj.jpg'),
(16, 'cat sig', 'cat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sigcat sig cat sig', 4, 6, '09 สิงหาคม 2562', '09082019115809ZCwG02akr6.jpg'),
(17, 'cat savn', 'cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn cat savn ', 7, 77, '09 สิงหาคม 2562', '090820191201201o3eaGvLX6.jpg'),
(18, 'cat e g g', 'cat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g gcat e g g', 8, 888, '09 สิงหาคม 2562', '0908201912040020JT7b1dim.jpg'),
(19, 'cat ni', ' n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i n  i i i i i i', 5, 669, '09 สิงหาคม 2562', '090820191206369jqbfQrGsd.jpg'),
(20, 'cat ten', 'cat ten cat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat tencat ten', 101, 10101010, '09 สิงหาคม 2562', '09082019120902Wfhel33P7A.jpg'),
(21, 'cat ele', 'cat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat elecat ele', 11, 1111, '09 สิงหาคม 2562', '09082019121247Sy4d6NQrHj.jpg'),
(22, 'cat twe', 'cat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twecat twe', 12, 12, '09 สิงหาคม 2562', '090820191226160lKrhlenfS.jpg'),
(23, 'cat th', 'cat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat thcat th', 13, 13000, '09 สิงหาคม 2562', '090820191227551cOZzaQMym.jpg'),
(24, 'cat ft', 'cat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ftcat ft', 14, 41, '09 สิงหาคม 2562', '09082019122832n6aWsFqGEu.jpg'),
(25, 'cat fit', 'cat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fitcat fit', 5, 55, '09 สิงหาคม 2562', '0908201912314209k5VsotJp.jpg'),
(26, 'cat st', 'cat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat stcat st', 66, 16, '09 สิงหาคม 2562', '09082019123232IjKbqlYkX7.jpg'),
(27, 'cat set', 'cat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat setcat set\n', 77, 17, '09 สิงหาคม 2562', '09082019123444jaA0WER4Uy.jpg'),
(28, 'cat et', 'cat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat etcat et', 888, 8, '09 สิงหาคม 2562', '09082019123611QHPE4oYeSt.jpg'),
(29, 'cat null', 'cat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat nullcat null', 44, 44, '09 สิงหาคม 2562', '09082019124513FgaIbxwQX7.jpg'),
(30, 'cat null 2', 'cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2cat null 2', 55, 555, '09 สิงหาคม 2562', '09082019124800mnkLNb6wSJ.jpg'),
(31, 'cat null 3', 'cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3cat null 3', 44, 346, '09 สิงหาคม 2562', '09082019124947AY4AngQvTz.jpg'),
(32, 'S222', ' S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3 S 3', 40, 44, '09 สิงหาคม 2562', '09082019125137FB9tcOKPcr.jpg'),
(33, 'JPG', 'ag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h jag h j\n\n', 8, 9, '09 สิงหาคม 2562', '09082019125244fsLD93iI3W.png'),
(34, 'Cat', 'cat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat againcat again\n', 5, 5, '09 สิงหาคม 2562', '09082019125357PHI6FDxVET.jpg'),
(35, 'ah', 'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'a h j k l  ; \'\n', 55, 5000000, '09 สิงหาคม 2562', '09082019125457EGDXs0mgbx.png');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logged`
--
ALTER TABLE `logged`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
