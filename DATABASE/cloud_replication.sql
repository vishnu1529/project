-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 08, 2022 at 06:54 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cloud replication`
--
CREATE DATABASE IF NOT EXISTS `cloud replication` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cloud replication`;

-- --------------------------------------------------------

--
-- Table structure for table `attack_details`
--

CREATE TABLE IF NOT EXISTS `attack_details` (
  `attack_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `hostname` varchar(100) DEFAULT NULL,
  `IPAddr` varchar(30) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `migrate_date` date NOT NULL,
  `migratee_time` time(6) NOT NULL,
  `reg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`attack_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `attack_details`
--

INSERT INTO `attack_details` (`attack_id`, `file_id`, `file_size`, `region`, `hostname`, `IPAddr`, `filename`, `migrate_date`, `migratee_time`, `reg_id`) VALUES
(8, 4, 57154, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'pdf', '2022-07-06', '12:06:25.223448', 2),
(9, 7, 53436, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Team', '2022-07-06', '12:06:37.821723', 2),
(10, 3, 53436, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Cloud', '2022-07-06', '12:07:40.183400', 2),
(11, 2, 12977, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Slide', '2022-07-06', '12:07:41.170569', 1),
(12, 6, 1797, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Haircut', '2022-07-06', '12:07:42.664749', 2),
(13, 4, 57154, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'pdf', '2022-07-06', '12:07:44.633607', 2),
(14, 1, 49852, 'Dehli', 'LAPTOP-CDSATRMM', '192.168.29.103', 'laptop', '2022-07-06', '12:09:52.110824', 1),
(15, 6, 1797, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Haircut', '2022-07-06', '17:45:53.213669', 2),
(16, 7, 53436, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Team', '2022-07-06', '17:46:00.663242', 2),
(17, 3, 53436, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Cloud', '2022-07-06', '18:00:43.787038', 2),
(18, 3, 53436, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Cloud', '2022-07-06', '18:01:07.593086', 2),
(19, 7, 53436, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Team', '2022-07-06', '18:01:12.815213', 2),
(20, 3, 53436, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Cloud', '2022-07-06', '18:01:14.324642', 2),
(21, 4, 57154, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'pdf', '2022-07-07', '17:35:47.827805', 2),
(22, 10, 18904, 'Mumbai', 'LAPTOP-CDSATRMM', '192.168.29.103', 'Cloud', '2022-07-07', '17:35:54.674498', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add enquiry model', 7, 'add_enquirymodel'),
(26, 'Can change enquiry model', 7, 'change_enquirymodel'),
(27, 'Can delete enquiry model', 7, 'delete_enquirymodel'),
(28, 'Can view enquiry model', 7, 'view_enquirymodel'),
(29, 'Can add attack model', 8, 'add_attackmodel'),
(30, 'Can change attack model', 8, 'change_attackmodel'),
(31, 'Can delete attack model', 8, 'delete_attackmodel'),
(32, 'Can view attack model', 8, 'view_attackmodel'),
(33, 'Can add fileloader reg model', 9, 'add_fileloaderregmodel'),
(34, 'Can change fileloader reg model', 9, 'change_fileloaderregmodel'),
(35, 'Can delete fileloader reg model', 9, 'delete_fileloaderregmodel'),
(36, 'Can view fileloader reg model', 9, 'view_fileloaderregmodel'),
(37, 'Can add file upload model', 10, 'add_fileuploadmodel'),
(38, 'Can change file upload model', 10, 'change_fileuploadmodel'),
(39, 'Can delete file upload model', 10, 'delete_fileuploadmodel'),
(40, 'Can view file upload model', 10, 'view_fileuploadmodel'),
(41, 'Can add migration counts model', 11, 'add_migrationcountsmodel'),
(42, 'Can change migration counts model', 11, 'change_migrationcountsmodel'),
(43, 'Can delete migration counts model', 11, 'delete_migrationcountsmodel'),
(44, 'Can view migration counts model', 11, 'view_migrationcountsmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'datanodeapp', 'attackmodel'),
(9, 'fileloaderapp', 'fileloaderregmodel'),
(10, 'fileloaderapp', 'fileuploadmodel'),
(11, 'fileloaderapp', 'migrationcountsmodel'),
(7, 'mainapp', 'enquirymodel'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-05 13:22:52.149442'),
(2, 'auth', '0001_initial', '2022-07-05 13:22:53.843436'),
(3, 'admin', '0001_initial', '2022-07-05 13:22:54.106435'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-05 13:22:54.268434'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-05 13:22:54.327435'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-05 13:22:54.660432'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-05 13:22:54.856433'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-07-05 13:22:54.962432'),
(9, 'auth', '0004_alter_user_username_opts', '2022-07-05 13:22:55.021431'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-07-05 13:22:55.176430'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-07-05 13:22:55.227432'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-05 13:22:55.297430'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-07-05 13:22:55.500430'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-05 13:22:55.754428'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-07-05 13:22:55.887428'),
(16, 'auth', '0011_update_proxy_permissions', '2022-07-05 13:22:55.991431'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-05 13:22:56.108429'),
(18, 'sessions', '0001_initial', '2022-07-05 13:22:56.224428'),
(19, 'fileloaderapp', '0001_initial', '2022-07-05 13:23:53.804996'),
(20, 'datanodeapp', '0001_initial', '2022-07-05 13:24:02.738151'),
(21, 'mainapp', '0001_initial', '2022-07-05 13:24:37.268871'),
(22, 'datanodeapp', '0002_remove_attackmodel_fileloader_id_attackmodel_reg_id', '2022-07-06 06:34:34.649568'),
(23, 'mainapp', '0002_enquirymodel_enq_date_enquirymodel_enq_time', '2022-07-06 11:17:06.687935');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('24kbrbdvgnvm64se4qs244ahkwzflt8d', 'eyJyZWdfaWQiOjF9:1o9On5:u98MrWD50F84LVPITRgFhNojTw2H6Ro1fMRf974YpL8', '2022-07-21 10:31:23.289607'),
('51bc3g5amidfwvxhebq5htv3c3hewo82', 'eyJyZWdfaWQiOjN9:1o8yqk:SNAPq6_iEVmWp6o35urPUIBCACDaVxUhWTCiDFNkniY', '2022-07-20 06:49:26.286058'),
('88d5ef3sr8t2iylyfjp9f5irun2t3qw2', 'eyJyZWdfaWQiOjIwfQ:1o9gni:7DLxYZEDCjqiBi4GPVDYAHyoivi3IlPKjWSO7IV_t8s', '2022-07-22 05:45:14.249711'),
('9tjtya0hzayykqftg9p2ut2cv8m0aohb', 'eyJyZWdfaWQiOjF9:1o93yq:QW-XGSA9_pK-tLcfGdmUn59XbTrdOH4CE02lhDOMEHk', '2022-07-20 12:18:08.529342'),
('a380pa9pfiamh6hy42udm7h8fv4k19x7', 'eyJyZWdfaWQiOjN9:1o8zrx:1MNQfxic7aScoOIOeOjZGdFIa_HDND_Gwm_uMViOyL0', '2022-07-20 07:54:45.459176'),
('e5j0v9qsn8uxdtla917u2xj662dnv3x2', 'eyJyZWdfaWQiOjF9:1o9hii:4vjNWE57kimu03CvJqgb3FTDcgcS6JbZYTPazULBh8A', '2022-07-22 06:44:08.231193'),
('i2etpi9z4abkz8ckqibopuap1nkxt7bt', 'eyJyZWdfaWQiOjF9:1o9R4A:L1gtQup0pTCHyC8imh1BcLtE9rpc7f-IBaq-YJiQKUk', '2022-07-21 12:57:10.513521'),
('nwr0vcsgdupu3xccl7rru9h6iu80r9uu', 'eyJyZWdfaWQiOjEyfQ:1o9QEy:zvzr-HlR33JeHJLOvgE10WkEEAbfDayNWz24Fz8sveU', '2022-07-21 12:04:16.750189'),
('qjh6k0vg59h451j3viug8wno0q7lsmur', 'eyJyZWdfaWQiOjF9:1o936c:tdtYy_r0nLt5TpO-jxify5UqrwD81jWuYdwJUUqg5E4', '2022-07-20 11:22:06.496127'),
('rxzm9wfqh4jm8ch6w8kcp2gvmn3km8jp', 'eyJyZWdfaWQiOjF9:1o9LC8:rw4KqzoOboqBJD4DELI2j1yEnVI6Gagt1eh4WSh7Ars', '2022-07-21 06:41:00.677574'),
('x61mw8oz7vca4wb73olc0lvpkvu5w3vt', 'eyJyZWdfaWQiOjF9:1o953n:wA06mxzlm2TTgWvO4EeNkIBo8wGglaPYCbrrEYEx9wI', '2022-07-20 13:27:19.856035');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_details`
--

CREATE TABLE IF NOT EXISTS `enquiry_details` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `enq_date` date NOT NULL,
  `enq_time` time(6) NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `enquiry_details`
--

INSERT INTO `enquiry_details` (`enquiry_id`, `name`, `email`, `message`, `enq_date`, `enq_time`) VALUES
(1, 'Galib', 'mdgalib964@gmail.com', 'hello!', '2022-07-06', '16:47:06.597058'),
(2, 'saddam', 'saddam@gmail.com', 'heyyy!', '2022-07-06', '16:50:55.561500'),
(3, 'saddam', 'saddam@gmail.com', 'hyyy', '2022-07-07', '15:17:39.739068'),
(4, 'Shiva', 'shiva@gmail.com', '', '2022-07-08', '11:07:25.509739'),
(5, 'Shiva', 'shiva@gmail.com', '', '2022-07-08', '11:08:27.891524'),
(6, 'Galib', 'galib@gmail.com', '', '2022-07-08', '11:08:56.306367'),
(7, 'Galib', 'galib@gmail.com', '', '2022-07-08', '11:10:43.716073'),
(8, 'saddam', 'saddam@gmail.com', 'message', '2022-07-08', '11:11:04.484567'),
(9, 'saddam', 'saddam@gmail.com', 'message', '2022-07-08', '11:11:48.351553'),
(10, 'saddam', 'saddam@gmail.com', 'message', '2022-07-08', '11:12:24.199495');

-- --------------------------------------------------------

--
-- Table structure for table `fileloader_details`
--

CREATE TABLE IF NOT EXISTS `fileloader_details` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `posted_date` date NOT NULL,
  `posted_time` time(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `fileloader_details`
--

INSERT INTO `fileloader_details` (`reg_id`, `name`, `email`, `contact`, `password`, `posted_date`, `posted_time`, `status`) VALUES
(1, 'Galib', 'mdgalib964@gmail.com', 7867678687, 'Galib123', '2022-07-05', '18:59:32.786600', 'accept'),
(2, 'Saddam', 'saddam@gmail.com', 9999999999, 'Saddam123', '2022-07-05', '18:59:40.329613', 'accept'),
(12, 'harry', 'fazalsirprojects@gmail.com', 9876543200, 'Harry@123', '2022-07-07', '17:29:09.881846', 'accept'),
(13, 'Galib', 'shiva@gmail.com', 8009890890, 'Galib123', '2022-07-07', '17:54:29.033707', 'Pending'),
(18, 'galib', 'ramesh@gmail.com', 9999999999, 'Ramesh123', '2022-07-07', '18:18:12.064360', 'Pending'),
(19, 'Ramesh', 'vinay@gmail.com', 9898989898, 'Galib123', '2022-07-07', '18:19:50.321759', 'accept'),
(20, 'Galib', 'galib@gmail.com', 9087655432, 'Galib123', '2022-07-08', '11:14:58.188617', 'accept');

-- --------------------------------------------------------

--
-- Table structure for table `files_details`
--

CREATE TABLE IF NOT EXISTS `files_details` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `file_size` int(11) DEFAULT NULL,
  `filename` varchar(30) DEFAULT NULL,
  `region` longtext NOT NULL,
  `posted_date` date NOT NULL,
  `posted_time` time(6) NOT NULL,
  `migration_count` int(11) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `files_details`
--

INSERT INTO `files_details` (`file_id`, `reg_id`, `file`, `file_size`, `filename`, `region`, `posted_date`, `posted_time`, `migration_count`) VALUES
(1, 1, 'image/about_COlyCMj.jpg', 49852, 'laptop', 'Dehli', '2022-07-07', '18:32:05.138162', 7),
(2, 1, 'image/face1.jpg', 12977, 'Slide', 'Hyderabad', '2022-07-07', '18:28:59.965583', 3),
(3, 2, 'image/team-3_Pwovlft.jpg', 53436, 'Cloud', 'Mumbai', '2022-07-06', '11:24:10.629653', 2),
(4, 2, 'image/carousel-2.jpg', 57154, 'pdf', 'Mumbai', '2022-07-06', '11:27:32.744755', 4),
(5, 2, 'image/carousel-1.jpg', 61929, 'Carosel', 'Hyderabad', '2022-07-06', '11:25:00.020287', 0),
(6, 2, 'image/haircut.png', 1797, 'Haircut', 'Mumbai', '2022-07-06', '11:25:46.502353', 1),
(7, 2, 'image/team-3_lFxyMUa.jpg', 53436, 'Team', 'Mumbai', '2022-07-06', '11:25:27.811367', 0),
(8, 3, 'image/testimonial-2.jpg', 3355, 'barber', 'Dehli', '2022-07-06', '12:29:54.512839', 13),
(9, 3, 'image/team-2.jpg', 25743, 'barber2', 'Mumbai', '2022-07-06', '12:29:23.422025', 0),
(10, 1, 'image/cloud7.jpg', 18904, 'Cloud', 'Hyderabad', '2022-07-07', '18:34:01.041857', 2),
(11, 1, 'image/article-details-small_AkyPtjI.jpg', 78465, 'fet', 'Mumbai', '2022-07-07', '18:30:17.833089', 1),
(12, 1, 'image/cloud1.jpg', 41437, 'cl1', 'Mumbai', '2022-07-07', '18:31:21.137452', 2),
(13, 1, 'image/face1_YSKrLVi.jpg', 12977, 'laptop', 'Hyderabad', '2022-07-07', '16:01:43.363638', 0),
(14, 12, 'image/carousel-1_TAbwCTu.jpg', 61929, 'profile pic', 'Hyderabad', '2022-07-07', '17:34:30.794879', 1),
(15, 1, 'image/price.jpg', 85204, 'Article', 'Hyderabad', '2022-07-07', '18:27:30.623429', 0),
(16, 1, 'image/carousel-2_4W77Uhq.jpg', 57154, 'Article', 'Hyderabad', '2022-07-07', '18:34:16.836744', 0),
(17, 20, 'image/team-3_mNGeMdP.jpg', 53436, 'Team', 'Region', '2022-07-08', '11:15:37.378864', 0),
(18, 20, 'image/carousel-1_roOZviF.jpg', 61929, 'pdf', 'Region', '2022-07-08', '11:18:43.450743', 0),
(19, 20, 'image/team-2_dGG6jHm.jpg', 25743, 'Barber', 'Region', '2022-07-08', '11:21:03.060165', 0),
(20, 20, 'image/testimonial-3.jpg', 3989, 'bhjbhj', 'Region', '2022-07-08', '11:23:05.799692', 0),
(21, 20, 'image/hair-dyeing.png', 1953, 'hair', 'Region', '2022-07-08', '11:24:19.202249', 0),
(22, 20, 'image/face1_bARFyaQ.jpg', 12977, 'hjmjknm', 'Dehli', '2022-07-08', '11:28:59.581582', 2),
(23, 1, 'image/carousel-2_PQr4npq.jpg', 57154, 'laptop', 'Region', '2022-07-08', '12:00:08.999480', 0),
(24, 1, 'image/price_vYsExyc.jpg', 85204, 'laptop', 'Region', '2022-07-08', '12:00:40.959853', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrates_details`
--

CREATE TABLE IF NOT EXISTS `migrates_details` (
  `migrate_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `filename` varchar(30) DEFAULT NULL,
  `region` longtext NOT NULL,
  `posted_date` date NOT NULL,
  `posted_time` time(6) NOT NULL,
  `migration_count` int(11) NOT NULL,
  PRIMARY KEY (`migrate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `migrates_details`
--

INSERT INTO `migrates_details` (`migrate_id`, `file_id`, `file_size`, `filename`, `region`, `posted_date`, `posted_time`, `migration_count`) VALUES
(1, 1, 49852, 'laptop', 'Dehli', '2022-07-06', '11:17:13.027150', 2),
(2, 4, 57154, 'pdf', 'Hyderabad', '2022-07-06', '11:23:56.366718', 1),
(3, 3, 53436, 'Cloud', 'Mumbai', '2022-07-06', '11:24:10.633651', 1),
(4, 6, 1797, 'Haircut', 'Mumbai', '2022-07-06', '11:25:46.508178', 0),
(5, 4, 57154, 'pdf', 'Dehli', '2022-07-06', '11:25:59.455372', 2),
(6, 4, 57154, 'pdf', 'Mumbai', '2022-07-06', '11:27:32.749755', 3),
(7, 8, 3355, 'testimonial', 'Hyderabad', '2022-07-06', '12:20:00.859904', 0),
(8, 8, 3355, 'testimonial', 'Mumbai', '2022-07-06', '12:21:27.104852', 1),
(9, 8, 3355, 'testimonial', 'Mumbai', '2022-07-06', '12:22:10.295526', 2),
(10, 8, 3355, 'testimonial', 'Mumbai', '2022-07-06', '12:22:43.820082', 3),
(11, 8, 3355, 'testimonial', 'Mumbai', '2022-07-06', '12:23:38.323207', 4),
(12, 8, 3355, 'testimonial', 'Mumbai', '2022-07-06', '12:23:44.961397', 5),
(13, 8, 3355, 'pdf', 'Mumbai', '2022-07-06', '12:24:11.680305', 6),
(14, 8, 3355, 'pdf', 'Mumbai', '2022-07-06', '12:24:38.321051', 7),
(15, 8, 3355, 'pdf', 'Mumbai', '2022-07-06', '12:24:47.317250', 8),
(16, 8, 3355, 'pdf', 'Dehli', '2022-07-06', '12:28:59.363769', 9),
(17, 8, 3355, 'barber', 'Hyderabad', '2022-07-06', '12:29:04.665860', 10),
(18, 8, 3355, 'pdf', 'Dehli', '2022-07-06', '12:29:39.314152', 11),
(19, 8, 3355, 'barber', 'Dehli', '2022-07-06', '12:29:54.516871', 12),
(20, 1, 49852, 'laptop', 'Mumbai', '2022-07-06', '17:49:58.089966', 3),
(21, 1, 49852, 'laptop', 'Mumbai', '2022-07-06', '18:19:49.276453', 4),
(22, 12, 41437, 'cl1', 'Dehli', '2022-07-07', '14:23:41.696642', 0),
(23, 1, 49852, 'laptop', 'Mumbai', '2022-07-07', '16:01:53.700281', 5),
(24, 14, 61929, 'profile pic', 'Hyderabad', '2022-07-07', '17:34:30.798878', 0),
(25, 2, 12977, 'Slide', 'Dehli', '2022-07-07', '18:27:45.105795', 1),
(26, 2, 12977, 'Slide', 'Hyderabad', '2022-07-07', '18:28:59.970582', 2),
(27, 11, 78465, 'fet', 'Mumbai', '2022-07-07', '18:30:17.839088', 0),
(28, 12, 41437, 'cl1', 'Mumbai', '2022-07-07', '18:31:21.141451', 1),
(29, 1, 49852, 'laptop', 'Dehli', '2022-07-07', '18:32:05.143161', 6),
(30, 10, 18904, 'Cloud', 'Hyderabad', '2022-07-07', '18:33:39.853392', 0),
(31, 10, 18904, 'Cloud', 'Hyderabad', '2022-07-07', '18:34:01.193855', 1),
(32, 22, 12977, 'hjmjknm', 'Region', '2022-07-08', '11:28:40.703351', 0),
(33, 22, 12977, 'hjmjknm', 'Dehli', '2022-07-08', '11:28:59.586109', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
