-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2020 at 06:59 PM
-- Server version: 5.7.31-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fatimamh_warayvpn`
--

-- --------------------------------------------------------

--
-- Table structure for table `anti_ddos`
--

CREATE TABLE `anti_ddos` (
  `id` int(11) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) NOT NULL DEFAULT '0.0.0.0',
  `timestamp` int(11) NOT NULL,
  `logs_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attention`
--

CREATE TABLE `attention` (
  `id` int(11) NOT NULL,
  `attention_msg` text NOT NULL,
  `attention_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bandwidth_logs`
--

CREATE TABLE `bandwidth_logs` (
  `id` int(11) NOT NULL,
  `server` text NOT NULL,
  `server_ip` text NOT NULL,
  `server_port` text NOT NULL,
  `since_connected` text NOT NULL,
  `username` text NOT NULL,
  `ipaddress` text NOT NULL,
  `bytes_received` text NOT NULL,
  `bytes_sent` text NOT NULL,
  `bandwidth` bigint(50) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `status` enum('offline','online') NOT NULL,
  `timestamp` int(11) NOT NULL,
  `category` enum('premium','vip','ph','private','free') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_logs`
--

CREATE TABLE `conversion_logs` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `premium` varchar(755) NOT NULL,
  `vip` varchar(755) NOT NULL,
  `description` varchar(755) NOT NULL,
  `logs_date` datetime NOT NULL,
  `ipaddress` varchar(32) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credits_logs`
--

CREATE TABLE `credits_logs` (
  `id` int(11) NOT NULL,
  `credits_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `credits_id2` int(11) NOT NULL,
  `credits_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `credits_qty` int(11) NOT NULL,
  `credits_date` datetime NOT NULL,
  `seller` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `credits_logs`
--

INSERT INTO `credits_logs` (`id`, `credits_id`, `credits_id2`, `credits_username`, `credits_qty`, `credits_date`, `seller`) VALUES
(647, '1', 4380, 'Admin12345', 1, '2020-08-18 15:20:48', ''),
(648, '4380', 4383, 'Sudadmin12345', 1, '2020-08-18 15:40:35', ''),
(649, '4383', 4386, 'Reseller12345', 1, '2020-08-18 15:51:44', ''),
(650, '4386', 4389, 'Subreseller1234', 1, '2020-08-18 16:08:23', ''),
(651, '1', 4402, 'Reseller1234', 1, '2020-08-18 16:52:25', ''),
(652, '1', 4427, 'Keith', 999999, '2020-09-24 11:13:19', ''),
(653, '1', 4429, 'Owner-Welden', 999999, '2020-09-24 17:15:23', ''),
(654, '1', 4430, 'Owner-Dudy', 999999, '2020-09-24 17:16:12', ''),
(655, '1', 4428, 'Owner-Waray', 999999, '2020-09-24 17:30:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `cronjob_banned_ip`
--

CREATE TABLE `cronjob_banned_ip` (
  `id` int(11) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `content` varchar(128) NOT NULL DEFAULT 'Attempting',
  `ip` varchar(128) NOT NULL DEFAULT '0.0.0.0',
  `logs_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cronjob_logs`
--

CREATE TABLE `cronjob_logs` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `ipaddress` varchar(128) NOT NULL DEFAULT '0.0.0.0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `download_category` enum('public','seller') NOT NULL,
  `download_title` varchar(767) NOT NULL,
  `download_msg` text NOT NULL,
  `download_network` enum('GTM','SMART','TNT','SUN','ALLINONE') NOT NULL,
  `download_device` enum('ANDROID','IOS','WINDOWS','CONFIG') NOT NULL,
  `download_file` varchar(999) NOT NULL,
  `download_date` datetime NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `downloaded` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `download_category`, `download_title`, `download_msg`, `download_network`, `download_device`, `download_file`, `download_date`, `views`, `downloaded`) VALUES
(14, 'public', 'How to Create Trial', 'Hello', 'ALLINONE', 'ANDROID', '1597579001.zip', '2020-08-16 19:56:41', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `duration`
--

CREATE TABLE `duration` (
  `id` int(11) NOT NULL,
  `duration_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration_time` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `duration`
--

INSERT INTO `duration` (`id`, `duration_name`, `duration_time`) VALUES
(1, '1 Hour', 3600),
(2, '2 Hours', 7200),
(3, '3 Hours', 10800),
(4, '4 Hours', 14400),
(5, '5 Hours', 18000),
(6, '6 Hours', 21600),
(7, '7 Hours', 25200),
(8, '8 Hours', 28800),
(9, '9 Hours', 32400),
(10, '10 Hours', 36000),
(11, '11 Hours', 39600),
(12, '12 Hours', 43200),
(13, '13 Hours', 46800),
(14, '14 Hours', 50400),
(15, '15 Hours', 54000),
(16, '16 Hours', 57600),
(17, '17 Hours', 61200),
(18, '18 Hours', 64800),
(19, '19 Hours', 68400),
(20, '20 Hours', 72000),
(21, '21 Hours', 75600),
(22, '22 Hours', 79200),
(23, '23 Hours', 82800),
(24, '1 Day', 86400),
(25, '2 Days', 172800),
(26, '3 Days', 259200),
(27, '4 Days', 345600),
(28, '5 Days', 432000),
(29, '6 Days', 518400),
(30, '7 Days', 604800),
(31, '8 Days', 691200),
(32, '9 Days', 777600),
(33, '10 Days', 864000),
(34, '15 Days', 1296000),
(35, '20 Days', 1728000),
(36, '30 Days', 2592000),
(37, '31 Days', 2678400),
(38, '32 Days', 2764800),
(39, '33 Days', 2851200);

-- --------------------------------------------------------

--
-- Table structure for table `duration_logs`
--

CREATE TABLE `duration_logs` (
  `id` int(11) NOT NULL,
  `duration_id` int(11) NOT NULL,
  `duration_id2` int(11) NOT NULL,
  `duration_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duration_qty` int(11) NOT NULL,
  `duration_item` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duration_date` datetime NOT NULL,
  `duration_type` enum('premium','vip','private') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'premium',
  `ipaddress` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `duration_logs`
