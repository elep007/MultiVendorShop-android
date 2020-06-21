-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2019 at 10:28 AM
-- Server version: 10.2.25-MariaDB-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thewor87_auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `anas_admob`
--

CREATE TABLE `anas_admob` (
  `id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_admob`
--

INSERT INTO `anas_admob` (`id`, `image`) VALUES
(1, 'image/admob/admob1017:58:18.jpg'),
(2, 'image/admob/admob2.jpg'),
(3, 'image/admob/admob3.jpg'),
(4, 'image/admob/admob4.jpg'),
(5, 'image/admob/admob5.jpg'),
(6, 'image/admob/admob6.jpg'),
(7, 'image/admob/admob7.jpg'),
(8, 'image/admob/admob8.jpg'),
(9, 'image/admob/admob9.jpg'),
(10, 'image/admob/admob1008:54:18.jpg'),
(11, 'image/admob/admob11.jpg'),
(12, 'image/admob/admob12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `anas_billing`
--

CREATE TABLE `anas_billing` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `paydate` varchar(20) CHARACTER SET utf8 NOT NULL,
  `transaction` varchar(100) CHARACTER SET utf8 NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_billing`
--

INSERT INTO `anas_billing` (`id`, `userid`, `paydate`, `transaction`, `amount`, `type`) VALUES
(2, 1, '2019/07/25', 'Invite Friends', 10, 'income'),
(3, 1, '2019/07/25', 'Invite Friends', 10, 'income'),
(5, 1, '2019/07/25', 'Upgrade Membership', 4.99, 'spent'),
(6, 1, '2019/07/26', 'Upgrade Membership', 4.99, 'spent'),
(7, 1, '2019/07/30', 'Upgrade Membership', 4.99, 'spent'),
(8, 1, '2019/07/30', 'Diposite', 20, 'income'),
(9, 1, '2019/07/30 12:43:39', 'Deposite', 21, 'income'),
(10, 1, '2019/07/30 14:50:50', 'Deposite', 80, 'income'),
(11, 1, '2019-08-07 22:21:17', 'Deposite From Local Pay', 12, 'income'),
(12, 1, '2019-08-07 22:21:54', 'Deposite From Local Pay', 12, 'income'),
(13, 1, '2019-08-07 22:22:03', 'Deposite From Local Pay', 12, 'income'),
(17, 1, '2019-08-07 22:35:35', 'Deposite From Local Pay', 12, 'income'),
(18, 1, '2019-08-07 22:36:17', 'Deposite From Local Pay', 12, 'income'),
(20, 1, '2019-08-07 22:52:26', 'Deposite From Local Pay', 12, 'income'),
(22, 1, '2019-08-08', 'Upgrade Membership', 4.99, 'spent'),
(23, 1, '2019-08-13 15:38:23', 'Deposite', 50, 'income'),
(24, 1, '2019-08-13 15:44:33', 'Upgrade Membership', 4.99, 'spent'),
(28, 19, '2019-08-18', 'Invite Friends', 10, 'income'),
(29, 25, '2019-08-18', 'Invite Friends', 10, 'income'),
(30, 25, '2019-08-19 02:32:38', 'Deposite From Local Pay', 60, 'income'),
(31, 25, '2019-08-21 00:56:57', 'Upgrade Membership', 4.99, 'spent'),
(32, 1, '2019-09-01 17:51:38', 'Upgrade Membership', 4.99, 'spent'),
(33, 26, '2019-09-05 13:11:24', 'Invite friend', 9.99, 'income'),
(34, 27, '2019-09-05 13:11:24', 'Gift from Invite', 9.99, 'income'),
(35, 1, '2019-10-24 22:09:33', 'Deposite', 2222, 'income'),
(36, 1, '2019-10-24 22:17:12', 'Deposite', 222, 'income'),
(37, 1, '2019-10-24 22:18:39', 'Deposite', 200, 'income'),
(38, 1, '2019-10-24 22:19:28', 'Deposite', 200, 'income'),
(39, 1, '2019-10-24 22:21:46', 'Deposite', 200, 'income');

-- --------------------------------------------------------

--
-- Table structure for table `anas_coupon`
--

CREATE TABLE `anas_coupon` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_coupon`
--

INSERT INTO `anas_coupon` (`id`, `userid`, `foodid`) VALUES
(46, 25, 23),
(53, 1, 9),
(43, 25, 18),
(52, 1, 5),
(45, 19, 23),
(42, 25, 15),
(41, 25, 13),
(40, 25, 9),
(51, 1, 2),
(56, 1, 18),
(55, 1, 15),
(57, 1, 19),
(66, 25, 36),
(100000, 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `anas_coupon_history`
--

CREATE TABLE `anas_coupon_history` (
  `id` int(11) NOT NULL,
  `couponid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `usedate` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_coupon_history`
--

INSERT INTO `anas_coupon_history` (`id`, `couponid`, `userid`, `foodid`, `usedate`) VALUES
(2, 5, 1, 2, '2019/07/25'),
(3, 13, 1, 9, '2019/07/25'),
(4, 12, 1, 9, '2019/07/25'),
(5, 9, 1, 9, '2019/07/25'),
(6, 18, 1, 2, '2019-08-08'),
(7, 23, 1, 2, '2019-08-13'),
(8, 29, 1, 5, '2019-08-13'),
(9, 38, 25, 2, '2019-08-21'),
(10, 0, 25, 2, '2019-08-21'),
(11, 39, 25, 5, '2019-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `anas_favorite`
--

CREATE TABLE `anas_favorite` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_favorite`
--

INSERT INTO `anas_favorite` (`id`, `userid`, `foodid`) VALUES
(3, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `anas_food`
--

CREATE TABLE `anas_food` (
  `id` int(11) NOT NULL,
  `restaurantid` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `arname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `ardescription` text CHARACTER SET utf8 NOT NULL,
  `arneeddescription` text CHARACTER SET utf8 NOT NULL,
  `needdescription` text CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_food`
--

INSERT INTO `anas_food` (`id`, `restaurantid`, `name`, `arname`, `image`, `description`, `ardescription`, `arneeddescription`, `needdescription`, `status`) VALUES
(2, 2, 'Fatteh', '', 'image/food/2Fatteh05:19:30.jpg', 'This food is very good2', '', '', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish    ', 'set'),
(5, 2, 'Om Ali', '', 'image/food/2OmAli.jpg', 'This food is very good5', '', '', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish   ', 'set'),
(9, 2, 'Qatayef', '', 'image/food/2Qatayef07:52:51.jpg', 'This food is very good9', '', '', 'Fesikh or feseekh is a traditional celebratory Egyptian fish dish    ', 'set'),
(13, 11, 'testfood', '', 'image/food/11testfood.jpg', 'testfood123123', '', '', 'testfoodoofd 123123  ', 'set'),
(15, 13, 'fadssadf', '', 'image/food/13fadssadf05:21:27.jpg', 'sadfasdfasf', '', '', ' asdfasdf  ', 'unset'),
(18, 12, 'big bread', '', 'image/food/12big bread07:56:45.jpg', 'This is a test', '', '', 'this is a test ', ''),
(19, 20, 'Burger', 'ضحصخثعثغق', 'image/food/20Burger09:43:09.jpg', 'Buy 1 burger get 1 free', 'شمسنيتبالايبتينسممش', 'ئوءةىؤلالارءىءةئ ', ' Approximate saving  ', ''),
(36, 2, 'testenglishfood', 'شيبشيب', 'image/food/2testenglishfood19:42:18.jpg', 'adfadfadfadfadfa dfadfadfadfadfadfadfadfadfadfad fadfadfadfadfad fadfadfadfadfadfadfadfa dfadfadfadfadfad fadfadfadfa dfadfadf adfadf', 'شيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيب', 'شيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيبشيب ', ' adfadfadfadfadfadfadfad fadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadf\r\nadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadfadf adfadfadfadfadfadfadfadfadfadfadfadfadfad fadfadfadfadfadfadfadfadfadf ', 'set');

-- --------------------------------------------------------

--
-- Table structure for table `anas_restaurant`
--

CREATE TABLE `anas_restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `arname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pin` varchar(10) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `araddress` varchar(100) CHARACTER SET utf8 NOT NULL,
  `position` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `opentime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `ardescription` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_restaurant`
--

INSERT INTO `anas_restaurant` (`id`, `name`, `arname`, `pin`, `image`, `logo`, `address`, `araddress`, `position`, `phone`, `opentime`, `description`, `ardescription`) VALUES
(2, 'Zitouni', 'فثسف', '1234', 'image/restaurant/+1234567890.jpg', 'image/restaurantlogo/+123456789023:07:37.jpg', 'Garden', 'فثسفف', '25.258145,46.535955', '+1234567890', '09:00 ~ 22:30', '    Popular for its america food, Chili\'s has become the go-to place where family and friends can gather over a homemade quality food', 'فثسفف'),
(11, 'test1', 'ضحصخ', '1234', 'image/restaurant/+12341234507:51:30.jpg', 'image/restaurantlogo/+123412345.jpg', 'test', 'شمسنيت', '0.01234,0.12345', '+123412345', '02:00~08:00', '    Popular for its america food, Chili\'s has become the go-to place where family and friends can gather over a homemade quality food', 'ئةءىؤلارلار'),
(12, 'testres', 'شمسنيتبا', '1235', 'image/restaurant/+123456671.jpg', 'image/restaurantlogo/+123456671.jpg', 'test address', 'ضحصخثهقعفغ', '123123,123123', '+123456671', '00:00~00:00', '    Popular for its america food, Chili\'s has become the go-to place where family and friends can gather over a homemade quality food', 'ئةءىؤلارلارؤلاىءىءة'),
(13, 'Egypt Res', 'ئةءىؤلارلا', '2347', 'image/restaurant/+2023452345223:11:06.jpg', 'image/restaurantlogo/+2023452345223:11:06.jpg', 'mo', 'ضحصخيقغفغ', '0.00123,0.0323', '+20234523452', '08:00~14:30', 'tetstetsetsetsetsetsetsetsetsetsetsetestsetestessest', 'شمنستياباب'),
(20, 'TGI Fridays', 'حضخصهثعق', '1234', 'image/restaurant/0101646233109:41:19.jpg', 'image/restaurantlogo/0101646233109:41:19.jpg', 'Americana plaza zayed', 'مشنستيا', '30.0277042,31.0161078', '01016462331', '08:00~20:00', 'Fridays very popular', 'مينبتلبا');

-- --------------------------------------------------------

--
-- Table structure for table `anas_session`
--

CREATE TABLE `anas_session` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(20) COLLATE utf8_bin NOT NULL,
  `country` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_session`
--

INSERT INTO `anas_session` (`id`, `user_id`, `time`, `ip`, `country`) VALUES
(1, '1', '2019-08-07 13:36:03', '127.0.0.1', ''),
(2, '1', '2019-08-07 13:42:45', '127.0.0.1', ''),
(3, '1', '2019-08-07 16:31:50', '127.0.0.1', ''),
(4, '1', '2019-08-07 16:33:06', '127.0.0.1', ''),
(5, '2', '2019-08-07 16:33:28', '127.0.0.1', ''),
(6, '1', '2019-08-07 16:47:56', '127.0.0.1', ''),
(7, '1', '2019-08-07 17:45:10', '127.0.0.1', ''),
(8, '1', '2019-08-07 20:28:42', '127.0.0.1', ''),
(9, '1', '2019-08-08 13:59:52', '127.0.0.1', ''),
(10, '1', '2019-08-08 14:23:19', '127.0.0.1', ''),
(11, '1', '2019-08-08 18:36:46', '192.168.200.111', ''),
(12, '1', '2019-08-08 22:45:48', '127.0.0.1', ''),
(13, '1', '2019-08-10 20:32:46', '188.43.136.32', 'Russia'),
(14, '1', '2019-08-10 22:16:15', '197.34.91.79', 'Egypt'),
(15, '1', '2019-08-13 23:39:40', '188.43.136.32', 'Russia'),
(16, '1', '2019-08-14 05:10:10', '188.43.136.32', 'Russia'),
(17, '1', '2019-08-14 05:10:44', '188.43.136.32', 'Russia'),
(18, '1', '2019-08-14 05:10:58', '188.43.136.32', 'Russia'),
(19, '1', '2019-08-14 06:01:51', '188.43.136.32', 'Russia'),
(20, '1', '2019-08-14 06:06:51', '188.43.136.32', 'Russia'),
(21, '1', '2019-08-14 16:18:15', '188.43.136.32', 'Russia'),
(22, '1', '2019-08-14 20:53:07', '188.43.136.32', 'Russia'),
(23, '1', '2019-08-14 20:59:50', '188.43.136.32', 'Russia'),
(24, '1', '2019-08-14 21:16:00', '188.43.136.32', 'Russia'),
(25, '1', '2019-08-14 21:44:00', '188.43.136.32', 'Russia'),
(26, '1', '2019-08-14 22:31:41', '188.43.136.32', 'Russia'),
(27, '1', '2019-08-14 23:05:51', '188.43.136.32', 'Russia'),
(28, '1', '2019-08-15 12:18:13', '188.43.136.32', 'Russia'),
(29, '1', '2019-08-15 23:20:35', '188.43.136.32', 'Russia'),
(30, '1', '2019-08-17 00:30:02', '188.43.136.32', 'Russia'),
(31, '1', '2019-08-17 00:31:58', '188.43.136.32', 'Russia'),
(32, '1', '2019-08-17 00:33:50', '188.43.136.32', 'Russia'),
(33, '1', '2019-08-17 02:05:01', '188.43.136.32', 'Russia'),
(34, '1', '2019-08-17 02:32:29', '188.43.136.32', 'Russia'),
(35, '1', '2019-08-17 03:51:11', '188.43.136.32', 'Russia'),
(36, '1', '2019-08-17 03:59:30', '188.43.136.32', 'Russia'),
(37, '1', '2019-08-17 04:17:14', '188.43.136.32', 'Russia'),
(38, '1', '2019-08-17 04:19:40', '188.43.136.32', 'Russia'),
(39, '1', '2019-08-17 04:23:58', '188.43.136.32', 'Russia'),
(40, '1', '2019-08-17 04:34:26', '188.43.136.32', 'Russia'),
(41, '1', '2019-08-17 05:40:41', '188.43.136.32', 'Russia'),
(42, '1', '2019-08-17 05:41:33', '188.43.136.32', 'Russia'),
(43, '1', '2019-08-17 10:09:20', '188.43.136.32', 'Russia'),
(44, '1', '2019-08-17 10:19:21', '105.86.254.247', 'Egypt'),
(45, '1', '2019-08-17 10:20:17', '105.86.254.247', 'Egypt'),
(46, '1', '2019-08-17 10:21:06', '105.86.254.247', 'Egypt'),
(47, '1', '2019-08-17 10:21:16', '105.86.254.247', 'Egypt'),
(48, '1', '2019-08-17 10:22:32', '105.86.254.247', 'Egypt'),
(49, '1', '2019-08-17 21:46:29', '188.43.136.32', 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `anas_setting`
--

CREATE TABLE `anas_setting` (
  `id` int(11) NOT NULL,
  `monthlypay` float NOT NULL,
  `yearlypay` float NOT NULL,
  `exchangerate` float NOT NULL,
  `userinvite` float NOT NULL,
  `clientinvite` float NOT NULL,
  `contactmobile` varchar(50) COLLATE utf8_bin NOT NULL,
  `contactemail` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_setting`
--

INSERT INTO `anas_setting` (`id`, `monthlypay`, `yearlypay`, `exchangerate`, `userinvite`, `clientinvite`, `contactmobile`, `contactemail`) VALUES
(1, 4.99, 49.9, 0.06, 9.99, 9.99, '+20234234237', 'anasberbar.1998@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `anas_ticket`
--

CREATE TABLE `anas_ticket` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` longtext CHARACTER SET utf8 NOT NULL,
  `senddate` datetime NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_ticket`
--

INSERT INTO `anas_ticket` (`id`, `userid`, `title`, `message`, `senddate`, `status`) VALUES
(2, '1', 'test', 'teststeststsetstsetsetsetsetsetet', '2019-08-06 00:00:00', 'set'),
(3, '1', 'test', 'Test set set', '2019-08-08 16:43:33', 'set'),
(4, '1', 'test', 'Testste', '2019-08-08 22:54:09', ''),
(5, '1', 'test', '66293945', '2019-08-13 15:57:11', 'set'),
(6, '1', 'test', 'Test no', '2019-08-13 15:57:52', 'set');

-- --------------------------------------------------------

--
-- Table structure for table `anas_user`
--

CREATE TABLE `anas_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `role` varchar(10) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL,
  `startdate` varchar(20) CHARACTER SET utf8 NOT NULL,
  `expiredate` varchar(20) CHARACTER SET utf8 NOT NULL,
  `promocode` varchar(20) CHARACTER SET utf8 NOT NULL,
  `language` varchar(20) CHARACTER SET utf8 NOT NULL,
  `wallet` float NOT NULL,
  `token` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `anas_user`
--

INSERT INTO `anas_user` (`id`, `name`, `password`, `mobile`, `email`, `role`, `avatar`, `status`, `startdate`, `expiredate`, `promocode`, `language`, `wallet`, `token`) VALUES
(1, 'test', 'test', '+20234234234', 'test@gmail.com', 'user', 'image/profile/IMGtest+12342342345.jpg', 'free', '2019-09-01', '2019-10-01', '66293945', 'English', 3254.11, ''),
(19, 'anas test', '1234567a', '+201144735367', 'anasberbar.1998@hotmail.com', 'user', 'image/profile/default.jpg', 'free', '2019-08-01', '2019-08-14', '66018367', 'English', 10, 'adfadfa'),
(25, 'Nourhan', '1234567a', '+201140746555', '', 'user', 'image/profile/default.jpg', 'free', '2019-08-21', '2019-09-21', '58062808', 'English', 1055.01, ''),
(28, 'fdafds', '12345', '+2012345678', '', 'user', 'image/profile/default.jpg', 'use', '', '2019-09-09 09:24:32', '69396164', 'English', 0, '94c691d04f536152'),
(26, 'xiangyi', '12345', '+20123456789', '', 'user', 'image/profile/default.jpg', 'use', '', '2019-09-05 13:07:58', '37218976', 'English', 9.99, '668f8b8336ac29e9'),
(27, 'xue wen', '12345', '+201234567890', '', 'user', 'image/profile/default.jpg', 'use', '', '2019-09-05 13:11:24', '66640924', 'عربى', 9.99, '548cdeed7c646f94'),
(29, 'erwrww', 'sfsfdsfs', 'erwerw', '', 'user', 'image/profile/erwerw.jpg', 'free', '2019-10-23', '2019-10-23', '12345678', 'English', 32, ''),
(30, '6rtyrygdg', 'sfsfdsfs', '1242424242', '', 'user', 'image/profile/1242424242.jpg', 'free', '2019-10-23', '2019-10-23', '12345678', 'English', 32, ''),
(31, 'kjhgfu', 'sfsdfsff', '8686698789', '', 'user', 'image/profile/8686698789.jpg', 'free', '2019-10-23', '2019-10-23', '12345678', 'English', 32, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anas_admob`
--
ALTER TABLE `anas_admob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_billing`
--
ALTER TABLE `anas_billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_coupon`
--
ALTER TABLE `anas_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_coupon_history`
--
ALTER TABLE `anas_coupon_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_favorite`
--
ALTER TABLE `anas_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_food`
--
ALTER TABLE `anas_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_restaurant`
--
ALTER TABLE `anas_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_session`
--
ALTER TABLE `anas_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_setting`
--
ALTER TABLE `anas_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_ticket`
--
ALTER TABLE `anas_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anas_user`
--
ALTER TABLE `anas_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anas_admob`
--
ALTER TABLE `anas_admob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anas_billing`
--
ALTER TABLE `anas_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `anas_coupon`
--
ALTER TABLE `anas_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100001;

--
-- AUTO_INCREMENT for table `anas_coupon_history`
--
ALTER TABLE `anas_coupon_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anas_favorite`
--
ALTER TABLE `anas_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anas_food`
--
ALTER TABLE `anas_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `anas_restaurant`
--
ALTER TABLE `anas_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `anas_session`
--
ALTER TABLE `anas_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `anas_setting`
--
ALTER TABLE `anas_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anas_ticket`
--
ALTER TABLE `anas_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anas_user`
--
ALTER TABLE `anas_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
