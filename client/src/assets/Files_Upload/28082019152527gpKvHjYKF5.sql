-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2019 at 06:50 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gama_th`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `articles_id` int(11) NOT NULL,
  `articles_acid` int(11) NOT NULL COMMENT 'ID ประเภทบทความ',
  `articles_title` varchar(250) NOT NULL,
  `articles_detail` text NOT NULL,
  `articles_date` datetime NOT NULL,
  `articles_img` varchar(250) NOT NULL,
  `articles_updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`articles_id`, `articles_acid`, `articles_title`, `articles_detail`, `articles_date`, `articles_img`, `articles_updatedate`) VALUES
(1, 1, 'คุณเป็นคนหนึ่ง ใช่ไหม?', '\r\n\r\nคุณเป็นคนหนึ่ง ใช่ไหม รู้สึกปวดหัวกับการบรีหารจัดการทีมงาน\r\nคุณเป็นคนหนึ่ง ใช่ไหม รู้สึกว่าไม่รู้ทิศทางในอนาคตของหน่วยงาน\r\nคุณเป็นคนหนึ่ง ใช่ไหม รู้สึกว่ายอดขายของทีมงาน ตัวเลขคงที่มาหลายปีแล้ว\r\nคุณเป็นคนหนึ่ง ใช่ไหม รู้สึกว่า มีตัวแทนที่ไม่ทำงานอยู่ในทีมเยอะ\r\nGAMA คือคำตอบของปัญหาเหล่านั้น\r\nเป็นสมาชิก GAMA แล้วจะได้ประโยชน์อะไรกับคุณ\r\n\r\n ลองมาฟังดูว่า ทำไมคนเหล่านี้ ผู้ซึ่งประสบความสำเร็จในอุตสาหกรรมประกันชีวิตและที่ปรึกษาการเงิน จึงเข้ามาเป็นสมาชิกของ GAMA\r\nคุณมนตรี แสงอุไรพร ผู้ก่อตั้งGAMA ” GAMA ประทศไทยเริ่มต้นปี 2004 ผู้บริหารที่ดี จะต้องตัวแทนที่ดี ตัวแทนจะดีได้อย่างไร ถ้าผู้บริหารไม่มีความรู้ความสามารถ”\r\nคุณบงกช บวรฤกษ์ จาก เมืองไทยประกันชีวิต ” GAMA เป็นสมาคมของผู้บริหาร”\r\nคุณศิริภรณ์ พุทธรักษ์ นายกสมาคมตัวแทนประกันชีวิตและที่ปรึกษาการเงิน ” GAMA คือสมาคมของผู้บริหารและเจ้าของสำนักมารวมตัวกัน”\r\nคุณกฤษณ์ ปิติมานะอารี นายกสมาคมGMAM “GAMA เป็นแหล่งรวมความรู้ ที่ทำให้เราเห็นและสิ่งที่เราไม่รู้มาก่อน”\r\nคุณแพรวพิมล ภูริพงศ์ทัศน์ จาก อลิอันซ์ อยุธยา ประกันชีวิต “ GAMA เปรียบเหมือนอาจารย์ ที่เปิดประตู ให้ความรู้กับเรา แต่เราจะต้องเข้าไปหาความรู้และเข้าร่วมสัมมนาทุกครั้ง”', '2015-09-10 00:00:00', 'http://gamathailand.org/wp-content/uploads/2015/09/gama.jpg', '2019-08-16 04:27:25'),
(2, 1, 'รับฟังอย่างตั้งใจ', '', '2015-09-07 00:00:00', 'http://gamathailand.org/wp-content/uploads/2015/09/11935568_528557883987361_3922762786424257588_o.jpg', '2019-08-16 04:27:25'),
(3, 2, 'Field Leaders Forum', 'หากคุณต้องการสร้างธุรกิจ คุณจำเป็นต้องสร้างคนของคุณขึ้นมาและดูแลให้พวกเขาอยู่กับคุณ GAMA International สามารถช่วยคุณได้โดยผ่านโครงการ Field Leader Forum การประชุมทางไกลผ่านดาวเทียมโดยใช้เวลาเป็นชั่วโมงนี้ ท่านจะได้พบกับผู้นำภาคสนามชั้นยอดที่พร้อมจะมอบยุทธศาสตร์แห่งชัยชนะและคำตอบต่อคำถามของคุณ\r\nField Leaders Forum ครั้งต่อไปกำหนดให้มีขึ้นในวันที่ 25 เมษายน หัวข้อคือ “สิ่งที่ต้องทำหลังจากการเขียน Project 100” เหล่าวิทยากรจะพูดให้ฟังถึงวิธีการที่พวกเขาทำให้ตัวแทนฯใหม่เริ่มต้นทำงานเพื่อมุ่งสู่ความสำเร็จ และสิ่งที่พวกเขาทำหลังจากที่ตัวแทนฯใหม่เหล่านั้นหมดตลาดธรรมชาติแล้ว ผู้ดำเนินรายการคือคุณ Josh Becker, LUTCF, แห่ง Guardian Life Insurance Company of America.\r\nคุณสามารถเสริมความแข็งแกร่งให้แก่ประสบการณ์ตนเองได้ด้วยการเป็นเจ้าภาพ Listening Post โดยการเชิญผู้บริหารหน่วยฯในเขตพื้นที่ของคุณมาร่วมรับฟังที่สำนักงานของคุณ การเป็นเจ้าภาพการฟังการสัมมนาทางไกลผ่านดาวเทียมเช่นนี้ นับเป็นโอกาสดีในการสร้างสายสัมพันธ์กับเพื่อนร่วมอาชีพ และเป็นการสร้างบรรยากาศของการเรียนรู้และการแลกเปลี่ยนประสบการณ์แก่กันและกันอย่างดียิ่ง\r\nเพื่อให้เกิดความเข้าใจมากขึ้นเรื่องการเป็นเจ้าภาพการฟังการสัมมนาทางไกลผ่านดาวเทียม –ท่านสามารถดูรายละเอียดได้ที่ Listening Post Web page, www.gamaweb.com หรือติดต่อคุณ Jessa Mickelson 703-770-8173 หรือ jmickelson@gama.naifa.org. หากคุณต้องการเข้าร่วมฟังการสัมมนาทางไกลผ่านดาวเทียมในเขตพื้นที่ของคุณ กรุณาไปที่ www.gamaweb.com/ListeningPostFind.htm.\r\n', '2012-06-06 00:00:00', 'http://gamathailand.org/wp-content/uploads/2012/06/field-leaders1-700x371.jpg', '2019-08-16 04:27:25'),
(4, 2, 'สิ่งสำคัญอย่างยิ่งต่อความสำเร็จของคุณ', 'ไม่ว่าคุณจะเป็นมือใหม่หรือมือเก่าในฐานะผู้บริหารหน่วยฯภาคสนามก็ตาม หลักสูตร GAMA International’s Essentials of Leadership and Management เตรียมไว้แล้วสำหรับคุณ หลักสูตรที่ใช้เวลาการอบรมนานเป็นสัปดาห์นี้ จะครอบคลุมพื้นฐานการบริหารและการเป็นผู้นำในเชิงปฏิบัติ เมื่อคุณสำเร็จการอบรม คุณจะได้แผนงาน 10 ปีของการทำธุรกิจและความชำนาญที่คุณจำเป็นต้องมีเพื่อนำไปปฏิบัติให้เกิดผลติดมาด้วย\r\nเป็นการอบรมที่มีความสำคัญอย่างยิ่งต่อใครก็ตามที่ต้องการความสำเร็จ และนี่คือสิ่งที่ผู้สำเร็จการอบรมกล่าวถึง:\r\n“ผมไม่เคยพบกับระบบการบริหารงานเชิงปฏิบัติและเป็นโครงสร้างแบบนี้มาก่อน มันครอบคลุมไว้ทั้งหมดตั้งแต่ ก-ฮ ผู้บริหารฯที่มีความปรารถนาที่จะประสบความสำเร็จในระดับสูงจะได้แผนนำทางการทำงานติดกลับบ้านไปด้วย ผู้บริหารหน่วยฯที่เข้ารับการอบรมในหลักสูตรนี้ จะสำเร็จออกมาด้วยความกระตือรือร้นและมุ่งมั่น”\r\n“พอนึกภาพออกไหมว่า –ผมซึ่งไม่เคยได้รับการฝึกอบรมด้านการบริหารอย่างเป็นทางการใดๆ –ผมไม่รู้ว่าจะเริ่มต้นอย่างไรในการนำทางกลุ่มนักขายของผม? ความจริงคำตอบมีอยู่แล้วในหลักสูตร GAMA’s Essentials การอบรมนี้จะช่วยให้คุณได้เรียนรู้เรื่องความเป็นผู้นำและให้หลักพื้นฐานของการบริหารหน่วยฯ มันเป็นการอบรมที่ต้องเข้าให้ได้ –แม้ว่าผมจะอยู่ในธุรกิจนี้มาแล้วเป็นเวลากว่า 24 ปี ผมเดินออกมาพร้อมความรู้ที่น่าอัศจรรย์พร้อมทักษะความเป็นผู้นำที่เพิ่มพูนมากขึ้น โปรดอย่าพลาดโอกาสงามๆเช่นนี้นะครับ”\r\nการเปิดรับการอบรมครั้งต่อไปของหลักสูตร Essentials of Leadership and Management จะมีขึ้นในวันที่ 4-8 มิถุนายนใน St.Paul, MN. หรือโทรฯไปสอบถามรายละเอียดเพิ่มเติมได้ที่ GAMA หมายเลขโทรศัพท์ 1-800-345-2687 หรือเข้าเยี่ยมชมที่ www.gamaweb.com', '2012-06-06 00:00:00', 'http://gamathailand.org/wp-content/uploads/2012/06/key-success-700x371.jpg', '2019-08-16 04:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `articles_category`
--

CREATE TABLE `articles_category` (
  `ac_id` int(11) NOT NULL,
  `ac_name` varchar(250) NOT NULL,
  `ac_description` varchar(250) NOT NULL,
  `ac_img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_category`
--

INSERT INTO `articles_category` (`ac_id`, `ac_name`, `ac_description`, `ac_img`) VALUES
(1, 'บทความเทคนิคดีๆ', '', ''),
(2, 'Inside GAMA International ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `attachement_id` int(11) NOT NULL,
  `attachement_link` varchar(250) NOT NULL,
  `attachement_key` varchar(100) NOT NULL,
  `attachement_createdate` datetime NOT NULL,
  `attachement_updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(100) NOT NULL,
  `customers_fname` varchar(100) NOT NULL,
  `customers_lname` varchar(100) NOT NULL,
  `customers_phone` varchar(10) NOT NULL,
  `customers_email` varchar(250) NOT NULL,
  `customers_address` varchar(100) NOT NULL,
  `customers_city` varchar(100) NOT NULL,
  `customers_country` varchar(100) NOT NULL,
  `customers_company` varchar(250) NOT NULL,
  `customers_postcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_name`, `customers_fname`, `customers_lname`, `customers_phone`, `customers_email`, `customers_address`, `customers_city`, `customers_country`, `customers_company`, `customers_postcode`) VALUES
(1, 'Mongkhon Tharanat', 'Mongkhon', 'Tharanat', '0622847087', 'jrkub81@gmail.com', '317 M.19 ', 'ChiangMai', 'Chomthong', 'Ideacel Co', '50160'),
(2, 'claudia', 'Sunan', 'Opast', '0846747840', 'kosuselma@gmail.com', '391/2 m.5 Nonghoi', 'Chiang Mai', 'Thailand', 'AA', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_title` varchar(250) NOT NULL,
  `gallery_img` varchar(250) NOT NULL,
  `gallery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_title`, `gallery_img`, `gallery_date`) VALUES
(1, 'รายชื่อผู้รับรางวัล GAMA Awrads 2017', 'http://gamathailand.org/wp-content/uploads/2017/12/%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B8%A3%E0%B8%B1%E0%B8%9A%E0%B8%A3%E0%B8%B2%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%A5-11-218x160.jpg', '2017-12-20'),
(2, 'รูปภาพบรรยายกาศงานสัมมนา 11 ต.ค. 60 วิทยากรโดย คุณปิยพันธ์ วงศ์ยะรา , คุณพัชรา หวังว่องวิทย์ ณ อิมแพคเมืองทองธานี', 'http://gamathailand.org/wp-content/uploads/2017/10/GAMA4.0_%E0%B9%91%E0%B9%97%E0%B9%91%E0%B9%90%E0%B9%91%E0%B9%97_0002-218x160.jpg', '2017-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `gallery_imagesid` int(11) NOT NULL,
  `gallery_imagesname` varchar(250) NOT NULL,
  `gallery_imagesgid` int(11) NOT NULL COMMENT 'gallery_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`gallery_imagesid`, `gallery_imagesname`, `gallery_imagesgid`) VALUES
(1, 'http://gamathailand.org/wp-content/uploads/2017/12/%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B8%A3%E0%B8%B1%E0%B8%9A%E0%B8%A3%E0%B8%B2%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%A5-11-218x160.jpg', 1),
(2, 'http://gamathailand.org/wp-content/uploads/2017/12/%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B8%A3%E0%B8%B1%E0%B8%9A%E0%B8%A3%E0%B8%B2%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%A5-2-218x160.jpg', 1),
(3, 'http://gamathailand.org/wp-content/uploads/2017/12/%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%9C%E0%B8%B9%E0%B9%89%E0%B8%A3%E0%B8%B1%E0%B8%9A%E0%B8%A3%E0%B8%B2%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%A5-3-218x160.jpg', 1),
(4, 'http://gamathailand.org/wp-content/uploads/2017/10/GAMA4.0_%E0%B9%91%E0%B9%97%E0%B9%91%E0%B9%90%E0%B9%91%E0%B9%97_0051-218x160.jpg', 2),
(5, 'http://gamathailand.org/wp-content/uploads/2017/10/GAMA4.0_%E0%B9%91%E0%B9%97%E0%B9%91%E0%B9%90%E0%B9%91%E0%B9%97_0002.jpg', 2),
(6, 'http://gamathailand.org/wp-content/uploads/2017/10/GAMA4.0_%E0%B9%91%E0%B9%97%E0%B9%91%E0%B9%90%E0%B9%91%E0%B9%97_00021.jpg', 2),
(7, 'http://gamathailand.org/wp-content/uploads/2017/10/GAMA4.0_%E0%B9%91%E0%B9%97%E0%B9%91%E0%B9%90%E0%B9%91%E0%B9%97_0003.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `members_id` int(11) NOT NULL,
  `members_username` varchar(100) NOT NULL,
  `members_password` varchar(100) NOT NULL,
  `members_status` varchar(100) NOT NULL,
  `members_upgradeid` int(11) NOT NULL,
  `members_cid` int(11) NOT NULL COMMENT 'ID Customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`members_id`, `members_username`, `members_password`, `members_status`, `members_upgradeid`, `members_cid`) VALUES
(1, 'jrkub81', '5555', 'user', 0, 1),
(2, 'cloudy', '5eb66faad03ddad090d088c47bbce1db', 'admin', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `member_upgrade_category`
--

CREATE TABLE `member_upgrade_category` (
  `memup_categoryid` int(11) NOT NULL,
  `memup_categoryname` varchar(100) NOT NULL,
  `memup_creatdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_upgrade_category`
--

INSERT INTO `member_upgrade_category` (`memup_categoryid`, `memup_categoryname`, `memup_creatdate`) VALUES
(1, 'Gold', '2019-08-15 08:18:34'),
(2, 'Sliver', '2019-08-15 08:18:34'),
(3, 'Bronz', '2019-08-15 08:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `member_upgrade_date`
--

CREATE TABLE `member_upgrade_date` (
  `memup_dateid` int(11) NOT NULL,
  `memup_date_start` date NOT NULL,
  `memup_date_end` date NOT NULL,
  `memup_date_creatdate` datetime NOT NULL,
  `memuo_date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `money_transfer`
--

CREATE TABLE `money_transfer` (
  `mf_id` int(10) NOT NULL,
  `mf_cid` int(10) NOT NULL,
  `mf_userid` int(10) NOT NULL,
  `mf_slip` varchar(100) NOT NULL,
  `mf_comment` varchar(200) NOT NULL,
  `mf_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `money_transfer_category`
--

CREATE TABLE `money_transfer_category` (
  `mfc_id` int(10) NOT NULL,
  `mfc_name` varchar(100) NOT NULL,
  `mfc_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(100) NOT NULL,
  `news_detail` varchar(250) NOT NULL,
  `news_date` datetime NOT NULL,
  `news_img` varchar(250) NOT NULL,
  `news_ncid` int(11) NOT NULL,
  `news_updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_detail`, `news_date`, `news_img`, `news_ncid`, `news_updatedate`) VALUES
(1, 'Big TU Angry his brother', 'qweqweqweqweqweqweqweqweqweqwewqe', '2019-04-06 00:00:00', '', 2, '2019-08-16 04:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `orders_date` date NOT NULL,
  `orders_total_price` decimal(10,0) NOT NULL,
  `orders_require` date NOT NULL,
  `orders_shipped` date NOT NULL,
  `orders_statusid` int(11) NOT NULL,
  `orders_comment` varchar(250) NOT NULL,
  `orders_mfid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_statusid` int(11) NOT NULL,
  `orders_statusname` varchar(100) NOT NULL,
  `orders_statusdescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_statusid`, `orders_statusname`, `orders_statusdescription`) VALUES
(1, 'รอการยืนยันการซื้อ', ''),
(2, 'ยืนยันการซื้อรอชำระ', ''),
(3, 'ยืนยันการชำระรอการจัดส่ง', ''),
(4, 'สินค้าพร้อมจัดส่ง', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_itemsid` int(10) NOT NULL,
  `order_oderid` int(10) NOT NULL,
  `order_productid` int(11) NOT NULL,
  `order_itemcode` varchar(100) NOT NULL,
  `order_items_quantity` int(10) NOT NULL,
  `order_items_totalprice` decimal(7,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` varchar(250) NOT NULL,
  `product_price` decimal(8,0) NOT NULL,
  `product_retail` decimal(8,0) NOT NULL,
  `product_discount` decimal(7,2) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `product_pc_id` int(11) NOT NULL COMMENT 'ID products category',
  `product_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`, `product_price`, `product_retail`, `product_discount`, `product_img`, `product_pc_id`, `product_date`) VALUES
(1, 'Book of Life', '', '500', '450', '0.00', '', 1, '2019-08-13 07:42:15'),
(2, 'Traning your Brain', '', '3000', '0', '0.00', '', 2, '2019-08-13 07:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `pc_id` int(11) NOT NULL,
  `pc_name` varchar(250) NOT NULL,
  `pc_description` varchar(250) NOT NULL,
  `pc_img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`pc_id`, `pc_name`, `pc_description`, `pc_img`) VALUES
(1, 'Book', '', ''),
(2, 'Training', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videos_id` int(11) NOT NULL,
  `video_name` varchar(100) NOT NULL,
  `video_link` varchar(200) NOT NULL,
  `video_description` text NOT NULL,
  `videos_password` varchar(100) NOT NULL,
  `video_roomid` int(11) NOT NULL COMMENT 'ID video Room'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videos_id`, `video_name`, `video_link`, `video_description`, `videos_password`, `video_roomid`) VALUES
(1, 'Train of life', 'TrainofLife.com', 'wqeqwewqeqweqweweqweqweqwe', '55555', 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos_room`
--

CREATE TABLE `videos_room` (
  `videos_roomid` int(11) NOT NULL,
  `videos_roomnumber` varchar(100) NOT NULL,
  `videos_roomdescription` varchar(250) NOT NULL,
  `videos_roomadminid` int(11) NOT NULL,
  `videos_roomupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos_room`
--

INSERT INTO `videos_room` (`videos_roomid`, `videos_roomnumber`, `videos_roomdescription`, `videos_roomadminid`, `videos_roomupdate`) VALUES
(1, '2019', 'weqweqweqweqweqweewq', 1, '2019-08-13 05:29:24'),
(2, '213', 'Keep to Success', 2, '2019-08-14 05:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `video_news`
--

CREATE TABLE `video_news` (
  `video_newsid` int(11) NOT NULL,
  `video_newstitle` varchar(250) NOT NULL,
  `video_newsdetail` text NOT NULL,
  `video_newslink` varchar(255) NOT NULL,
  `video_newsdate` datetime NOT NULL,
  `video_newspassword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video_news`
--

INSERT INTO `video_news` (`video_newsid`, `video_newstitle`, `video_newsdetail`, `video_newslink`, `video_newsdate`, `video_newspassword`) VALUES
(1, 'ป้องกัน: VTR สมาคม GAMA THAILAND', 'เรื่องนี้มีรหัสผ่านป้องกัน เพื่อจะดูเรื่องนี้คุณต้องใส่รหัสผ่านด้านล่าง', 'https://www.youtube.com/watch?v=j12fa5JLKew', '2014-08-13 00:00:00', ''),
(2, 'เตรียมพบกับวิชาการ GAMA กำลังกลับมาอีกครั้งปี 2557 พร้อมกับวิทยากรชื่อดังมากมายพร้อมที่จะมาแชร์ความรู้และประสบการณ์ต่างๆ', '', 'https://www.youtube.com/watch?v=7rQw-ZuEjHY&feature=youtu.be', '2014-01-28 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`articles_id`),
  ADD KEY `articles_acid` (`articles_acid`);

--
-- Indexes for table `articles_category`
--
ALTER TABLE `articles_category`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`attachement_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`gallery_imagesid`),
  ADD KEY `gallery_imagesgid` (`gallery_imagesgid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`members_id`),
  ADD KEY `members_cid` (`members_cid`);

--
-- Indexes for table `member_upgrade_category`
--
ALTER TABLE `member_upgrade_category`
  ADD PRIMARY KEY (`memup_categoryid`);

--
-- Indexes for table `member_upgrade_date`
--
ALTER TABLE `member_upgrade_date`
  ADD PRIMARY KEY (`memup_dateid`);

--
-- Indexes for table `money_transfer`
--
ALTER TABLE `money_transfer`
  ADD PRIMARY KEY (`mf_id`),
  ADD KEY `mf_cid` (`mf_cid`),
  ADD KEY `mf_userid` (`mf_userid`);

--
-- Indexes for table `money_transfer_category`
--
ALTER TABLE `money_transfer_category`
  ADD PRIMARY KEY (`mfc_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_ncid` (`news_ncid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `orders_statusid` (`orders_statusid`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `orders_mfid` (`orders_mfid`) USING BTREE;

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_statusid`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_itemsid`),
  ADD KEY `order_oderid` (`order_oderid`),
  ADD KEY `order_productid` (`order_productid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_pc_id` (`product_pc_id`) USING BTREE;

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videos_id`),
  ADD KEY `video_roomid` (`video_roomid`);

--
-- Indexes for table `videos_room`
--
ALTER TABLE `videos_room`
  ADD PRIMARY KEY (`videos_roomid`),
  ADD KEY `videos_roomadminid` (`videos_roomadminid`);

--
-- Indexes for table `video_news`
--
ALTER TABLE `video_news`
  ADD PRIMARY KEY (`video_newsid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `articles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `articles_category`
--
ALTER TABLE `articles_category`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `attachement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `gallery_imagesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `members_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member_upgrade_category`
--
ALTER TABLE `member_upgrade_category`
  MODIFY `memup_categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member_upgrade_date`
--
ALTER TABLE `member_upgrade_date`
  MODIFY `memup_dateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `money_transfer`
--
ALTER TABLE `money_transfer`
  MODIFY `mf_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `money_transfer_category`
--
ALTER TABLE `money_transfer_category`
  MODIFY `mfc_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `orders_statusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_itemsid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos_room`
--
ALTER TABLE `videos_room`
  MODIFY `videos_roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video_news`
--
ALTER TABLE `video_news`
  MODIFY `video_newsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`articles_acid`) REFERENCES `articles_category` (`ac_id`);

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_ibfk_1` FOREIGN KEY (`gallery_imagesgid`) REFERENCES `gallery` (`gallery_id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`members_cid`) REFERENCES `customers` (`customers_id`);

--
-- Constraints for table `money_transfer`
--
ALTER TABLE `money_transfer`
  ADD CONSTRAINT `money_transfer_ibfk_1` FOREIGN KEY (`mf_cid`) REFERENCES `money_transfer_category` (`mfc_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`orders_statusid`) REFERENCES `orders_status` (`orders_statusid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customers_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`orders_mfid`) REFERENCES `money_transfer` (`mf_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_oderid`) REFERENCES `orders` (`orders_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_productid`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_pc_id`) REFERENCES `products_category` (`pc_id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`video_roomid`) REFERENCES `videos_room` (`videos_roomid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