--

INSERT INTO `duration_logs` (`id`, `duration_id`, `duration_id2`, `duration_username`, `duration_qty`, `duration_item`, `duration_date`, `duration_type`, `ipaddress`) VALUES
(420, 4402, 4402, 'Reseller1234', 1, '10 Days', '2020-08-18 16:53:37', 'private', '157.230.241.56'),
(421, 4428, 4428, 'Owner-Waray', 1, '10 Days', '2020-09-24 17:34:43', 'private', '116.93.124.130'),
(422, 4428, 4428, 'Owner-Waray', 1, '15 Days', '2020-09-24 17:35:01', 'vip', '116.93.124.130'),
(423, 4428, 4428, 'Owner-Waray', 1, '30 Days', '2020-09-24 17:35:11', 'premium', '116.93.124.130');

-- --------------------------------------------------------

--
-- Table structure for table `freeze_request`
--

CREATE TABLE `freeze_request` (
  `id` int(11) NOT NULL,
  `content` varchar(128) NOT NULL DEFAULT 'Freeze Request',
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `client_id` int(11) NOT NULL,
  `client_name` varchar(128) NOT NULL,
  `client_ipaddress` varchar(128) NOT NULL DEFAULT '0.0.0.0',
  `request_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reseller_id` int(11) NOT NULL,
  `reseller_name` varchar(128) NOT NULL,
  `reseller_ipaddress` varchar(128) NOT NULL DEFAULT '0.0.0.0',
  `process_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freeze_request`
--

INSERT INTO `freeze_request` (`id`, `content`, `status`, `client_id`, `client_name`, `client_ipaddress`, `request_date`, `reseller_id`, `reseller_name`, `reseller_ipaddress`, `process_date`) VALUES
(2, 'Freeze Request', 'approved', 4380, 'Admin12345', '188.166.178.215', '2020-08-18 14:21:24', 1, 'admin', '188.166.178.215', '2020-08-18 14:45:58'),
(3, 'Freeze Request', 'pending', 4380, 'Admin12345', '157.230.241.56', '2020-08-18 15:54:42', 0, '', '0.0.0.0', '2020-08-18 15:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `limit_logs`
--

CREATE TABLE `limit_logs` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `username` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `subadmin_limit` int(11) NOT NULL DEFAULT '0',
  `reseller_limit` int(11) NOT NULL DEFAULT '0',
  `subreseller_limit` int(11) NOT NULL DEFAULT '0',
  `client_limit` int(11) NOT NULL,
  `user_level` enum('normal','reseller','subreseller','subadmin','admin','superadmin') COLLATE latin1_general_ci NOT NULL DEFAULT 'normal',
  `logs_date` datetime NOT NULL,
  `ipaddress` varchar(64) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `limit_registration`
--

CREATE TABLE `limit_registration` (
  `id` int(11) NOT NULL,
  `ipaddress` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `regtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `ip` varchar(20) DEFAULT NULL,
  `attempts` int(11) DEFAULT '0',
  `lastlogin` datetime DEFAULT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts_logs`
--

CREATE TABLE `login_attempts_logs` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `user_name` varchar(64) NOT NULL,
  `logs_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_attempts_logs`
--

INSERT INTO `login_attempts_logs` (`id`, `ip`, `user_name`, `logs_date`) VALUES
(1080, '74.207.226.108', 'admin', '2020-08-10 08:44:53'),
(1081, '74.207.226.108', 'admin', '2020-08-10 08:45:08'),
(1082, '74.207.226.108', 'admin', '2020-08-10 08:45:26'),
(1083, '110.54.203.221', 'tech541', '2020-08-12 17:46:54'),
(1084, '128.199.81.162', 'collin22', '2020-08-13 05:57:26'),
(1085, '128.199.81.162', 'collin22', '2020-08-13 05:58:07'),
(1086, '128.199.81.162', 'collin22', '2020-08-13 11:28:43'),
(1087, '128.199.201.67', 'Subadmin12345', '2020-08-16 20:44:02'),
(1088, '128.199.201.67', 'Admin12345', '2020-08-16 20:44:23'),
(1089, '128.199.201.67', 'admin12345', '2020-08-16 21:19:43'),
(1090, '128.199.201.67', 'Resellers12345', '2020-08-16 21:21:53'),
(1091, '188.166.178.215', 'Subadmin12345', '2020-08-18 14:29:20'),
(1092, '188.166.178.215', 'Subadmin12345', '2020-08-18 14:29:42'),
(1093, '188.166.178.215', 'Subadmin12345', '2020-08-18 14:51:23'),
(1094, '188.166.178.215', 'Subadmin12345', '2020-08-18 14:51:44'),
(1095, '157.230.241.56', 'Subadmin12345', '2020-08-18 15:45:52'),
(1096, '157.230.241.56', 'Subadmin12345', '2020-08-18 15:56:57'),
(1097, '157.230.241.56', 'Subadmin12345', '2020-08-18 15:57:23'),
(1098, '110.54.186.238', 'tech541', '2020-08-18 22:54:11'),
(1099, '188.166.178.215', 'Admin12345', '2020-08-19 06:07:10'),
(1100, '188.166.178.215', 'Admin12345', '2020-08-19 06:07:33'),
(1101, '139.59.247.52', 'Keith', '2020-09-24 17:31:03'),
(1102, '116.93.124.130', 'Owner Waray', '2020-09-24 17:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `login_banned_ip`
--

CREATE TABLE `login_banned_ip` (
  `id` int(11) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) NOT NULL DEFAULT '0.0.0.0',
  `logs_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_banned_ip`
--

INSERT INTO `login_banned_ip` (`id`, `attempts`, `ip`, `logs_date`) VALUES
(691, 3, '74.207.226.108', '2020-08-10 00:45:26'),
(692, 1, '110.54.203.221', '2020-08-11 21:46:54'),
(693, 2, '128.199.81.162', '2020-08-12 21:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `nas`
--

CREATE TABLE `nas` (
  `id` int(10) NOT NULL,
  `nasname` varchar(128) NOT NULL,
  `shortname` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT 'RADIUS Client'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radacct`
--

CREATE TABLE `radacct` (
  `radacctid` bigint(21) NOT NULL,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasportid` varchar(15) DEFAULT NULL,
  `nasporttype` varchar(32) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctsessiontime` int(12) UNSIGNED DEFAULT NULL,
  `acctauthentic` varchar(32) DEFAULT NULL,
  `connectinfo_start` varchar(50) DEFAULT NULL,
  `connectinfo_stop` varchar(50) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `framedprotocol` varchar(32) DEFAULT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `acctstartdelay` int(12) UNSIGNED DEFAULT NULL,
  `acctstopdelay` int(12) UNSIGNED DEFAULT NULL,
  `xascendsessionsvrkey` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radcheck`
--

CREATE TABLE `radcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radgroupcheck`
--

CREATE TABLE `radgroupcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radgroupreply`
--

CREATE TABLE `radgroupreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radpostauth`
--

CREATE TABLE `radpostauth` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `pass` varchar(64) NOT NULL DEFAULT '',
  `reply` varchar(32) NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radreply`
--

CREATE TABLE `radreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radusergroup`
--

CREATE TABLE `radusergroup` (
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recovery_logs`
--

CREATE TABLE `recovery_logs` (
  `id` int(11) NOT NULL,
  `recovery_menu` varchar(255) NOT NULL,
  `recovery_ipaddress` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `recovery_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reloadduration_logs`
--

CREATE TABLE `reloadduration_logs` (
  `id` int(11) NOT NULL,
  `duration_id` int(11) NOT NULL,
  `duration_id2` int(11) NOT NULL,
  `duration_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duration_item` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duration_date` datetime NOT NULL,
  `duration_type` enum('premium','vip','private') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'premium',
  `ipaddress` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reloadduration_logs`
--

INSERT INTO `reloadduration_logs` (`id`, `duration_id`, `duration_id2`, `duration_username`, `duration_item`, `duration_date`, `duration_type`, `ipaddress`) VALUES
(2137, 1, 4427, 'Keith', '33 Days', '2020-09-24 11:13:58', 'private', '116.93.124.130'),
(2138, 1, 4427, 'Keith', '33 Days', '2020-09-24 16:56:03', 'premium', '188.166.183.105'),
(2139, 1, 4427, 'Keith', '33 Days', '2020-09-24 16:56:37', 'vip', '188.166.183.105'),
(2140, 1, 4430, 'Owner-Dudy', '33 Days', '2020-09-24 17:04:34', 'premium', '188.166.183.105'),
(2141, 1, 4427, 'Keith', '33 Days', '2020-09-24 17:05:02', 'premium', '188.166.183.105'),
(2142, 1, 4429, 'Owner-Welden', '33 Days', '2020-09-24 17:05:48', 'premium', '188.166.183.105'),
(2143, 1, 4428, 'Warayvpn', '33 Days', '2020-09-24 17:06:23', 'premium', '188.166.183.105'),
(2144, 1, 4427, 'Keith', '33 Days', '2020-09-24 17:08:38', 'premium', '188.166.183.105'),
(2145, 1, 4429, 'Owner-Welden', '33 Days', '2020-09-24 17:15:43', 'private', '188.166.183.105'),
(2146, 1, 4429, 'Owner-Welden', '33 Days', '2020-09-24 17:15:57', 'vip', '188.166.183.105'),
(2147, 1, 4430, 'Owner-Dudy', '33 Days', '2020-09-24 17:16:25', 'premium', '188.166.183.105'),
(2148, 1, 4430, 'Owner-Dudy', '33 Days', '2020-09-24 17:16:39', 'vip', '188.166.183.105'),
(2149, 1, 4430, 'Owner-Dudy', '33 Days', '2020-09-24 17:16:53', 'private', '188.166.183.105');

-- --------------------------------------------------------

--
-- Table structure for table `server_list`
--

CREATE TABLE `server_list` (
  `server_id` int(255) NOT NULL,
  `server_name` varchar(255) NOT NULL,
  `server_ip` varchar(20) NOT NULL,
  `server_category` enum('premium','vip','free','private') NOT NULL DEFAULT 'premium',
  `server_port` int(11) NOT NULL DEFAULT '80',
  `server_folder` varchar(255) NOT NULL,
  `server_tcp` varchar(15) NOT NULL DEFAULT 'tcp1',
  `server_parser` varchar(255) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_options`
--

CREATE TABLE `site_options` (
  `email_validation` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `support_message`
--

CREATE TABLE `support_message` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `support_message` text NOT NULL,
  `support_id_user` int(11) NOT NULL,
  `support_name` varchar(767) NOT NULL,
  `support_groupname` varchar(767) NOT NULL,
  `support_date` datetime NOT NULL,
  `support_ipaddress` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket`
--

CREATE TABLE `support_ticket` (
  `id` int(11) NOT NULL,
  `ticket_name` varchar(767) NOT NULL,
  `ticket_subject` varchar(767) NOT NULL,
  `ticket_message` text NOT NULL,
  `ticket_status` enum('open','customer-reply','answered','closed') NOT NULL,
  `ticket_date` datetime NOT NULL,
  `ticket_update` datetime NOT NULL,
  `ip_address` varchar(767) NOT NULL,
  `ticket_id_user` int(11) NOT NULL,
  `ticket_groupname` varchar(767) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspension_logs`
--

CREATE TABLE `suspension_logs` (
  `id` int(11) NOT NULL,
  `is_suspended` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_username` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `offense` varchar(225) NOT NULL,
  `logs_date` datetime NOT NULL,
  `ipaddress` varchar(32) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspension_recovery_logs`
--

CREATE TABLE `suspension_recovery_logs` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_username` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `suspend_date` datetime NOT NULL,
  `offense` varchar(225) NOT NULL,
  `logs_date` datetime NOT NULL,
  `is_unsuspended` int(11) NOT NULL,
  `ipaddress` varchar(32) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `username_logs`
--

CREATE TABLE `username_logs` (
  `id` int(11) NOT NULL,
  `old_username` varchar(50) NOT NULL,
  `new_username` varchar(50) NOT NULL,
  `old_level` varchar(64) NOT NULL,
  `new_level` varchar(64) NOT NULL,
  `old_upline` int(11) NOT NULL,
  `new_upline` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `logs_date` datetime NOT NULL,
  `ipaddress` varchar(32) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `username_logs`
--

INSERT INTO `username_logs` (`id`, `old_username`, `new_username`, `old_level`, `new_level`, `old_upline`, `new_upline`, `client_id`, `user_id`, `logs_date`, `ipaddress`) VALUES
(1620, 'Owner-Keith', 'Owner-Keith', 'reseller', 'administrator', 1, 1, 4427, 1, '2020-09-24 17:12:15', '188.166.183.105'),
(1619, 'Keith', 'Owner-Keith', 'reseller', 'reseller', 1, 1, 4427, 1, '2020-09-24 17:11:55', '188.166.183.105'),
(1618, 'Warayvpn', 'Owner-Waray', 'administrator', 'administrator', 1, 1, 4428, 1, '2020-09-24 17:11:29', '188.166.183.105'),
(1617, 'Owner-Dudy', 'Owner-Dudy', 'administrator', 'administrator', 1, 1, 4430, 1, '2020-09-24 17:03:51', '188.166.183.105'),
(1616, 'Owner-Dudy', 'Owner-Dudy', 'administrator', 'administrator', 1, 1, 4430, 1, '2020-09-24 17:03:31', '188.166.183.105'),
(1615, 'Owner-Dudy', 'Owner-Dudy', 'administrator', 'administrator', 1, 1, 4430, 1, '2020-09-24 17:03:18', '188.166.183.105'),
(1614, 'Owner-Dudy', 'Owner-Dudy', 'administrator', 'administrator', 1, 1, 4430, 1, '2020-09-24 17:02:34', '188.166.183.105'),
(1613, 'Keith', 'Keith', 'normal', 'reseller', 1, 1, 4427, 1, '2020-09-24 09:49:04', '116.93.124.130'),
(1621, 'Owner-Welden', 'Owner-Welden', 'administrator', 'reseller', 1, 1, 4429, 1, '2020-09-24 17:13:30', '188.166.183.105'),
(1622, 'Owner-Welden', 'Owner-Welden', 'reseller', 'administrator', 1, 1, 4429, 1, '2020-09-24 17:13:57', '188.166.183.105');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `password` varchar(50) NOT NULL DEFAULT 'jho',
  `code` varchar(10) NOT NULL,
  `ss_id` varchar(64) NOT NULL,
  `ssl_id` varchar(50) NOT NULL DEFAULT 'ssl',
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_pass` varchar(256) NOT NULL,
  `attribute` varchar(64) NOT NULL DEFAULT 'MD5-Password',
  `op` char(2) NOT NULL DEFAULT ':=',
  `auth_vpn` varchar(256) NOT NULL,
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `full_name` varchar(50) DEFAULT NULL,
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddress` varchar(50) NOT NULL DEFAULT '0.0.0.0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp` int(11) NOT NULL,
  `reset_code` varchar(255) NOT NULL DEFAULT '0',
  `is_groupname` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_freeze` tinyint(1) NOT NULL DEFAULT '1',
  `force_freeze` tinyint(1) NOT NULL DEFAULT '0',
  `last_freeze_date` datetime NOT NULL,
  `is_validated` tinyint(1) NOT NULL DEFAULT '0',
  `is_connected` int(1) NOT NULL DEFAULT '0',
  `is_offense` int(11) NOT NULL DEFAULT '0',
  `is_ban` int(11) NOT NULL DEFAULT '1',
  `suspended_date` datetime NOT NULL,
  `duration` bigint(50) NOT NULL DEFAULT '18000',
  `vip_duration` bigint(50) NOT NULL,
  `is_vip` int(11) NOT NULL DEFAULT '0',
  `private_duration` bigint(50) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `role_duration` bigint(50) NOT NULL,
  `private_slot` int(11) NOT NULL DEFAULT '0',
  `private_control` tinyint(1) NOT NULL DEFAULT '0',
  `credits` int(20) NOT NULL DEFAULT '0',
  `upline` int(10) NOT NULL DEFAULT '1',
  `login_status` enum('offline','online') NOT NULL DEFAULT 'offline',
  `last_active_time` datetime NOT NULL,
  `user_level` enum('normal','subreseller','reseller','administrator','subadmin','superadmin') NOT NULL,
  `status` enum('live','freeze','suspended','banned','vacation') NOT NULL DEFAULT 'live',
  `bandwidth` int(11) NOT NULL DEFAULT '0',
  `bandwidth_premium` int(11) NOT NULL,
  `bandwidth_vip` int(11) NOT NULL,
  `bandwidth_ph` int(11) NOT NULL,
  `bandwidth_private` int(11) NOT NULL,
  `bandwidth_free` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `code`, `ss_id`, `ssl_id`, `user_name`, `user_pass`, `attribute`, `op`, `auth_vpn`, `user_email`, `full_name`, `regdate`, `ipaddress`, `lastlogin`, `timestamp`, `reset_code`, `is_groupname`, `is_active`, `is_freeze`, `force_freeze`, `last_freeze_date`, `is_validated`, `is_connected`, `is_offense`, `is_ban`, `suspended_date`, `duration`, `vip_duration`, `is_vip`, `private_duration`, `is_private`, `role_duration`, `private_slot`, `private_control`, `credits`, `upline`, `login_status`, `last_active_time`, `user_level`, `status`, `bandwidth`, `bandwidth_premium`, `bandwidth_vip`, `bandwidth_ph`, `bandwidth_private`, `bandwidth_free`) VALUES
(1, 'hjhj', '405154310', '61612', '55', 'admin', 'iKyOs6SGp4ypuK6nrZWsrqyRwKnZupjJzsWbtLveYYM=', 'MD5-Password', ':=', '2164b4cdfd09846955b51938932e57bc', 'waray@gmail.com', 'Developer VPN', '2018-07-09 10:59:14', '139.59.247.52', '2020-09-24 17:57:25', 0, '0', 'superadmin', 1, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', 33696000, 1305000, 1, 1728000, 1, 0, 0, 0, 1000, 1, 'online', '2020-09-24 17:57:25', 'superadmin', 'live', 0, 0, 0, 0, 0, 0),
(4377, 'jho', '561627566', '', 'ssl', 'Mhix', 'nbuJo6KredCaz8OKp5Wo37mhxMzI0H7myIyj5rveYYM=', 'MD5-Password', ':=', '33aec4a64214e3d49b0363397dfbe457', 'mhix@gmail.com', 'Mhixmhix', '2020-08-16 10:32:05', '116.93.124.130', '2020-09-24 09:43:56', 0, '0', 'free', 1, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', 2378820, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'offline', '2020-09-24 09:43:56', 'normal', 'live', 0, 0, 0, 0, 0, 0),
(4427, 'jho', '158680338', '', 'ssl', 'Owner-Keith', 'i6uiurWcesyWzqactqd5mKR81IPaqHHqy8drnra4YYM=', 'MD5-Password', ':=', 'd17666c7046d0e949f73772999d89bb2', 'kentlouiepitogo0@gmail.com', 'Kent Louie Pitogo', '2020-09-24 09:48:30', '139.59.247.52', '2020-09-24 17:31:09', 0, '0', 'superadmin', 1, 0, 0, '2020-09-24 17:21:02', 1, 0, 0, 0, '0000-00-00 00:00:00', 22810620, 0, 0, 0, 0, 2588580, 0, 0, 999999, 1, 'offline', '2020-09-24 17:31:09', 'superadmin', 'live', 0, 0, 0, 0, 0, 0),
(4428, 'jho', '615320548', '32672', 'ssl', 'Owner-Waray', 'i6yNoauadtKako3NoZS0qrqQxKXYuZS0yrCbuLK4YYM=', 'MD5-Password', ':=', '0ec584ec324d8c8f464359a24188ec4e', 'supervisor@gmail.com', 'Supervisor', '2020-09-24 04:58:35', '116.93.124.130', '2020-09-24 17:34:12', 0, '0', 'superadmin', 1, 0, 0, '2020-09-24 17:22:01', 1, 0, 0, 0, '0000-00-00 00:00:00', 1620650589420, 327259437360, 1, 54108953760, 1, 2588640, 0, 0, 59608, 1, 'online', '2020-09-24 17:34:12', 'superadmin', 'live', 0, 0, 0, 0, 0, 0),
(4429, 'jho', '575523222', '16692', 'ssl', 'Owner-Welden', 'mr24wKqtYZ+VlMvMpc14maLFwMDPk3rf2dSB3La4YYM=', 'MD5-Password', ':=', '42c3be7495679d359e7e30d8360ec6e1', 'Weldenmabasag@gmail.com', 'Welden Mabasa', '2020-09-24 05:00:12', '0.0.0.0', '0000-00-00 00:00:00', 0, '0', 'superadmin', 1, 0, 0, '2020-09-24 17:22:01', 1, 0, 0, 0, '0000-00-00 00:00:00', 2854380, 2847720, 1, 2847720, 1, 2588580, 0, 0, 999999, 1, 'offline', '0000-00-00 00:00:00', 'superadmin', 'live', 0, 0, 0, 0, 0, 0),
(4430, 'jho', '806485736', '51672', 'ssl', 'Owner-Dudy', 'kKuetrSqcqeZ3MDLoqiGnrCg0KvbuIq92aGnsra4YYM=', 'MD5-Password', ':=', 'd33b29d406d1e83f54f82db37f018190', 'dudykoy@gmail.com', 'Dudy Base', '2020-09-24 05:01:58', '0.0.0.0', '0000-00-00 00:00:00', 0, '0', 'superadmin', 1, 0, 0, '0000-00-00 00:00:00', 1, 0, 0, 0, '0000-00-00 00:00:00', 5704920, 2847420, 1, 2847420, 1, 10363440, 0, 0, 999999, 1, 'offline', '0000-00-00 00:00:00', 'superadmin', 'live', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_delete`
--

CREATE TABLE `users_delete` (
  `id` int(11) NOT NULL,
  `delete_timestamp` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_pass` varchar(256) NOT NULL,
  `auth_vpn` varchar(256) NOT NULL,
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `full_name` varchar(50) DEFAULT NULL,
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddress` varchar(50) NOT NULL DEFAULT '0.0.0.0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timestamp` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `reset_code` varchar(255) NOT NULL DEFAULT '0',
  `is_groupname` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_freeze` tinyint(1) NOT NULL DEFAULT '1',
  `last_freeze_date` date NOT NULL,
  `is_validated` tinyint(1) NOT NULL DEFAULT '0',
  `is_connected` int(1) NOT NULL DEFAULT '0',
  `is_offense` int(11) NOT NULL DEFAULT '0',
  `is_ban` int(11) NOT NULL DEFAULT '1',
  `suspended_date` datetime NOT NULL,
  `duration` bigint(50) NOT NULL DEFAULT '7200',
  `vip_duration` bigint(50) NOT NULL,
  `is_vip` int(11) NOT NULL DEFAULT '0',
  `private_duration` bigint(50) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `private_slot` int(11) NOT NULL DEFAULT '0',
  `private_control` tinyint(1) NOT NULL DEFAULT '0',
  `credits` int(20) NOT NULL DEFAULT '0',
  `upline` int(10) NOT NULL DEFAULT '1',
  `login_status` enum('offline','online') NOT NULL DEFAULT 'offline',
  `last_active_time` datetime NOT NULL,
  `user_level` enum('normal','subreseller','reseller','moderator','subadmin','superadmin') NOT NULL,
  `status` enum('live','freeze','suspended','banned','vacation') NOT NULL DEFAULT 'live',
  `bandwidth` int(11) NOT NULL DEFAULT '0',
  `bandwidth_premium` int(11) NOT NULL,
  `bandwidth_vip` int(11) NOT NULL,
  `bandwidth_ph` int(11) NOT NULL,
  `bandwidth_private` int(11) NOT NULL,
  `bandwidth_free` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_delete`
--

INSERT INTO `users_delete` (`id`, `delete_timestamp`, `user_id`, `user_name`, `user_pass`, `auth_vpn`, `user_email`, `full_name`, `regdate`, `ipaddress`, `lastlogin`, `timestamp`, `code`, `reset_code`, `is_groupname`, `is_active`, `is_freeze`, `last_freeze_date`, `is_validated`, `is_connected`, `is_offense`, `is_ban`, `suspended_date`, `duration`, `vip_duration`, `is_vip`, `private_duration`, `is_private`, `private_slot`, `private_control`, `credits`, `upline`, `login_status`, `last_active_time`, `user_level`, `status`, `bandwidth`, `bandwidth_premium`, `bandwidth_vip`, `bandwidth_ph`, `bandwidth_private`, `bandwidth_free`) VALUES
(2342, 1603497665, 4426, 'trial716592938', 'nLq83KKJdqCdqcfQuLmw2qOSq7zKkqPiya+jwrveYYM=', 'e1f16e6e7bfee6d187cf020e2c888c75', 'trial716592938@gmail.com', 'trial716592938', '2020-09-24 08:00:52', '0.0.0.0', '0000-00-00 00:00:00', 0, '344447281', '0', 'free', 1, 0, '0000-00-00', 1, 0, 0, 0, '0000-00-00 00:00:00', 7200, 0, 0, 0, 0, 0, 0, 0, 1, 'offline', '0000-00-00 00:00:00', 'normal', 'live', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(5) NOT NULL,
  `profile_id` int(5) NOT NULL,
  `profile_fb` varchar(250) NOT NULL,
  `profile_address` varchar(255) NOT NULL,
  `profile_number` varchar(13) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `bdo` int(1) NOT NULL DEFAULT '0',
  `bitcoin` int(1) NOT NULL DEFAULT '0',
  `bpi` int(1) NOT NULL DEFAULT '0',
  `cebuana` int(1) NOT NULL DEFAULT '0',
  `gcash` int(1) NOT NULL DEFAULT '0',
  `lbc` int(1) NOT NULL DEFAULT '0',
  `lbp` int(1) NOT NULL DEFAULT '0',
  `meetup` int(1) NOT NULL DEFAULT '0',
  `mlkwartapadala` int(1) NOT NULL DEFAULT '0',
  `palawanexpress` int(1) NOT NULL DEFAULT '0',
  `paypal` int(1) NOT NULL DEFAULT '0',
  `prepaidload` int(1) NOT NULL DEFAULT '0',
  `rcbc` int(1) NOT NULL DEFAULT '0',
  `rdperapadala` int(1) NOT NULL DEFAULT '0',
  `smartmoney` int(1) NOT NULL DEFAULT '0',
  `unionbank` int(1) NOT NULL DEFAULT '0',
  `westernunion` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `profile_id`, `profile_fb`, `profile_address`, `profile_number`, `profile_image`, `bdo`, `bitcoin`, `bpi`, `cebuana`, `gcash`, `lbc`, `lbp`, `meetup`, `mlkwartapadala`, `palawanexpress`, `paypal`, `prepaidload`, `rcbc`, `rdperapadala`, `smartmoney`, `unionbank`, `westernunion`) VALUES
(4398, 4377, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4393, 4372, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4388, 4367, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4389, 4368, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4390, 4369, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4392, 4371, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4399, 4378, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4414, 4393, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4410, 4389, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4446, 4425, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4438, 4417, 'https://www.facebook.com/me', 'wer na u', '123456789', '1597762624.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4423, 4402, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 'https://www.facebook.com', 'Manila', '+639225382931', '1597783277.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4448, 4427, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4449, 4428, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4450, 4429, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4451, 4430, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code_name` varchar(50) NOT NULL,
  `user_id` int(100) NOT NULL,
  `client_name` varchar(755) NOT NULL,
  `reseller_id` int(100) NOT NULL,
  `reseller_name` varchar(64) NOT NULL,
  `is_qty` int(11) NOT NULL DEFAULT '1',
  `is_used` int(1) NOT NULL,
  `duration` bigint(50) NOT NULL DEFAULT '0',
  `gen_date` datetime NOT NULL,
  `date_used` datetime NOT NULL,
  `category` enum('premium','vip','private') NOT NULL DEFAULT 'premium',
  `permission` tinyint(1) NOT NULL DEFAULT '0',
  `ipaddress` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code_name`, `user_id`, `client_name`, `reseller_id`, `reseller_name`, `is_qty`, `is_used`, `duration`, `gen_date`, `date_used`, `category`, `permission`, `ipaddress`) VALUES
(6092, 'IMOSG-VY53O-PEI24', 4428, 'Owner-Waray', 4428, 'Owner-Waray', 625251, 1, 1620650592000, '2020-09-24 17:35:10', '2020-09-24 17:35:10', 'premium', 0, ''),
(6091, 'EIAEF-OTLSC-NTTWU', 4428, 'Owner-Waray', 4428, 'Owner-Waray', 252515, 1, 327259440000, '2020-09-24 17:35:00', '2020-09-24 17:35:00', 'vip', 0, ''),
(6090, 'VBPWH-B030L-642VK', 4428, 'Owner-Waray', 4428, 'Owner-Waray', 62625, 1, 54108000000, '2020-09-24 17:34:43', '2020-09-24 17:34:43', 'private', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_logs`
--

CREATE TABLE `voucher_logs` (
  `id` int(11) NOT NULL,
  `code_name` varchar(50) NOT NULL,
  `user_id` int(100) NOT NULL,
  `client_name` varchar(755) NOT NULL,
  `reseller_id` int(100) NOT NULL,
  `reseller_name` varchar(64) NOT NULL,
  `is_qty` int(11) NOT NULL DEFAULT '1',
  `is_used` int(1) NOT NULL,
  `date_used` datetime NOT NULL,
  `is_date` date NOT NULL,
  `category` enum('premium','vip','private') NOT NULL DEFAULT 'premium'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_logs`
--

INSERT INTO `voucher_logs` (`id`, `code_name`, `user_id`, `client_name`, `reseller_id`, `reseller_name`, `is_qty`, `is_used`, `date_used`, `is_date`, `category`) VALUES
(6092, 'IMOSG-VY53O-PEI24', 4428, 'Owner-Waray', 4428, 'Owner-Waray', 625251, 1, '2020-09-24 17:35:10', '2020-09-24', 'premium'),
(6091, 'EIAEF-OTLSC-NTTWU', 4428, 'Owner-Waray', 4428, 'Owner-Waray', 252515, 1, '2020-09-24 17:35:01', '2020-09-24', 'vip'),
(6090, 'VBPWH-B030L-642VK', 4428, 'Owner-Waray', 4428, 'Owner-Waray', 62625, 1, '2020-09-24 17:34:43', '2020-09-24', 'private');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anti_ddos`
--
ALTER TABLE `anti_ddos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attention`
--
ALTER TABLE `attention`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bandwidth_logs`
--
ALTER TABLE `bandwidth_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversion_logs`
--
ALTER TABLE `conversion_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits_logs`
--
ALTER TABLE `credits_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cronjob_banned_ip`
--
ALTER TABLE `cronjob_banned_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cronjob_logs`
--
ALTER TABLE `cronjob_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duration`
--
ALTER TABLE `duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duration_logs`
--
ALTER TABLE `duration_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freeze_request`
--
ALTER TABLE `freeze_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limit_logs`
--
ALTER TABLE `limit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limit_registration`
--
ALTER TABLE `limit_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts_logs`
--
ALTER TABLE `login_attempts_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_banned_ip`
--
ALTER TABLE `login_banned_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nas`
--
ALTER TABLE `nas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nasname` (`nasname`);

--
-- Indexes for table `radacct`
--
ALTER TABLE `radacct`
  ADD PRIMARY KEY (`radacctid`),
  ADD UNIQUE KEY `acctuniqueid` (`acctuniqueid`),
  ADD KEY `username` (`username`),
  ADD KEY `framedipaddress` (`framedipaddress`),
  ADD KEY `acctsessionid` (`acctsessionid`),
  ADD KEY `acctsessiontime` (`acctsessiontime`),
  ADD KEY `acctstarttime` (`acctstarttime`),
  ADD KEY `acctstoptime` (`acctstoptime`),
  ADD KEY `nasipaddress` (`nasipaddress`);

--
-- Indexes for table `radcheck`
--
ALTER TABLE `radcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radpostauth`
--
ALTER TABLE `radpostauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radreply`
--
ALTER TABLE `radreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `radusergroup`
--
ALTER TABLE `radusergroup`
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `recovery_logs`
--
ALTER TABLE `recovery_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reloadduration_logs`
--
ALTER TABLE `reloadduration_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_list`
--
ALTER TABLE `server_list`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `support_message`
--
ALTER TABLE `support_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket`
--
ALTER TABLE `support_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspension_logs`
--
ALTER TABLE `suspension_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspension_recovery_logs`
--
ALTER TABLE `suspension_recovery_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `username_logs`
--
ALTER TABLE `username_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_delete`
--
ALTER TABLE `users_delete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_name` (`code_name`);

--
-- Indexes for table `voucher_logs`
--
ALTER TABLE `voucher_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_name` (`code_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anti_ddos`
--
ALTER TABLE `anti_ddos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attention`
--
ALTER TABLE `attention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bandwidth_logs`
--
ALTER TABLE `bandwidth_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversion_logs`
--
ALTER TABLE `conversion_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credits_logs`
--
ALTER TABLE `credits_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT for table `cronjob_banned_ip`
--
ALTER TABLE `cronjob_banned_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cronjob_logs`
--
ALTER TABLE `cronjob_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `duration`
--
ALTER TABLE `duration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `duration_logs`
--
ALTER TABLE `duration_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `freeze_request`
--
ALTER TABLE `freeze_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `limit_logs`
--
ALTER TABLE `limit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `limit_registration`
--
ALTER TABLE `limit_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_attempts_logs`
--
ALTER TABLE `login_attempts_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1103;

--
-- AUTO_INCREMENT for table `login_banned_ip`
--
ALTER TABLE `login_banned_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT for table `nas`
--
ALTER TABLE `nas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radacct`
--
ALTER TABLE `radacct`
  MODIFY `radacctid` bigint(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radcheck`
--
ALTER TABLE `radcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radpostauth`
--
ALTER TABLE `radpostauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radreply`
--
ALTER TABLE `radreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recovery_logs`
--
ALTER TABLE `recovery_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reloadduration_logs`
--
ALTER TABLE `reloadduration_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2150;

--
-- AUTO_INCREMENT for table `server_list`
--
ALTER TABLE `server_list`
  MODIFY `server_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `support_message`
--
ALTER TABLE `support_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket`
--
ALTER TABLE `support_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suspension_logs`
--
ALTER TABLE `suspension_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suspension_recovery_logs`
--
ALTER TABLE `suspension_recovery_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `username_logs`
--
ALTER TABLE `username_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1623;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4431;

--
-- AUTO_INCREMENT for table `users_delete`
--
ALTER TABLE `users_delete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2343;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4452;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6093;

--
-- AUTO_INCREMENT for table `voucher_logs`
--
ALTER TABLE `voucher_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6093;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
