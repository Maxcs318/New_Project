-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 07:56 AM
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
  `a_category` varchar(50) NOT NULL,
  `a_create_date` varchar(50) NOT NULL,
  `a_image` text NOT NULL,
  `a_update_date` varchar(50) NOT NULL,
  `a_file_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`a_id`, `a_title`, `a_detail`, `a_category`, `a_create_date`, `a_image`, `a_update_date`, `a_file_key`) VALUES
(26, 'dff', 'GH', '', '28 สิงหาคม 2562 time 14:30:57', '28082019143057gfIsFtqvdG.jpg', '', 'A28082019143057nRGwRLrMhr'),
(27, 'gr', 'een', '', '28 สิงหาคม 2562 time 14:34:58', '28082019143458YRshJqMn9b.jpg', '', 'A28082019143458VGArYsy4IT'),
(28, 'gt', 'eet', '', '28 สิงหาคม 2562 time 14:36:06', '28082019143606Jc6B8lobDE.png', '', 'A28082019143606uSLrfYRDZH'),
(29, 'gt', 'eet', '', '28 สิงหาคม 2562 time 14:41:27', '28082019144127craeSAHeiv.png', '', 'A28082019144127s5602gASdF'),
(30, 'gt', 'eet', '', '28 สิงหาคม 2562 time 14:42:18', '28082019144218cUe39k7soS.png', '', 'A28082019144218EcXgPjrH1C'),
(32, 'ag', 'f', '', '28 สิงหาคม 2562 time 14:58:47', '28082019145847rvTLxY1ceH.jpg', '', 'A280820191458472XIBtkZdsK'),
(33, 'ag', 'f', '', '28 สิงหาคม 2562 time 14:59:29', '280820191459296NZdiGRIkt.jpg', '', 'A280820191459299sebAFXeeO'),
(34, 'agffafasf now', 'f', '', '28 สิงหาคม 2562 time 14:59:57', '28082019145957nlYnuV7tNE.jpg', '', 'A28082019145957SimOCe0BkZ'),
(35, 'last of us', 'lou', '', '28 สิงหาคม 2562 time 15:23:05', '28082019152305br7Grhgqrs.png', '', 'A28082019152305g7qGel8NEL'),
(36, 'last of us2', 'lou2', '', '28 สิงหาคม 2562 time 15:25:27', '28082019152527KJZC9NoZ6y.png', '', 'A28082019152527Mh9NRwHxaY'),
(37, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:35:54', '28082019153554E68uyjD2xf.jpg', '', 'A28082019153554TkE9eVAzUM'),
(38, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:38:38', '28082019153838hPmAgyOzjN.jpg', '', 'A28082019153838C9yRkzesxv'),
(39, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:39:24', '28082019153924gqe5sCQuNZ.jpg', '', 'A28082019153924YMQ14bTVxt'),
(40, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:40:10', '28082019154010lMJ1qRv35h.jpg', '', 'A28082019154010rltroIQdXu'),
(41, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:41:07', '28082019154107iXztcUsZrT.jpg', '', 'A28082019154107MkTKB9i2g0'),
(42, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:43:26', '28082019154326IMwJtPXjIe.jpg', '', 'A28082019154326o5W8VwF5di'),
(43, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:45:00', '28082019154500xAQc4ULtzf.jpg', '', 'A28082019154500tGbjjVnqct'),
(44, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:46:56', '28082019154656fdkD2ONWRw.jpg', '', 'A28082019154656dUgUR1gdYV'),
(45, 'sf', 'gg', '', '28 สิงหาคม 2562 time 15:47:51', '28082019154751gXB1yuvHr6.jpg', '', 'A28082019154751fVrhIWEfjR'),
(46, 'hhh', 'asd', '', '28 สิงหาคม 2562 time 15:49:37', '280820191549375MrOxWBgnj.jpg', '', 'A280820191549372EL719zBWZ'),
(54, 'test files', 'test', '', '29 สิงหาคม 2562 time 16:40:14', '29082019164014T4vMCwHhR0.png', '', 'A29082019164014lnMb0klhSL'),
(55, 'ad test', 'test file', '', '29 สิงหาคม 2562 time 17:02:09', '29082019170209EMeHIkt11u.jpg', '', 'A29082019170209I8679jUlvg'),
(56, 'a', 'g', '', '29 สิงหาคม 2562 time 17:05:08', '29082019170508bD5iYaLEP4.jpg', '', 'A29082019170508L1RnflDfgi'),
(57, 'test zip files Edit test', 'test download zip', '', '30 สิงหาคม 2562 time 11:25:55', '300820191125557PMdcOiiyL.jpg', '02 กันยายน 2562 time 12:40:57', 'A30082019112555RY1hRjOFn5'),
(58, 'head', 'detail', '', '02 กันยายน 2562 time 15:16:19', '02092019151619xHjkzXeTyx.png', '', 'A020920191516198ITB5UXmpw'),
(59, 'a', 'a ant มด', '', '02 กันยายน 2562 time 15:56:03', '020920191556034P7tFbCxUs.png', '', 'A02092019155603eiDRbg88QC'),
(60, 'อีดิท น่าสนใจ', 'ๆๆๆ', '2', '02 กันยายน 2562 time 15:57:11', '02092019155711EbEiLIKs9z.jpg', '03 กันยายน 2562 time 12:08:59', 'A02092019155711g2BmyvY4hj'),
(61, 'ม', 'ท', '', '02 กันยายน 2562 time 16:00:31', '02092019160031PUYYLapvoK.png', '02 กันยายน 2562 time 16:06:56', 'A02092019160031gI0JGt3rS5'),
(62, 'ฟฟฟฟฟฟฟฟฟฟฟ', 'ห้เหก้ หเหก', '1', '02 กันยายน 2562 time 16:02:21', '02092019160221m7zZF9bPeR.png', '05 กันยายน 2562 time 11:53:00', 'A020920191602217coAqFI6Fr'),
(63, 'ฟหกด่าสว', 'OP', '1', '02 กันยายน 2562 time 16:08:08', '020920191608089PIE1Vxwza.jpg', '05 กันยายน 2562 time 11:38:27', 'A02092019160808MDA7LoC8Tj'),
(64, 'DD 64', 'no more i DD', '2', '02 กันยายน 2562 time 16:08:45', '05092019143744FakhXW9Gs8.png', '05 กันยายน 2562 time 14:37:44', 'A020920191608454KsIrF78nF'),
(65, 'JPG', 'heal', '1', '05 กันยายน 2562 time 14:48:25', '05092019144825B8dLW516j9.png', '', 'A05092019144825Mr8tYRCvJU'),
(66, 'h', 'a', '1', '05 กันยายน 2562 time 15:20:21', '05092019152021lwPf3yBGag.png', '', 'A05092019152021czgkzE7zkG'),
(67, 'Head Ar', 'DD', '2', '05 กันยายน 2562 time 15:21:49', '05092019152149ZEnrAF1wFk.jpg', '09 กันยายน 2562 time 12:23:07', 'A05092019152149bgqDejkcA9');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `ac_id` int(11) NOT NULL,
  `ac_title` varchar(100) NOT NULL,
  `ac_description` text NOT NULL,
  `ac_create_date` varchar(50) NOT NULL,
  `ac_update_date` varchar(50) NOT NULL,
  `ac_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`ac_id`, `ac_title`, `ac_description`, `ac_create_date`, `ac_update_date`, `ac_image`) VALUES
