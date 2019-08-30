-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2019 at 09:09 AM
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
  `a_create_date` varchar(50) NOT NULL,
  `a_image` text NOT NULL,
  `a_update_date` varchar(50) NOT NULL,
  `a_file_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`a_id`, `a_title`, `a_detail`, `a_create_date`, `a_image`, `a_update_date`, `a_file_key`) VALUES
(1, 'Iron-cat 4 test edit', 'Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4Iron-cat 4', '09 สิงหาคม 2562', '09082019150155PXzaYKlybN.jpg', '30 สิงหาคม 2562 time 11:52:23', ''),
(2, 'Iron-cat 5 Edit test', 'ต่อจาก 4 นั่นแหละ Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5Iron-cat 5', '09 สิงหาคม 2562', '09082019151749TOkyl2rIYq.jpg', '2019-08-23 15:28:45', ''),
(3, 'Iron-cat 6', 'ต่อจาก 5 ครับ', '09 สิงหาคม 2562', '09082019155938qOKbmxTRJ1.jpg', '2019-08-22 11:56:51', ''),
(4, 'Article NEW', 'article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article article \n', '13 สิงหาคม 2562', '13082019152524yLd4dlsEJh.png', '2019-08-22 11:56:51', ''),
(5, 'บทความใหม่ กว่าเดิม', ' a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e  a r t i c l e ', '15 สิงหาคม 2562', '15082019172038rsiwX4FZ2S.jpg', '2019-08-22 11:56:51', ''),
(6, 'aticle 19', ' a a a a a  t t t t t  i i i i  c c c c c  ll l l l  e e e e', '19 สิงหาคม 2562', '19082019153152dwhref5eGu.jpg', '2019-08-22 11:56:51', ''),
(7, 'ข่าวใหม่จัดๆ', 'จัดๆ', '20 สิงหาคม 2562', '20082019143743ZTg2RdaMSc.jpg', '2019-08-22 11:56:51', ''),
(8, 'บทความใหม่ ๆ ๆ ๆ ๆ ๆ ๆ ', ' ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ๆ ', '20 สิงหาคม 2562', '20082019144153PkAqNJ2lyb.jpg', '2019-08-22 11:56:51', ''),
(9, 'บทความ แมวใหม่', 'แม่โจ้ Go Green', '20 สิงหาคม 2562', '20082019144240njzo78Kpv9.jpg', '2019-08-22 11:56:51', ''),
(10, 'ID 10', 'id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-id 10 -..-', '20 สิงหาคม 2562', '23082019114212kSl4VYyb4T.jpg', '2019-08-23 11:42:12', ''),
(11, '22 8 62 Article xxxyyyzzz', '22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article 22 8 62 Article ', '22 สิงหาคม 2562', '22082019105542W7q8j5ANCE.png', '2019-08-23 16:38:46', ''),
(12, 'Article Cat 03 ed3', 'edit Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 Article Cat 03 ', '23 สิงหาคม 2562', '23082019114434kJN0GORo5w.jpg', '2019-08-27 12:13:30', ''),
(13, 'cat03 เบลอ edit', ' cat 0 3 27 8', '27 สิงหาคม 2562', '27082019123318ec1k6z6lUf.jpg', '27 สิงหาคม 2562 time 16:11:48', ''),
(14, 'new Article eeee', 'ไม่มี', '27 สิงหาคม 2562 time 16:12:12', '27082019161212n72Z0EZBM1.jpg', '27 สิงหาคม 2562 time 16:12:23', ''),
(15, 'gg', 'sfg', '28 สิงหาคม 2562 time 12:45:08', '28082019124508TwrZC6e8If.jpg', '', 'A28082019124508OTNQw8sLAi'),
(16, 'abc', 'aassddd', '28 สิงหาคม 2562 time 12:51:06', '28082019125106JfZK1sNSxk.jpg', '', 'A28082019125106VPPacq5XCs'),
(17, 'ma', 'fa', '28 สิงหาคม 2562 time 12:54:27', '28082019125427deaWXVp8yA.png', '', 'A280820191254270gC7R3mwx0'),
(18, 'ads', 'asdw', '28 สิงหาคม 2562 time 13:26:59', '280820191326599GObs34LZS.jpg', '', 'A28082019132659tXv4SChlD6'),
(19, 'adsasdasdf', 'asdwad', '28 สิงหาคม 2562 time 13:27:49', '28082019132749elRtJTFbPg.jpg', '', 'A280820191327493jFkSUaqin'),
(20, 'adsasdasdf', 'asdwad', '28 สิงหาคม 2562 time 13:33:05', '280820191333051d4b1OlVNj.jpg', '', 'A2808201913330579IgIBfb40'),
(21, 'dff', 'GH', '28 สิงหาคม 2562 time 13:35:31', '28082019133531OiWauXimoK.jpg', '', 'A28082019133531SYgtwRN8Tk'),
(22, 'dff', 'GH', '28 สิงหาคม 2562 time 14:24:32', '28082019142432XxTprGB8EQ.jpg', '', 'A28082019142432SOrWHyKuIN'),
(23, 'dff', 'GH', '28 สิงหาคม 2562 time 14:24:55', '28082019142455yuUgF6qUGA.jpg', '', 'A28082019142455omYXIpzgFb'),
(24, 'dff', 'GH', '28 สิงหาคม 2562 time 14:27:32', '28082019142732CQcTthfPgU.jpg', '', 'A28082019142732CgcYRU4Ncu'),
(25, 'dff', 'GH', '28 สิงหาคม 2562 time 14:27:42', '28082019142742LWL4QpjnHx.jpg', '', 'A28082019142742CJaVVManG3'),
(26, 'dff', 'GH', '28 สิงหาคม 2562 time 14:30:57', '28082019143057gfIsFtqvdG.jpg', '', 'A28082019143057nRGwRLrMhr'),
(27, 'gr', 'een', '28 สิงหาคม 2562 time 14:34:58', '28082019143458YRshJqMn9b.jpg', '', 'A28082019143458VGArYsy4IT'),
(28, 'gt', 'eet', '28 สิงหาคม 2562 time 14:36:06', '28082019143606Jc6B8lobDE.png', '', 'A28082019143606uSLrfYRDZH'),
(29, 'gt', 'eet', '28 สิงหาคม 2562 time 14:41:27', '28082019144127craeSAHeiv.png', '', 'A28082019144127s5602gASdF'),
(30, 'gt', 'eet', '28 สิงหาคม 2562 time 14:42:18', '28082019144218cUe39k7soS.png', '', 'A28082019144218EcXgPjrH1C'),
(32, 'ag', 'f', '28 สิงหาคม 2562 time 14:58:47', '28082019145847rvTLxY1ceH.jpg', '', 'A280820191458472XIBtkZdsK'),
(33, 'ag', 'f', '28 สิงหาคม 2562 time 14:59:29', '280820191459296NZdiGRIkt.jpg', '', 'A280820191459299sebAFXeeO'),
(34, 'agffafasf now', 'f', '28 สิงหาคม 2562 time 14:59:57', '28082019145957nlYnuV7tNE.jpg', '', 'A28082019145957SimOCe0BkZ'),
(35, 'last of us', 'lou', '28 สิงหาคม 2562 time 15:23:05', '28082019152305br7Grhgqrs.png', '', 'A28082019152305g7qGel8NEL'),
(36, 'last of us2', 'lou2', '28 สิงหาคม 2562 time 15:25:27', '28082019152527KJZC9NoZ6y.png', '', 'A28082019152527Mh9NRwHxaY'),
(37, 'sf', 'gg', '28 สิงหาคม 2562 time 15:35:54', '28082019153554E68uyjD2xf.jpg', '', 'A28082019153554TkE9eVAzUM'),
(38, 'sf', 'gg', '28 สิงหาคม 2562 time 15:38:38', '28082019153838hPmAgyOzjN.jpg', '', 'A28082019153838C9yRkzesxv'),
(39, 'sf', 'gg', '28 สิงหาคม 2562 time 15:39:24', '28082019153924gqe5sCQuNZ.jpg', '', 'A28082019153924YMQ14bTVxt'),
(40, 'sf', 'gg', '28 สิงหาคม 2562 time 15:40:10', '28082019154010lMJ1qRv35h.jpg', '', 'A28082019154010rltroIQdXu'),
(41, 'sf', 'gg', '28 สิงหาคม 2562 time 15:41:07', '28082019154107iXztcUsZrT.jpg', '', 'A28082019154107MkTKB9i2g0'),
(42, 'sf', 'gg', '28 สิงหาคม 2562 time 15:43:26', '28082019154326IMwJtPXjIe.jpg', '', 'A28082019154326o5W8VwF5di'),
(43, 'sf', 'gg', '28 สิงหาคม 2562 time 15:45:00', '28082019154500xAQc4ULtzf.jpg', '', 'A28082019154500tGbjjVnqct'),
(44, 'sf', 'gg', '28 สิงหาคม 2562 time 15:46:56', '28082019154656fdkD2ONWRw.jpg', '', 'A28082019154656dUgUR1gdYV'),
(45, 'sf', 'gg', '28 สิงหาคม 2562 time 15:47:51', '28082019154751gXB1yuvHr6.jpg', '', 'A28082019154751fVrhIWEfjR'),
(46, 'hhh', 'asd', '28 สิงหาคม 2562 time 15:49:37', '280820191549375MrOxWBgnj.jpg', '', 'A280820191549372EL719zBWZ'),
(54, 'test files', 'test', '29 สิงหาคม 2562 time 16:40:14', '29082019164014T4vMCwHhR0.png', '', 'A29082019164014lnMb0klhSL'),
(55, 'ad test', 'test file', '29 สิงหาคม 2562 time 17:02:09', '29082019170209EMeHIkt11u.jpg', '', 'A29082019170209I8679jUlvg'),
(56, 'a', 'g', '29 สิงหาคม 2562 time 17:05:08', '29082019170508bD5iYaLEP4.jpg', '', 'A29082019170508L1RnflDfgi'),
(57, 'test zip files', 'test download zip', '30 สิงหาคม 2562 time 11:25:55', '300820191125557PMdcOiiyL.jpg', '', 'A30082019112555RY1hRjOFn5');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `ac_id` int(11) NOT NULL,
  `ac_title` varchar(100) NOT NULL,
  `ac_create_date` varchar(50) NOT NULL,
  `ac_update_date` varchar(50) NOT NULL,
  `ac_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files_upload`
--

CREATE TABLE `files_upload` (
  `f_id` int(11) NOT NULL,
  `f_title` varchar(100) NOT NULL,
  `f_key` varchar(100) NOT NULL,
  `f_create_date` varchar(50) NOT NULL,
  `f_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files_upload`
--

INSERT INTO `files_upload` (`f_id`, `f_title`, `f_key`, `f_create_date`, `f_update_date`) VALUES
(78, '29082019164015FxLCSErbEm.pdf', 'A29082019164014lnMb0klhSL', '29 สิงหาคม 2562 time 16:40:15', ''),
(79, '29082019164015WdgC96TS1O.pdf', 'A29082019164014lnMb0klhSL', '29 สิงหาคม 2562 time 16:40:15', ''),
(80, '29082019164015yLpTfLJPsi.pdf', 'A29082019164014lnMb0klhSL', '29 สิงหาคม 2562 time 16:40:15', ''),
(81, '29082019170209E7yR83MDh5.pdf', 'A29082019170209I8679jUlvg', '29 สิงหาคม 2562 time 17:02:09', ''),
(82, '290820191702098VxosqcSKn.pdf', 'A29082019170209I8679jUlvg', '29 สิงหาคม 2562 time 17:02:09', ''),
(83, '29082019170209BdGjgBSwgJ.ppt', 'A29082019170209I8679jUlvg', '29 สิงหาคม 2562 time 17:02:09', ''),
(84, '29082019170508VKJFosfkZo.jpg', 'A29082019170508L1RnflDfgi', '29 สิงหาคม 2562 time 17:05:08', ''),
(85, '29082019170508famlGEylQA.jpg', 'A29082019170508L1RnflDfgi', '29 สิงหาคม 2562 time 17:05:08', ''),
(86, '30082019112555Lk3637CytA.code.zip', 'A30082019112555RY1hRjOFn5', '30 สิงหาคม 2562 time 11:25:55', ''),
(87, '30082019112555udilr5xwew.1.1.zip', 'A30082019112555RY1hRjOFn5', '30 สิงหาคม 2562 time 11:25:55', '');

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
(46, '2019-08-30 05:55:40', '4', '300820191255404');

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
(1, '', 'DuangdeeGG', 'Moolkham', '', '', 'max', 'admin', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', '', '3', '', '', '', '', '', '', '', ''),
(2, '', 'm', 'm', '', '', 'xxx', 'user', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', '', '1', '', '', '', '', '', '', '', ''),
(3, '', 'zzz First', 'zzz Last', '', '', 'zzz', 'admin', 'f3abb86bd34cf4d52698f14c0da1dc60', '', '2', '', '', '', '', '', '', '', ''),
(4, '10101011', 'duangdee', 'moolkham', 'd_eng', 'm_eng', 'corazon', 'user', 'f561aaf6ef0bf14d4208bb46a4ccb3ad', 'default_profile.jpg', '3', 'no have', 'company', '1234567890', 'max@mail', 'institute', 'address', 'C Date', 'U Date');

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
(1, 'first news', 'First NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst NewsFirst News', '09 สิงหาคม 2562', '09082019150024t7cOlWKSAM.png', '2019-08-27 12:11:55', ''),
(2, 'Second News', '2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 ', '09 สิงหาคม 2562', '21082019153515QL56ZnnvcX.jpg', '2019-08-21 15:40:29', ''),
(3, 'Third News', 'Third NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird NewsThird News', '09 สิงหาคม 2562', '09082019150538dqEi1JDxud.png', '2019-08-21 15:40:29', ''),
(4, '4', '4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 ', '09 สิงหาคม 2562', '090820191506457UZem5eaDf.png', '2019-08-21 15:40:29', ''),
(5, '5 ', '5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 \n', '09 สิงหาคม 2562', '09082019150809lZFJ5K9hOQ.png', '2019-08-21 15:40:29', ''),
(6, '6', 'six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six six ', '09 สิงหาคม 2562', '09082019150930c2a0LEweth.png', '2019-08-21 15:40:29', ''),
(7, 'seven', 'seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven seven ', '09 สิงหาคม 2562', '09082019151042et3bMGNViA.png', '2019-08-21 15:40:29', ''),
(8, '8 ', '8 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 88 8 8 8\n', '09 สิงหาคม 2562', '09082019151447qBnbBdOqZQ.png', '2019-08-21 15:40:29', ''),
(9, '9', '9 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 99 9 99 9', '09 สิงหาคม 2562', '09082019151537mANNBpVkt6.png', '2019-08-21 15:40:29', ''),
(10, '10', 'ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten ten \n', '09 สิงหาคม 2562', '090820191516536Kv48Z9xTO.png', '2019-08-21 15:40:29', ''),
(11, 'ข่าวใหม่', 'ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ข่าวใหม่ ', '13 สิงหาคม 2562', '1308201916025846MMVsNVRZ.jpg', '2019-08-21 15:40:29', ''),
(12, 'ข่าวใหม่กว่า', 'ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ne w ', '16 สิงหาคม 2562', '160820191206149RJtSFgbpz.jpg', '2019-08-21 15:40:29', ''),
(13, 'new news 19/8', 'newnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n nnewnnn n n n n', '19 สิงหาคม 2562', '19082019145437d1dAywg3Hs.jpg', '2019-08-21 15:40:29', ''),
(14, 'new 2', 'a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a ', '19 สิงหาคม 2562', '190820191503495ywC49VpKD.jpg', '2019-08-21 15:40:29', ''),
(15, 'JPG is real ?', 'jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh jpg fight oh ', '19 สิงหาคม 2562', '19082019151226KMRl8GHzxN.png', '2019-08-21 15:40:29', ''),
(16, 'newxxxaaarrr', ' mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa  mewa ', '19 สิงหาคม 2562', '19082019151815XMA0Bn1Eh1.jpg', '2019-08-21 15:40:29', ''),
(17, 'az', 'za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za za ', '19 สิงหาคม 2562', '19082019151920lxnC2gscfr.png', '2019-08-21 15:40:29', ''),
(18, 'ข่าวใหม่จัดๆ กว่าเมื่อกี้', 'จัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีกจัดๆ อีก', '20 สิงหาคม 2562', '20082019143841OcxCtsNGk9.png', '2019-08-21 15:40:29', ''),
(19, 'จัดๆ อีกละ', 'จัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆจัดๆ ๆ', '20 สิงหาคม 2562', '200820191441074njfofI007.jpg', '2019-08-21 15:40:29', ''),
(20, 'แมว 15', 'แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15แมว 15', '20 สิงหาคม 2562', '20082019145749zdj45UG1Zc.jpg', '2019-08-21 15:40:29', ''),
(21, 'New 15 21', '21 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 2121 21 21', '20 สิงหาคม 2562', '20082019152127XkDlhj6IkC.png', '2019-08-21 15:40:29', ''),
(22, 'Edit ID 22', '22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit22 ID Edit', '20 สิงหาคม 2562', '21082019151818MR58uLmxY9.jpg', '2019-08-21 15:49:12', ''),
(23, 'ID 23 Edit 22/8/62', 'last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit last Edit ', '21 สิงหาคม 2562', '22082019105839nSwgrJY5Va.jpg', '2019-08-22 10:58:39', ''),
(24, '22 8 62 News', '22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News22 8 62 News', '22 สิงหาคม 2562', '22082019105338dQ0VrpojHD.jpg', '2019-08-22 10:53:38', ''),
(25, '23 8 62 10:52 ver.1', '23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 23 8 ', '23 สิงหาคม 2562', '23082019103316vaxW6MBtX3.jpg', '2019-08-23 10:55:55', ''),
(26, '11 17 23 8 62 adminEdit', 'go fgo 11 17 23 8 62 news 11 17 23 8 62 news 11 17 23 8 62  news 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 11 17 23 8 62 ', '23 สิงหาคม 2562', '230820191118007HTs9MscTD.jpg', '2019-08-23 14:46:31', ''),
(27, '27 HD cat03 edit', ' 27 8 62', '27 สิงหาคม 2562', '2708201912232760vqFZu4VD.jpg', '2019-08-27 12:23:27', ''),
(28, 'hews', 'jpg', '27 สิงหาคม 2562 time 16:10:44', '27082019161044FC8GkPQueD.png', '27 สิงหาคม 2562 time 16:10:55', '');

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
  `p_create_date` varchar(50) NOT NULL,
  `p_update_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_title`, `p_detail`, `p_price`, `p_price2`, `p_image`, `p_amount`, `p_type`, `p_create_date`, `p_update_date`) VALUES
(1, 'green', 'green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green green ', '500', '5000', '09082019165757PR6HC4zZsj.jpg', '6', 'book', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(2, 'training to Iron-cat', 'คุณก็เป็นซุปเปอร์แมวมหาปะลัยได้', '40000', '1000', '090820191702553xMQci4hWZ.jpg', '999', 'training_course', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(3, 'Book 2', 'green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 green 2 ', '5000', '4999', '09082019174606sUcnOWBaq9.jpg', '10', 'book', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(4, 'green SS3', 'SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 SS3 ', '666', '665', '09082019175238xhZP5a2yN0.jpg', '4', 'book', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(5, 'training to Iron-cat 2', 'เป็นอีกละ 2', '100001', '100000', '09082019175406BvwohdpUE1.jpg', '60', 'training_course', '09 สิงหาคม 2562', '2019-08-23 15:20:51'),
(6, 'Book', 'book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book ', '888', '999', '13082019102929JvKmF3XBJt.png', '101010', 'book', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(7, 'Book 2', 'Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2Book 2', '57', '56', '13082019103011jP31W0Co8P.jpg', '55', 'book', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(8, 'Training', 'cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man cat man ', '5000000', '1000', '13082019104825MpWq8fV6YC.jpg', '10', 'training_course', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(9, 'Book Again', 'Book AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook AgainBook Again', '1000', '999', '13082019150402pKRyoCRMWm.jpg', '59', 'book', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(10, 'Course ABC', 'ad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad adad ad ad', '99', '9', '13082019150823Fup1QEgWBX.png', '59', 'training_course', '13 สิงหาคม 2562', '2019-08-23 16:39:58'),
(11, 'Train to tree', 'train human to tree', '999', 'free', '13082019150931dkUJeuHBuW.jpg', '999', 'training_course', '13 สิงหาคม 2562', '2019-08-23 15:20:51'),
(12, 'book new  19', 'book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new book new ', '49', '48', '190820191525463GSonY6Y1E.png', '40', 'book', '19 สิงหาคม 2562', '2019-08-23 15:20:51'),
(13, 'm m m', 'n n n', '555', '554', '20082019152710f4xtdmNQmx.png', '333', 'book', '20 สิงหาคม 2562', '2019-08-23 15:20:51'),
(14, 'cat03 newEdit', 'real cat 03 ed', '999', '990', '21082019111357IkN3cWoYuo.jpg', '2000', 'book', '21 สิงหาคม 2562', '2019-08-26 15:37:06'),
(15, '22 8 62 Book', '22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book22 8 62 Book', '100', '99', '22082019105629T08Rao8VFJ.jpg', '999', 'book', '22 สิงหาคม 2562', '2019-08-23 15:20:51'),
(16, '23 8 15:45 book abc', 'book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book book 23', '1200', '1000', '23082019154615BE2uFytyQf.png', '1111', 'book', '23 สิงหาคม 2562', '2019-08-23 16:42:10'),
(17, '27 8 19 1415', 'jpgeee', '440', '400', '270820191250444pGOi1TMH5.png', '3000', 'book', '27 สิงหาคม 2562', '2019-08-27 14:17:44'),
(18, '15', 'asd asd asd', '56', '55', '2708201914181324WQLsS6Sc.jpg', '57', 'book', '27 สิงหาคม 2562', '2019-08-27 14:18:13'),
(19, 'aa', 'a', '4', '3', '27082019154013Ge8h9ocxwG.jpg', '1', 'book', '27 สิงหาคม 2562 time 03:40:13', '2019-08-27 15:40:13'),
(20, 'as', 'ff', '6', '66', '270820191541352xThwxnZun.jpg', '6', 'book', '27 สิงหาคม 2562 time 15:41:35', '27 สิงหาคม 2562 time 16:08:38'),
(21, 'HD03cat', 'ไม่มี นะ', '80000', '7999', '27082019160952wCd8QqjwVr.jpg', '1000', 'book', '27 สิงหาคม 2562 time 16:09:52', '27 สิงหาคม 2562 time 16:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `pc_id` int(11) NOT NULL,
  `pc_title` text NOT NULL,
  `pc_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pc_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'New Videos', 'description video 1', '1', '16 สิงหาคม 2562', '2019-08-23 16:09:19'),
(2, 'New Videos2', 'description 2', '1', '16 สิงหาคม 2562', '2019-08-23 16:09:19'),
(3, 'the video training 1', 'training one', '1', '19 สิงหาคม 2562', '2019-08-23 16:09:19'),
(11, 'NEW Room 20/8/ 14:18', 'nwewasda', '3', '20 สิงหาคม 2562', '2019-08-23 16:09:19'),
(12, 'RoooTH edit0', 'R p g TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT TT ', '1', '22 สิงหาคม 2562', '2019-08-27 14:58:33'),
(13, '15 04 ', 'new room 27819', '1', '27 สิงหาคม 2562', '27 สิงหาคม 2562 time 16:13:51'),
(14, 'NRoommooR', 'aa', '1', '27 สิงหาคม 2562 time 16:14:07', '27 สิงหาคม 2562 time 16:14:54');

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
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_upload`
--
ALTER TABLE `files_upload`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `logged`
--
ALTER TABLE `logged`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_type`
--
ALTER TABLE `member_type`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT;

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