(1, 'บทความน่าสนใจ', '', '', '', ''),
(2, 'บทความเทคนิคดีๆ', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `files_upload`
--

CREATE TABLE `files_upload` (
  `f_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `f_title` text NOT NULL,
  `f_key` varchar(100) NOT NULL,
  `f_create_date` varchar(50) NOT NULL,
  `f_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files_upload`
--

INSERT INTO `files_upload` (`f_id`, `f_name`, `f_title`, `f_key`, `f_create_date`, `f_update_date`) VALUES
(1, '05092019140007bZzl9rX7KJ.rar', 'max', 'N21', '05 กันยายน 2562 time 14:00:07', ''),
(2, '05092019140007rkeAM39Joh.fa19f1cc.rar', 'duang', 'N21', '05 กันยายน 2562 time 14:00:07', ''),
(3, '050920191400078cAETq3Y0d.fa19f1cc.rar', 'dee', 'N21', '05 กันยายน 2562 time 14:00:07', ''),
(4, '05092019140007ZYwFRRQijc.code.ec5bbcfd.zip', 'ee', 'N21', '05 กันยายน 2562 time 14:00:07', ''),
(12, '05092019142258GIfYvOxIHe.code.ec5bbcfd.zip', 'xyz', 'N20', '05 กันยายน 2562 time 14:22:58', ''),
(13, '05092019143614wTYslqgCuS.rar', 'test 1', 'A020920191608454KsIrF78nF', '05 กันยายน 2562 time 14:36:14', ''),
(14, '05092019143614iCUElbyvoq.fa19f1cc.rar', 'test 2', 'A020920191608454KsIrF78nF', '05 กันยายน 2562 time 14:36:14', ''),
(15, '05092019143713Jiw7oKc4Ds.rar', 't', 'A020920191608454KsIrF78nF', '05 กันยายน 2562 time 14:37:13', ''),
(16, '05092019143713O6j3ymyAC0.fa19f1cc.rar', 'e', 'A020920191608454KsIrF78nF', '05 กันยายน 2562 time 14:37:13', ''),
(17, '05092019143713p9TsRNRhw7.fa19f1cc.rar', 's', 'A020920191608454KsIrF78nF', '05 กันยายน 2562 time 14:37:13', ''),
(18, '05092019143904CkCTAuL4tk.jpg', 'S15 image', 'N20', '05 กันยายน 2562 time 14:39:04', ''),
(19, '05092019144825wAbhJ6ErsD.jpg', 'S2', 'A05092019144825Mr8tYRCvJU', '05 กันยายน 2562 time 14:48:25', ''),
(20, '05092019144825hoKVk7fng9.jpg', 'S15', 'A05092019144825Mr8tYRCvJU', '05 กันยายน 2562 time 14:48:25', ''),
(21, '05092019151411FU4NA1agco.jpg', 'cat', 'N05092019151411VtEegyNed7', '05 กันยายน 2562 time 15:14:11', ''),
(22, '05092019151411DPCnxbglWN.jpg', 's15', 'N05092019151411VtEegyNed7', '05 กันยายน 2562 time 15:14:11', ''),
(25, '05092019152021k4G9rMTtgc.jpg', 'a', 'A05092019152021czgkzE7zkG', '05 กันยายน 2562 time 15:20:21', ''),
(26, '05092019152021hXx9Y95bi8.jpg', 'b', 'A05092019152021czgkzE7zkG', '05 กันยายน 2562 time 15:20:21', ''),
(27, '05092019152149TgVHp6f4Rt.jpg', 'C', 'A05092019152149bgqDejkcA9', '05 กันยายน 2562 time 15:21:49', ''),
(28, '05092019152149had8bK7fl7.jpg', 'CC', 'A05092019152149bgqDejkcA9', '05 กันยายน 2562 time 15:21:49', ''),
(29, '050920191521496J1JX4d4ba.png', 'jpg copy', 'A05092019152149bgqDejkcA9', '05 กันยายน 2562 time 15:21:49', ''),
(30, '05092019152149s80Iyv59qY.png', 'jpg', 'A05092019152149bgqDejkcA9', '05 กันยายน 2562 time 15:21:49', ''),
(31, '05092019152149wcW4yLAg2W.jpg', 's2', 'A05092019152149bgqDejkcA9', '05 กันยายน 2562 time 15:21:49', ''),
(32, '05092019152149kqnlfb8vue.jpg', 's15', 'A05092019152149bgqDejkcA9', '05 กันยายน 2562 time 15:21:49', ''),
(98, '09092019122156tPsJROBJla.png', 'jpg2', 'A05092019152149bgqDejkcA9', '09 กันยายน 2562 time 12:21:56', ''),
(99, '090920191223076lYy32i7Bj.png', 'copy jpg 3', 'A05092019152149bgqDejkcA9', '09 กันยายน 2562 time 12:23:07', '');

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
(75, '2019-09-03 08:13:20', '1', '0309201915132013MYdxL8uzR'),
(76, '2019-09-03 08:14:16', '3', '030920191514163rw6lvKnovH'),
(78, '2019-09-04 09:02:20', '16', '0409201916022016UCEk0mDqEl'),
(80, '2019-09-10 09:22:07', '14', '1009201916220714jAvdCmR5yq');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `m_id` int(11) NOT NULL,
  `m_id_number` varchar(10) NOT NULL,
  `m_firstname` varchar(50) NOT NULL,
  `m_lastname` varchar(50) NOT NULL,
  `m_firstname_eng` varchar(100) NOT NULL,
  `m_lastname_eng` varchar(100) NOT NULL,
  `m_username` varchar(50) NOT NULL,
  `m_status` varchar(50) NOT NULL,
  `m_password` varchar(100) NOT NULL,
  `m_imageprofile` varchar(50) NOT NULL,
  `m_type` varchar(10) NOT NULL,
  `m_upgrade_date_id` varchar(50) NOT NULL,
  `m_company` varchar(250) NOT NULL,
  `m_phone` varchar(20) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_institute` varchar(250) NOT NULL,
  `m_address` text NOT NULL,
  `m_create_date` varchar(50) NOT NULL,
  `m_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`m_id`, `m_id_number`, `m_firstname`, `m_lastname`, `m_firstname_eng`, `m_lastname_eng`, `m_username`, `m_status`, `m_password`, `m_imageprofile`, `m_type`, `m_upgrade_date_id`, `m_company`, `m_phone`, `m_email`, `m_institute`, `m_address`, `m_create_date`, `m_update_date`) VALUES
(1, '100', 'ดวงดี ', 'มูลคำ', 'Dusngdee ENG', 'Moolkham ENG', 'max', 'admin', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', '02092019151314sHdZvfiVyx.jpg', '3', '', '', '', 'MAXMAIL@Mail.com', 'ดาวอังคาร', 'The Moon', '', '05 กันยายน 2562 time 15:36:41'),
(2, '', 'm', 'm', '', '', 'xxx', 'user', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', '', '1', '', '', '', '', '', '', '', ''),
(3, '', 'zzz First edit', 'zzz Last', 'FZeng', 'LZeng', 'zzz', 'admin', 'f3abb86bd34cf4d52698f14c0da1dc60', '02092019120759BSL755Z3iP.jpg', '2', '', 'no', '0987654321', 'Z@g_hot_mail.com', 'no have', 'no have too', '', '02 กันยายน 2562 time 12:07:59'),
(4, '10101011', 'ดวงดี', 'มูลคำ', 'Duangdee', 'Moolkham', 'corazon', 'user', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', 'jpg.png', '3', 'no have', 'company', '1234567890', 'max@mail', 'institute', 'address', 'C Date', '02 กันยายน 2562 time 11:46:56'),
(5, '', 'เอ', 'เอเอ', 'A', 'AA', 'aaa', 'user', '47bce5c74f589f4867dbd57e9ca9f808', '02092019125206JP3ilnGpRZ.png', '', '', '', '0192837465', 'a@amail.com', 'No', 'ad ee', '02 กันยายน 2562 time 12:09:53', '02 กันยายน 2562 time 14:00:42'),
(6, '', 'real', 'laer', '', '', 'qqq', 'user', 'b2ca678b4c936f905fb82f2733f5297f', '', '', '', '', '', '', '', '', '02 กันยายน 2562 time 14:06:27', ''),
(7, '', 'eeee', 'eee', '', '', 'eee', 'user', 'd2f2297d6e829cd3493aa7de4416a18f', '', '', '', '', '', '', '', '', '02 กันยายน 2562 time 14:09:37', ''),
(8, '', 'rrrF', 'rrrL', '', '', 'rrr', 'user', '44f437ced647ec3f40fa0841041871cd', '', '', '', '', '', '', '', '', '02 กันยายน 2562 time 14:12:10', ''),
(9, '', 'ooo', 'ooo', '', '', 'ooo', 'user', '7f94dd413148ff9ac9e9e4b6ff2b6ca9', '', '', '', '', '', '', '', '', '02 กันยายน 2562 time 14:14:24', ''),
(10, '', 'sss', 'sss', '', '', 'sss', 'user', '9f6e6800cfae7749eb6c486619254b9c', '', '', '', '', '', '', '', '', '02 กันยายน 2562 time 14:18:01', ''),
(11, '', 'www', 'www', '', '', 'www', 'user', '4eae35f1b35977a00ebd8086c259d4c9', '', '', '', '', '', '', '', '', '02 กันยายน 2562 time 14:23:34', ''),
(12, '', 'iii', 'iii', '', '', 'iii', 'user', '36347412c7d30ae6fde3742bbc4f21b9', '', '', '', '', '', '', '', '', '02 กันยายน 2562 time 14:24:11', ''),
(13, '', '', '', '', '', 'x', 'user', '000', '', '', '', '', '', '', '', '', '10 กันยายน 2562 time 16:18:23', ''),
(14, '', 'mmmm', 'mmm', '', '', 'xo', 'user', 'f13dfee35a80a761918d326acd591d12', '', '', '', '', '', '', '', '', '10 กันยายน 2562 time 16:20:56', ''),
(15, '', 'ma', 'xa', '', '', 'z', 'user', 'fbade9e36a3f36d3d676c1b808451dd7', '', '', '', '', '', '', '', '', '10 กันยายน 2562 time 16:42:08', ''),
(16, '', 'lll', 'lll', '', '', 'loop', 'user', 'e48b981fb62db33b98a27fc6cf8bf40a', '', '', '', '', '', '', '', '', '10 กันยายน 2562 time 16:43:26', ''),
(17, '', '', '', '', '', 'xw', 'user', '000', '', '', '', '', '', '', '', '', '10 กันยายน 2562 time 16:48:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `member_type`
--

CREATE TABLE `member_type` (
  `mt_id` int(11) NOT NULL,
  `mt_name` varchar(50) NOT NULL,
  `mt_create_date` varchar(50) NOT NULL,
  `mt_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_type`
--

INSERT INTO `member_type` (`mt_id`, `mt_name`, `mt_create_date`, `mt_update_date`) VALUES
(1, 'member', '', ''),
(2, 'full_member', '', ''),
(3, 'gold', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(11) NOT NULL,
  `n_title` text NOT NULL,
  `n_detail` text NOT NULL,
  `n_create_date` varchar(50) NOT NULL,
  `n_image` text NOT NULL,
  `n_update_date` varchar(50) NOT NULL,
  `n_file_key` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_title`, `n_detail`, `n_create_date`, `n_image`, `n_update_date`, `n_file_key`) VALUES
(1, 'first news', 'First NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst News', '09 สิงหาคม 2562', '09082019150024t7cOlWKSAM.png', '2019-08-27 12:11:55', 'N1'),
(2, 'Second News', '2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 ', '09 สิงหาคม 2562', '21082019153515QL56ZnnvcX.jpg', '2019-08-21 15:40:29', 'N2'),
(3, 'Third News', 'Third NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird News', '09 สิงหาคม 2562', '09082019150538dqEi1JDxud.png', '2019-08-21 15:40:29', 'N3'),
(4, '4', '4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 ', '09 สิงหาคม 2562', '090820191506457UZem5eaDf.png', '2019-08-21 15:40:29', 'N4'),
(5, '5 ', '5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 \n', '09 สิงหาคม 2562', '09082019150809lZFJ5K9hOQ.png', '2019-08-21 15:40:29', 'N5'),
(6, '6', 'six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six ', '09 สิงหาคม 2562', '09082019150930c2a0LEweth.png', '2019-08-21 15:40:29', 'N6'),
(7, 'seven', 'seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven ', '09 สิงหาคม 2562', '09082019151042et3bMGNViA.png', '2019-08-21 15:40:29', 'N7'),
(8, '8 ', '8 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 8\n', '09 สิงหาคม 2562', '09082019151447qBnbBdOqZQ.png', '2019-08-21 15:40:29', 'N8'),
(9, '9', '9 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 9', '09 สิงหาคม 2562', '09082019151537mANNBpVkt6.png', '2019-08-21 15:40:29', 'N9'),
(10, '10', 'ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten \n', '09 สิงหาคม 2562', '090820191516536Kv48Z9xTO.png', '2019-08-21 15:40:29', 'N10'),
(11, 'ข่าวใหม่', 'ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ', '13 สิงหาคม 2562', '1308201916025846MMVsNVRZ.jpg', '2019-08-21 15:40:29', 'N11'),
(12, 'ข่าวใหม่กว่า', 'ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ', '16 สิงหาคม 2562', '160820191206149RJtSFgbpz.jpg', '2019-08-21 15:40:29', 'N12'),
(13, 'new news 19/8', 'newnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n n', '19 สิงหาคม 2562', '19082019145437d1dAywg3Hs.jpg', '2019-08-21 15:40:29', 'N13'),
(14, 'new 2', 'a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a ', '19 สิงหาคม 2562', '190820191503495ywC49VpKD.jpg', '2019-08-21 15:40:29', 'N14'),
(15, 'JPG is real ?', 'jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh ', '19 สิงหาคม 2562', '19082019151226KMRl8GHzxN.png', '2019-08-21 15:40:29', 'N15'),
(16, 'newxxxaaarrr', ' mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa ', '19 สิงหาคม 2562', '19082019151815XMA0Bn1Eh1.jpg', '05 กันยายน 2562 time 12:07:51', 'N16'),
(17, 'az', 'za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za ', '19 สิงหาคม 2562', '19082019151920lxnC2gscfr.png', '05 กันยายน 2562 time 11:58:44', 'N17'),
(18, 'ข่าวใหม่จัดๆ กว่าเมื่อกี้', 'จัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีก', '20 สิงหาคม 2562', '20082019143841OcxCtsNGk9.png', '05 กันยายน 2562 time 11:54:27', 'N18'),
(19, 'จัดๆ อีกละ', 'จัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆ', '20 สิงหาคม 2562', '200820191441074njfofI007.jpg', '05 กันยายน 2562 time 10:40:52', 'N19'),
(20, 'แมว 15 HD', 'HD แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15', '20 สิงหาคม 2562', '05092019143904dhmeMfVJ9b.jpg', '05 กันยายน 2562 time 14:39:04', 'N20'),
(21, '21', '21 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 21', '20 สิงหาคม 2562', '05092019125749yss1gZTdvI.png', '05 กันยายน 2562 time 14:00:07', 'N21'),
(22, 'ข่าวใหม่ ๆ ๆ ๆ ๆ ', ' ม ม ม', '05 กันยายน 2562 time 15:14:11', '05092019151411YVxuPqWhNj.png', '', 'N05092019151411VtEegyNed7');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` text NOT NULL,
  `p_description` text NOT NULL,
  `p_price` text NOT NULL,
  `p_price2` text NOT NULL,
  `p_image` text NOT NULL,
  `p_amount` text NOT NULL,
  `p_category` varchar(50) NOT NULL,
  `p_image_key` varchar(100) NOT NULL,
  `p_create_date` varchar(50) NOT NULL,
  `p_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_description`, `p_price`, `p_price2`, `p_image`, `p_amount`, `p_category`, `p_image_key`, `p_create_date`, `p_update_date`) VALUES
(1, 'green', 'green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green ', '500', '5000', '09082019165757PR6HC4zZsj.jpg', '6', '1', '1', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(2, 'training to Iron-cat', 'คุณก็เป็นซุปเปอร์แมวมหาปะลัยได้', '40000', '1000', '090820191702553xMQci4hWZ.jpg', '999', '2', '2', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(3, 'Book 2', 'green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 ', '5000', '4999', '09082019174606sUcnOWBaq9.jpg', '10', '1', '3', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(4, 'green SS3', 'SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 ', '666', '665', '09082019175238xhZP5a2yN0.jpg', '4', '1', '4', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(5, 'training to Iron-cat 2', 'เป็นอีกละ 2', '100001', '100000', '09082019175406BvwohdpUE1.jpg', '60', '2', '5', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(6, 'Book', 'book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book ', '888', '999', '13082019102929JvKmF3XBJt.png', '101010', '1', '6', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(7, 'Book 2', 'Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2', '57', '56', '13082019103011jP31W0Co8P.jpg', '55', '1', '7', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(8, 'Training', 'cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man ', '5000000', '1000', '13082019104825MpWq8fV6YC.jpg', '10', '2', '8', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(9, 'Book Again', 'Book AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook Again', '1000', '999', '13082019150402pKRyoCRMWm.jpg', '59', '1', '9', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(10, 'Course ABC', 'ad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad ad', '99', '9', '13082019150823Fup1QEgWBX.png', '59', '2', '10', '13 สิงหาคม 2562', '2019-08-23 16:39:58'),
(11, 'Train to tree', 'train human to tree', '999', 'free', '13082019150931dkUJeuHBuW.jpg', '999', '2', '11', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(12, 'BOOOOOOOOOK', 'ba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba abba ba ab', '1000', '100', '06092019121443ebVNtwbMHK.png', '10000', '1', '12', '06 กันยายน 2562 time 12:14:43', ''),
(13, 'bk', 'n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n ', '100', '95', '06092019121623hpw2jFt6gz.jpg', '19', '2', '13', '06 กันยายน 2562 time 12:16:23', ''),
(14, 'cat 007 ', 'm m m m m m m m n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n n ', '999', '998', '06092019130657JfQz4foU8p.jpg', '679', '1', '14', '06 กันยายน 2562 time 13:06:57', ''),
(15, 'max pr', 'oduct', '1', '0.5', '06092019133501DVp0ypic0h.png', '1', '1', '15', '06 กันยายน 2562 time 13:35:01', ''),
(16, 'max train', 'ning', '100', '50', '0609201913354439zl8WZADY.jpg', '10', '1', '16', '06 กันยายน 2562 time 13:35:44', '06 กันยายน 2562 time 13:42:28'),
(17, 'test multi files', 'test 1', '10', '50', '06092019141237fEtwmHvHpX.jpg', '10', '2', 'P06092019141237hmnKOg51zw', '06 กันยายน 2562 time 14:12:37', ''),
(18, 'test multi files 2', 'test 2', '100', '50', '06092019141635VJ7Kz5IA4h.jpg', '10', '2', 'P06092019141635ovQfYE4ai6', '06 กันยายน 2562 time 14:16:35', '11 กันยายน 2562 time 12:46:10'),
(19, 'test multi files 3', 'test 3', '38', '19', '06092019142038Mw9p7sOvVt.jpg', '10', '2', 'P06092019142038boBAwTrtWQ', '06 กันยายน 2562 time 14:20:38', '11 กันยายน 2562 time 12:28:41'),
(20, 'test multi files 4', 'test 4', '500', '499', '06092019142142yXIKRsJ0XZ.jpg', '10', '2', 'P06092019142142opY1m2Todl', '06 กันยายน 2562 time 14:21:42', '11 กันยายน 2562 time 12:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `pc_id` int(11) NOT NULL,
  `pc_title` text NOT NULL,
  `pc_image` text NOT NULL,
  `pc_description` text NOT NULL,
  `pc_create_date` varchar(100) NOT NULL,
  `pc_update_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`pc_id`, `pc_title`, `pc_image`, `pc_description`, `pc_create_date`, `pc_update_date`) VALUES
(1, 'book', '', 'หนังสือ', '', ''),
(2, 'training_course', '', 'เทรนนิ่ง คอร์ส', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `pi_id` int(11) NOT NULL,
  `pi_name` text NOT NULL,
  `pi_create_date` varchar(100) NOT NULL,
  `pi_update_date` varchar(100) NOT NULL,
  `pi_image_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`pi_id`, `pi_name`, `pi_create_date`, `pi_update_date`, `pi_image_key`) VALUES
(2, '060920191421424kBmmfVuZG.jpg', '06 กันยายน 2562 time 14:21:42', '', 'P06092019142142opY1m2Todl'),
(3, '06092019142142pLot0dcgKx.jpg', '06 กันยายน 2562 time 14:21:42', '', 'P06092019142142opY1m2Todl'),
(4, '06092019142142QoDbagYfZZ.jpg', '06 กันยายน 2562 time 14:21:42', '', 'P06092019142142opY1m2Todl'),
(5, '06092019142142PFioggIi6R.png', '06 กันยายน 2562 time 14:21:42', '', 'P06092019142142opY1m2Todl'),
(6, '06092019142142WnrxgxuA5R.jpg', '06 กันยายน 2562 time 14:21:42', '', 'P06092019142142opY1m2Todl'),
(7, '060920191421421Xp0aVEwt4.jpg', '06 กันยายน 2562 time 14:21:42', '', 'P06092019142142opY1m2Todl');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `v_id` int(11) NOT NULL,
  `v_title` text NOT NULL,
  `v_description` text NOT NULL,
  `v_link` text NOT NULL,
  `v_room` text NOT NULL,
  `v_create_date` varchar(50) NOT NULL,
  `v_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`v_id`, `v_title`, `v_description`, `v_link`, `v_room`, `v_create_date`, `v_update_date`) VALUES
(1, 'videos 1', 'no description', 'https://www.youtube.com/embed/pNNMr5glICM', '1', '', ''),
(2, 'videos 2', 'no description 2', 'https://www.youtube.com/embed/Y1QZOprK7PQ', '1', '', ''),
(3, 'videos 3', 'no description 3', 'coming soon', '1', '', ''),
(4, 'videos new 1', 'no description new 1', 'https://www.youtube.com/embed/JZELmUooBlY', '2', '', ''),
(5, 'videos new 2', 'no description new 2', 'coming soon new', '2', '', ''),
(37, 'new 1', 'Marshmello ft. Bastille - Happier (Legendado PT/BR)', 'https://www.youtube.com/embed/k5DZBdL6qnA', '11', '', ''),
(38, 'new 2', 'Khalid - Talk (Audio)', 'https://www.youtube.com/embed/Y1QZOprK7PQ', '11', '', ''),
(39, 'DMT', '...', 'https://www.youtube.com/embed/c40lDlK-Gk8', '11', '', ''),
(40, 'The Chainsmokers - Closer / Lauv - I Like Me Better [Mashup]', '... wtf?', 'https://www.youtube.com/embed/XT_MY30IeY4', '11', '', ''),
(41, 'Khalid - Young Dumb & Broke (Official Music Video)', 'Young Dumb and Broke', 'https://www.youtube.com/embed/IPfJnp1guPc', '11', '', ''),
(42, 'Louis Tomlinson - Back to You (Official Video) ft. Bebe Rexha, Digital Farm Animals', 'Back to you', 'https://www.youtube.com/embed/-HjpL-Ns6_A', '11', '', ''),
(43, 'Louis Tomlinson - Back to You (Official Video) ft. Bebe Rexha, Digital Farm Animals', 'Back to you', 'https://www.youtube.com/embed/-HjpL-Ns6_A', '3', '', ''),
(44, 'Lauv & Troye Sivan - i\'m so tired... [Official Audio]', 'descriptions Lauv & Troye Sivan - i\'m so tired... [Official Audio]\n', 'https://www.youtube.com/embed/fvjpE_wFL5A', '12', '', ''),
(45, 'Test Edit', 'Test Des', 'soon test', '13', '', '27 สิงหาคม 2562 time 16:45:15'),
(46, 'fffNEs', 'asdEZ', 'soon2GOGOGO', '13', '', '27 สิงหาคม 2562 time 16:42:03'),
(47, 'aGGG', 'fGGG', 'sGGG', '13', '27 สิงหาคม 2562 time 16:07:22', '27 สิงหาคม 2562 time 16:43:37'),
(48, 'SSS', 'SSSSSSA', 'AAAAAS', '13', '27 สิงหาคม 2562 time 16:07:56', '27 สิงหาคม 2562 time 16:44:30'),
(49, 'soon name', 'no more', 'soon', '13', '27 สิงหาคม 2562 time 16:07:56', '27 สิงหาคม 2562 time 16:42:35'),
(50, 'ADFFGA', 'fff', 'AAA', '14', '27 สิงหาคม 2562 time 16:50:09', '27 สิงหาคม 2562 time 16:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `video_room`
--

CREATE TABLE `video_room` (
  `vr_id` int(11) NOT NULL,
  `vr_title` text NOT NULL,
  `vr_description` text NOT NULL,
  `vr_owner` text NOT NULL,
  `vr_create_date` varchar(50) NOT NULL,
  `vr_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video_room`
--

INSERT INTO `video_room` (`vr_id`, `vr_title`, `vr_description`, `vr_owner`, `vr_create_date`, `vr_update_date`) VALUES
(1, 'New Videos One', 'description video 1', '1', '16 สิงหาคม 2562', '09 กันยายน 2562 time 10:30:46'),
(2, 'New Videos2 edit', 'description 2', '1', '16 สิงหาคม 2562', '11 กันยายน 2562 time 11:43:46'),
(3, 'the video training 1', 'training one', '1', '19 สิงหาคม 2562', '2019-08-23 16:09:19'),
(11, 'NEW Room 20/8/ 14:18', 'nwewasda', '3', '20 สิงหาคม 2562', '2019-08-23 16:09:19'),
(12, 'RoooTH edit0', 'R p g TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT ', '1', '22 สิงหาคม 2562', '2019-08-27 14:58:33'),
(13, '15 04 ', 'new room 27819', '1', '27 สิงหาคม 2562', '27 สิงหาคม 2562 time 16:13:51'),
(14, 'last ID 14', 'aa', '1', '27 สิงหาคม 2562 time 16:14:07', '11 กันยายน 2562 time 11:44:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `files_upload`
--
ALTER TABLE `files_upload`
  ADD PRIMARY KEY (`f_id`);

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
-- Indexes for table `member_type`
--
ALTER TABLE `member_type`
  ADD PRIMARY KEY (`mt_id`);

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
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`pi_id`);

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
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files_upload`
--
ALTER TABLE `files_upload`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `logged`
--
ALTER TABLE `logged`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `member_type`
--
ALTER TABLE `member_type`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `video_room`
--
ALTER TABLE `video_room`
  MODIFY `vr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
