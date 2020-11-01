-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 01:52 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automjeti`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Shites');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add body', 6, 'add_body'),
(22, 'Can change body', 6, 'change_body'),
(23, 'Can delete body', 6, 'delete_body'),
(24, 'Can view body', 6, 'view_body'),
(25, 'Can add condition', 7, 'add_condition'),
(26, 'Can change condition', 7, 'change_condition'),
(27, 'Can delete condition', 7, 'delete_condition'),
(28, 'Can view condition', 7, 'view_condition'),
(29, 'Can add currency', 8, 'add_currency'),
(30, 'Can change currency', 8, 'change_currency'),
(31, 'Can delete currency', 8, 'delete_currency'),
(32, 'Can view currency', 8, 'view_currency'),
(33, 'Can add door', 9, 'add_door'),
(34, 'Can change door', 9, 'change_door'),
(35, 'Can delete door', 9, 'delete_door'),
(36, 'Can view door', 9, 'view_door'),
(37, 'Can add drivetrain', 10, 'add_drivetrain'),
(38, 'Can change drivetrain', 10, 'change_drivetrain'),
(39, 'Can delete drivetrain', 10, 'delete_drivetrain'),
(40, 'Can view drivetrain', 10, 'view_drivetrain'),
(41, 'Can add fuel', 11, 'add_fuel'),
(42, 'Can change fuel', 11, 'change_fuel'),
(43, 'Can delete fuel', 11, 'delete_fuel'),
(44, 'Can view fuel', 11, 'view_fuel'),
(45, 'Can add make', 12, 'add_make'),
(46, 'Can change make', 12, 'change_make'),
(47, 'Can delete make', 12, 'delete_make'),
(48, 'Can view make', 12, 'view_make'),
(49, 'Can add model', 13, 'add_model'),
(50, 'Can change model', 13, 'change_model'),
(51, 'Can delete model', 13, 'delete_model'),
(52, 'Can view model', 13, 'view_model'),
(53, 'Can add photo gallery', 14, 'add_photogallery'),
(54, 'Can change photo gallery', 14, 'change_photogallery'),
(55, 'Can delete photo gallery', 14, 'delete_photogallery'),
(56, 'Can view photo gallery', 14, 'view_photogallery'),
(57, 'Can add search option', 15, 'add_searchoption'),
(58, 'Can change search option', 15, 'change_searchoption'),
(59, 'Can delete search option', 15, 'delete_searchoption'),
(60, 'Can view search option', 15, 'view_searchoption'),
(61, 'Can add seating cap', 16, 'add_seatingcap'),
(62, 'Can change seating cap', 16, 'change_seatingcap'),
(63, 'Can delete seating cap', 16, 'delete_seatingcap'),
(64, 'Can view seating cap', 16, 'view_seatingcap'),
(65, 'Can add seller', 17, 'add_seller'),
(66, 'Can change seller', 17, 'change_seller'),
(67, 'Can delete seller', 17, 'delete_seller'),
(68, 'Can view seller', 17, 'view_seller'),
(69, 'Can add transmission', 18, 'add_transmission'),
(70, 'Can change transmission', 18, 'change_transmission'),
(71, 'Can delete transmission', 18, 'delete_transmission'),
(72, 'Can view transmission', 18, 'view_transmission'),
(73, 'Can add vehicle', 19, 'add_vehicle'),
(74, 'Can change vehicle', 19, 'change_vehicle'),
(75, 'Can delete vehicle', 19, 'delete_vehicle'),
(76, 'Can view vehicle', 19, 'view_vehicle'),
(77, 'Can add vehicle type', 20, 'add_vehicletype'),
(78, 'Can change vehicle type', 20, 'change_vehicletype'),
(79, 'Can delete vehicle type', 20, 'delete_vehicletype'),
(80, 'Can view vehicle type', 20, 'view_vehicletype'),
(81, 'Can add vehicle option', 21, 'add_vehicleoption'),
(82, 'Can change vehicle option', 21, 'change_vehicleoption'),
(83, 'Can delete vehicle option', 21, 'delete_vehicleoption'),
(84, 'Can view vehicle option', 21, 'view_vehicleoption'),
(85, 'Can add vehicle highlights', 22, 'add_vehiclehighlights'),
(86, 'Can change vehicle highlights', 22, 'change_vehiclehighlights'),
(87, 'Can delete vehicle highlights', 22, 'delete_vehiclehighlights'),
(88, 'Can view vehicle highlights', 22, 'view_vehiclehighlights'),
(89, 'Can add engine', 23, 'add_engine'),
(90, 'Can change engine', 23, 'change_engine'),
(91, 'Can delete engine', 23, 'delete_engine'),
(92, 'Can view engine', 23, 'view_engine'),
(93, 'Can add exterior color', 24, 'add_exteriorcolor'),
(94, 'Can change exterior color', 24, 'change_exteriorcolor'),
(95, 'Can delete exterior color', 24, 'delete_exteriorcolor'),
(96, 'Can view exterior color', 24, 'view_exteriorcolor'),
(97, 'Can add interior color', 25, 'add_interiorcolor'),
(98, 'Can change interior color', 25, 'change_interiorcolor'),
(99, 'Can delete interior color', 25, 'delete_interiorcolor'),
(100, 'Can view interior color', 25, 'view_interiorcolor'),
(101, 'Can add cylinder', 26, 'add_cylinder'),
(102, 'Can change cylinder', 26, 'change_cylinder'),
(103, 'Can delete cylinder', 26, 'delete_cylinder'),
(104, 'Can view cylinder', 26, 'view_cylinder'),
(105, 'Can add custom user', 27, 'add_customuser'),
(106, 'Can change custom user', 27, 'change_customuser'),
(107, 'Can delete custom user', 27, 'delete_customuser'),
(108, 'Can view custom user', 27, 'view_customuser'),
(109, 'Can add saved vehicle', 28, 'add_savedvehicle'),
(110, 'Can change saved vehicle', 28, 'change_savedvehicle'),
(111, 'Can delete saved vehicle', 28, 'delete_savedvehicle'),
(112, 'Can view saved vehicle', 28, 'view_savedvehicle'),
(113, 'Can add contact us', 29, 'add_contactus'),
(114, 'Can change contact us', 29, 'change_contactus'),
(115, 'Can delete contact us', 29, 'delete_contactus'),
(116, 'Can view contact us', 29, 'view_contactus'),
(117, 'Can add feed hit', 30, 'add_feedhit'),
(118, 'Can change feed hit', 30, 'change_feedhit'),
(119, 'Can delete feed hit', 30, 'delete_feedhit'),
(120, 'Can view feed hit', 30, 'view_feedhit'),
(121, 'Can add Post', 31, 'add_post'),
(122, 'Can change Post', 31, 'change_post'),
(123, 'Can delete Post', 31, 'delete_post'),
(124, 'Can view Post', 31, 'view_post'),
(125, 'Can add review comment', 32, 'add_reviewcomment'),
(126, 'Can change review comment', 32, 'change_reviewcomment'),
(127, 'Can delete review comment', 32, 'delete_reviewcomment'),
(128, 'Can view review comment', 32, 'view_reviewcomment'),
(129, 'Can add Revision', 33, 'add_revision'),
(130, 'Can change Revision', 33, 'change_revision'),
(131, 'Can delete Revision', 33, 'delete_revision'),
(132, 'Can view Revision', 33, 'view_revision'),
(133, 'Can add Section', 34, 'add_section'),
(134, 'Can change Section', 34, 'change_section'),
(135, 'Can delete Section', 34, 'delete_section'),
(136, 'Can view Section', 34, 'view_section'),
(137, 'Can add blog', 35, 'add_blog'),
(138, 'Can change blog', 35, 'change_blog'),
(139, 'Can delete blog', 35, 'delete_blog'),
(140, 'Can view blog', 35, 'view_blog'),
(141, 'Can add post image set', 36, 'add_postimageset'),
(142, 'Can change post image set', 36, 'change_postimageset'),
(143, 'Can delete post image set', 36, 'delete_postimageset'),
(144, 'Can view post image set', 36, 'view_postimageset'),
(145, 'Can add image', 37, 'add_image'),
(146, 'Can change image', 37, 'change_image'),
(147, 'Can delete image', 37, 'delete_image'),
(148, 'Can view image', 37, 'view_image'),
(149, 'Can add image set', 38, 'add_imageset'),
(150, 'Can change image set', 38, 'change_imageset'),
(151, 'Can delete image set', 38, 'delete_imageset'),
(152, 'Can view image set', 38, 'view_imageset'),
(153, 'Can add site', 39, 'add_site'),
(154, 'Can change site', 39, 'change_site'),
(155, 'Can delete site', 39, 'delete_site'),
(156, 'Can view site', 39, 'view_site'),
(157, 'Can add euro to lek', 40, 'add_eurotolek'),
(158, 'Can change euro to lek', 40, 'change_eurotolek'),
(159, 'Can delete euro to lek', 40, 'delete_eurotolek'),
(160, 'Can view euro to lek', 40, 'view_eurotolek'),
(161, 'Can add location', 41, 'add_location'),
(162, 'Can change location', 41, 'change_location'),
(163, 'Can delete location', 41, 'delete_location'),
(164, 'Can view location', 41, 'view_location');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-04 12:16:52.737158', '1', 'Sedan', 1, '[{\"added\": {}}]', 6, 1),
(2, '2020-09-04 12:16:56.662649', '2', 'Coupe', 1, '[{\"added\": {}}]', 6, 1),
(3, '2020-09-04 12:17:00.712916', '1', 'New', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-09-04 12:17:03.502380', '2', 'Used', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-09-04 12:17:08.680850', '1', 'Albanian Lek', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-09-04 12:17:13.094626', '2', 'Euro', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-09-04 12:17:16.795624', '1', '8', 1, '[{\"added\": {}}]', 26, 1),
(8, '2020-09-04 12:17:20.682350', '1', '5', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-09-04 12:17:23.130059', '2', '2', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-09-04 12:17:26.363388', '1', 'FWD', 1, '[{\"added\": {}}]', 10, 1),
(11, '2020-09-04 12:17:30.062488', '1', '350', 1, '[{\"added\": {}}]', 23, 1),
(12, '2020-09-04 12:17:33.704293', '2', '200', 1, '[{\"added\": {}}]', 23, 1),
(13, '2020-09-04 12:17:37.723288', '1', 'Red', 1, '[{\"added\": {}}]', 24, 1),
(14, '2020-09-04 12:17:41.178894', '2', 'Black', 1, '[{\"added\": {}}]', 24, 1),
(15, '2020-09-04 12:17:44.332552', '3', 'Silver', 1, '[{\"added\": {}}]', 24, 1),
(16, '2020-09-04 12:17:46.837505', '1', 'Gasoline', 1, '[{\"added\": {}}]', 11, 1),
(17, '2020-09-04 12:17:49.922530', '2', 'Gas', 1, '[{\"added\": {}}]', 11, 1),
(18, '2020-09-04 12:17:53.728328', '1', 'Red', 1, '[{\"added\": {}}]', 25, 1),
(19, '2020-09-04 12:17:56.806154', '2', 'Black', 1, '[{\"added\": {}}]', 25, 1),
(20, '2020-09-04 12:18:03.912820', '1', 'Mercedes-Benz', 1, '[{\"added\": {}}]', 12, 1),
(21, '2020-09-04 12:18:07.798424', '2', 'Audi', 1, '[{\"added\": {}}]', 12, 1),
(22, '2020-09-04 12:18:12.428342', '1', 'S-Class', 1, '[{\"added\": {}}]', 13, 1),
(23, '2020-09-04 12:18:15.946462', '2', 'TT', 1, '[{\"added\": {}}]', 13, 1),
(24, '2020-09-04 12:18:23.881081', '1', 'Vendodhje', 1, '[{\"added\": {}}]', 15, 1),
(25, '2020-09-04 12:18:38.500694', '2', 'Gjendja', 1, '[{\"added\": {}}]', 15, 1),
(26, '2020-09-04 12:18:54.059225', '3', 'Marka', 1, '[{\"added\": {}}]', 15, 1),
(27, '2020-09-04 12:19:12.775847', '4', 'Modeli', 1, '[{\"added\": {}}]', 15, 1),
(28, '2020-09-04 12:19:21.883352', '5', 'Dyer', 1, '[{\"added\": {}}]', 15, 1),
(29, '2020-09-04 12:19:26.668005', '1', '5', 1, '[{\"added\": {}}]', 16, 1),
(30, '2020-09-04 12:19:29.721201', '2', '2', 1, '[{\"added\": {}}]', 16, 1),
(31, '2020-09-04 12:19:33.893931', '1', 'Automatic', 1, '[{\"added\": {}}]', 18, 1),
(32, '2020-09-04 12:19:43.577642', '1', 'Car', 1, '[{\"added\": {}}]', 20, 1),
(33, '2020-09-04 12:20:28.719712', '1', 'S-Class/ a@b.com', 1, '[{\"added\": {}}]', 19, 1),
(34, '2020-09-04 12:22:43.035350', '2', 'TT/ a@b.com', 1, '[{\"added\": {}}]', 19, 1),
(35, '2020-09-04 12:22:53.544926', '1', 'Bluetooth', 1, '[{\"added\": {}}]', 21, 1),
(36, '2020-09-04 12:22:57.750200', '2', 'Sensor shiu', 1, '[{\"added\": {}}]', 21, 1),
(37, '2020-09-04 12:23:04.705529', '3', 'sensor stopi', 1, '[{\"added\": {}}]', 21, 1),
(38, '2020-09-04 12:23:12.405154', '1', 'FWD', 1, '[{\"added\": {}}]', 22, 1),
(39, '2020-09-04 12:23:17.332865', '2', 'On-Board Computer', 1, '[{\"added\": {}}]', 22, 1),
(40, '2020-09-04 12:23:21.566659', '3', '500 km', 1, '[{\"added\": {}}]', 22, 1),
(41, '2020-09-04 12:23:42.330814', '1', 'Mercedes-Benz S-Class/ a@b.com', 1, '[{\"added\": {}}]', 14, 1),
(42, '2020-09-04 12:24:54.104733', '2', 'Audi TT/ a@b.com', 1, '[{\"added\": {}}]', 14, 1),
(43, '2020-09-04 13:20:07.470743', '3', 'C-Class', 1, '[{\"added\": {}}]', 13, 1),
(44, '2020-09-04 13:21:24.354378', '3', 'C-Class/ a@b.com', 1, '[{\"added\": {}}]', 19, 1),
(45, '2020-09-04 15:39:28.696451', '1', 'a@b.com', 2, '[{\"changed\": {\"fields\": [\"Phone\"]}}]', 27, 1),
(46, '2020-09-04 15:40:06.474436', '2', 'a@c.com', 1, '[{\"added\": {}}]', 27, 1),
(47, '2020-09-04 15:46:31.357259', '5', 'Dyer', 3, '', 15, 1),
(48, '2020-09-04 15:46:31.391297', '4', 'Modeli', 3, '', 15, 1),
(49, '2020-09-04 15:46:31.491929', '3', 'Marka', 3, '', 15, 1),
(50, '2020-09-04 15:46:31.744810', '2', 'Gjendja', 3, '', 15, 1),
(51, '2020-09-04 15:46:31.799782', '1', 'Vendodhje', 3, '', 15, 1),
(52, '2020-09-04 15:46:38.586211', '6', 'Vendodhje', 1, '[{\"added\": {}}]', 15, 1),
(53, '2020-09-04 15:46:45.907163', '7', 'Distanca', 1, '[{\"added\": {}}]', 15, 1),
(54, '2020-09-04 15:46:57.219588', '8', 'Shitesi', 1, '[{\"added\": {}}]', 15, 1),
(55, '2020-09-04 15:47:03.959296', '8', 'Shitesi', 3, '', 15, 1),
(56, '2020-09-04 15:47:08.610650', '9', 'Shitesi', 1, '[{\"added\": {}}]', 15, 1),
(57, '2020-09-04 15:47:15.857069', '10', 'Marka', 1, '[{\"added\": {}}]', 15, 1),
(58, '2020-09-04 15:47:16.046231', '11', 'Marka', 1, '[{\"added\": {}}]', 15, 1),
(59, '2020-09-04 15:47:24.053012', '12', 'Modeli', 1, '[{\"added\": {}}]', 15, 1),
(60, '2020-09-04 15:47:30.490594', '10', 'Marka', 3, '', 15, 1),
(61, '2020-09-04 15:47:53.285307', '13', 'Viti', 1, '[{\"added\": {}}]', 15, 1),
(62, '2020-09-04 15:48:03.170922', '14', 'Cmimi', 1, '[{\"added\": {}}]', 15, 1),
(63, '2020-09-04 15:48:12.461770', '15', 'Trupi', 1, '[{\"added\": {}}]', 15, 1),
(64, '2020-09-04 15:48:22.572738', '16', 'Ngjyra  jashme', 1, '[{\"added\": {}}]', 15, 1),
(65, '2020-09-04 15:48:30.890229', '17', 'Ngjyra  brendshme', 1, '[{\"added\": {}}]', 15, 1),
(66, '2020-09-04 15:48:46.141820', '18', 'Kilometra', 1, '[{\"added\": {}}]', 15, 1),
(67, '2020-09-04 15:48:54.188478', '19', 'Diferenciali', 1, '[{\"added\": {}}]', 15, 1),
(68, '2020-09-04 15:49:02.158508', '20', 'Karburant', 1, '[{\"added\": {}}]', 15, 1),
(69, '2020-09-04 15:49:11.342145', '21', 'Motorri', 1, '[{\"added\": {}}]', 15, 1),
(70, '2020-09-04 15:50:22.491704', '21', 'Motorri', 3, '', 15, 1),
(71, '2020-09-04 15:52:25.525770', '3', 'C-Class/ a@b.com', 3, '', 19, 1),
(72, '2020-09-04 15:52:25.586740', '2', 'TT/ a@b.com', 3, '', 19, 1),
(73, '2020-09-04 15:52:25.619728', '1', 'S-Class/ a@b.com', 3, '', 19, 1),
(74, '2020-09-04 15:58:33.838387', '3', '200', 1, '[{\"added\": {}}]', 23, 1),
(75, '2020-09-04 16:04:04.205609', '7', '350 S-Class/ a@c.com', 1, '[{\"added\": {}}]', 19, 1),
(76, '2020-09-04 16:05:16.360463', '8', '200 TT/ a@b.com', 1, '[{\"added\": {}}]', 19, 1),
(77, '2020-09-04 16:06:34.744478', '4', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(78, '2020-09-04 16:06:56.024896', '5', 'Audi TT/ a@b.com', 1, '[{\"added\": {}}]', 14, 1),
(79, '2020-09-04 16:10:44.583260', '22', 'Motorri', 1, '[{\"added\": {}}]', 15, 1),
(80, '2020-09-04 16:10:52.255489', '23', 'Cilindrata', 1, '[{\"added\": {}}]', 15, 1),
(81, '2020-09-04 16:10:59.257931', '24', 'Transmisioni', 1, '[{\"added\": {}}]', 15, 1),
(82, '2020-09-04 16:11:07.595598', '25', 'Sedilje', 1, '[{\"added\": {}}]', 15, 1),
(83, '2020-09-04 16:11:17.030724', '26', 'Dyer', 1, '[{\"added\": {}}]', 15, 1),
(84, '2020-09-04 16:42:00.097970', '4', 'Bluetooth', 1, '[{\"added\": {}}]', 21, 1),
(85, '2020-09-04 16:42:05.016897', '5', 'Sensor shiu', 1, '[{\"added\": {}}]', 21, 1),
(86, '2020-09-04 16:42:08.623124', '6', 'Bluetooth', 1, '[{\"added\": {}}]', 21, 1),
(87, '2020-09-04 16:42:16.899770', '4', 'FWD', 1, '[{\"added\": {}}]', 22, 1),
(88, '2020-09-04 16:42:21.727692', '5', 'On-Board Computer', 1, '[{\"added\": {}}]', 22, 1),
(89, '2020-09-04 16:42:28.500036', '6', 'On-Board Computer', 1, '[{\"added\": {}}]', 22, 1),
(90, '2020-09-04 19:17:02.166708', '6', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(91, '2020-09-04 19:17:12.010824', '7', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(92, '2020-09-04 19:17:17.614407', '8', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(93, '2020-09-04 19:17:34.225574', '9', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(94, '2020-09-04 19:17:38.479049', '10', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(95, '2020-09-04 19:17:38.834881', '11', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(96, '2020-09-04 19:17:44.729462', '12', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(97, '2020-09-04 19:17:45.448120', '13', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(98, '2020-09-04 19:17:45.461114', '14', 'Mercedes-Benz S-Class/ a@c.com', 1, '[{\"added\": {}}]', 14, 1),
(99, '2020-09-08 11:59:06.423292', '2', 'Dealer', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 17, 1),
(100, '2020-09-08 11:59:09.994939', '1', 'Private', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 17, 1),
(101, '2020-09-09 12:53:14.052301', '4', 'SavedVehicle object (4)', 1, '[{\"added\": {}}]', 28, 1),
(102, '2020-09-09 12:53:33.642252', '5', 'SavedVehicle object (5)', 1, '[{\"added\": {}}]', 28, 1),
(103, '2020-09-09 13:48:14.355014', '6', 'SavedVehicle object (6)', 1, '[{\"added\": {}}]', 28, 1),
(104, '2020-09-09 17:11:08.517908', '7', 'SavedVehicle object (7)', 1, '[{\"added\": {}}]', 28, 1),
(105, '2020-09-09 17:11:23.360425', '8', 'SavedVehicle object (8)', 1, '[{\"added\": {}}]', 28, 1),
(106, '2020-09-10 13:47:53.035387', '13', '350 S-Class/ a@c.com', 2, '[{\"changed\": {\"fields\": [\"Consumption city\", \"Consumption highway\", \"Consumption combined\"]}}]', 19, 1),
(107, '2020-09-10 14:04:07.501811', '7', '350 S-Class/ a@c.com', 2, '[{\"changed\": {\"fields\": [\"Consumption city\", \"Consumption highway\", \"Consumption combined\"]}}]', 19, 1),
(108, '2020-09-10 16:28:32.006525', '1', 'Makina & SUVs', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Tag\"]}}]', 20, 1),
(109, '2020-09-10 16:28:54.519391', '2', 'Motocikljeta', 1, '[{\"added\": {}}]', 20, 1),
(110, '2020-09-10 16:29:13.829171', '3', 'Makina Pune', 1, '[{\"added\": {}}]', 20, 1),
(111, '2020-09-10 16:53:16.934025', '3', 'Makina Pune', 2, '[{\"changed\": {\"fields\": [\"Banner\"]}}]', 20, 1),
(112, '2020-09-10 17:02:46.279125', '3', 'Papaq', 1, '[{\"added\": {}}]', 6, 1),
(113, '2020-09-10 17:03:20.059555', '3', '0', 1, '[{\"added\": {}}]', 9, 1),
(114, '2020-09-10 17:03:51.863433', '3', 'Yamaha', 1, '[{\"added\": {}}]', 12, 1),
(115, '2020-09-10 17:04:01.022610', '4', 'T-Max', 1, '[{\"added\": {}}]', 13, 1),
(116, '2020-09-10 17:04:13.861538', '4', 'T-Max 1100', 1, '[{\"added\": {}}]', 23, 1),
(117, '2020-09-10 17:04:28.138346', '3', '2', 1, '[{\"added\": {}}]', 16, 1),
(118, '2020-09-10 17:05:49.594227', '16', '1100 T-Max/ a@b.com', 1, '[{\"added\": {}}]', 19, 1),
(119, '2020-09-10 17:39:17.425119', '2', 'Motocikljeta', 2, '[{\"changed\": {\"fields\": [\"Banner\"]}}]', 20, 1),
(120, '2020-09-10 17:50:07.601275', '4', 'Kamiona', 1, '[{\"added\": {}}]', 20, 1),
(121, '2020-09-10 17:50:24.226399', '4', 'Tonazh i rend', 1, '[{\"added\": {}}]', 6, 1),
(122, '2020-09-10 17:50:31.541274', '2', '12', 1, '[{\"added\": {}}]', 26, 1),
(123, '2020-09-10 17:51:32.990669', '4', 'International', 1, '[{\"added\": {}}]', 12, 1),
(124, '2020-09-10 17:51:44.206736', '5', 'LT625 6x4', 1, '[{\"added\": {}}]', 13, 1),
(125, '2020-09-10 17:52:03.565792', '5', 'LT625 6x4 8000', 1, '[{\"added\": {}}]', 23, 1),
(126, '2020-09-11 12:39:30.008970', '1', 'Shites', 1, '[{\"added\": {}}]', 3, 1),
(127, '2020-09-11 12:41:59.235808', '3', 'b@c.com', 1, '[{\"added\": {}}]', 27, 1),
(128, '2020-09-11 13:02:21.070750', '3', 'b@c.com', 3, '', 27, 1),
(129, '2020-09-14 13:25:46.876922', '23', 'Cilindrata', 2, '[{\"changed\": {\"fields\": [\"Search option tag\"]}}]', 15, 1),
(130, '2020-09-14 13:26:50.107852', '11', 'Marka', 2, '[{\"changed\": {\"fields\": [\"Search option tag\"]}}]', 15, 1),
(131, '2020-09-14 13:27:41.448931', '23', 'Cilindrata', 2, '[{\"changed\": {\"fields\": [\"Search option tag\"]}}]', 15, 1),
(132, '2020-09-14 13:29:32.532174', '11', 'Marka', 2, '[{\"changed\": {\"fields\": [\"Search option tag\"]}}]', 15, 1),
(133, '2020-09-14 13:33:02.249491', '26', 'Dyer', 2, '[{\"changed\": {\"fields\": [\"Search option tag\"]}}]', 15, 1),
(134, '2020-09-15 14:16:41.772521', '11', 'Marka', 2, '[{\"changed\": {\"fields\": [\"Search option tag\"]}}]', 15, 1),
(135, '2020-09-25 14:09:37.056511', '1', 'Durrës, Albania / b@x.com', 1, '[{\"added\": {}}]', 41, 1),
(136, '2020-09-25 14:21:05.784745', '1', 'Tirana, Albania / b@x.com', 2, '[{\"changed\": {\"fields\": [\"Address\", \"Geolocation\"]}}]', 41, 1),
(137, '2020-09-25 14:21:21.741155', '1', 'Sheshi Skënderbej, Tirana, Albania / b@x.com', 2, '[{\"changed\": {\"fields\": [\"Address\", \"Geolocation\"]}}]', 41, 1),
(138, '2020-09-25 17:20:28.362789', '3', 'Durrës, Albania / a@b.com', 3, '', 41, 1),
(139, '2020-09-25 17:20:28.415673', '2', 'Roma, Metropolitan City of Rome, Italy / a@b.com', 3, '', 41, 1),
(140, '2020-09-25 17:20:28.488720', '1', 'Sheshi Skënderbej, Tirana, Albania / b@x.com', 3, '', 41, 1),
(141, '2020-09-25 17:52:26.886754', '6', 'Area 51, NV, USA / a@b.com', 3, '', 41, 1),
(142, '2020-09-25 17:52:26.901067', '5', 'Area 51, NV, USA / a@b.com', 3, '', 41, 1),
(143, '2020-09-25 17:52:26.935598', '4', 'Area 51, NV, USA / a@b.com', 3, '', 41, 1),
(144, '2020-09-25 18:10:14.756507', '11', 'Chicago, IL, USA / a@b.com', 3, '', 41, 1),
(145, '2020-09-25 18:15:00.052814', '1', 'Euro ne lek', 1, '[{\"added\": {}}]', 40, 1),
(146, '2020-09-28 15:39:27.383254', '5', 'b@v.com', 3, '', 27, 1),
(147, '2020-09-28 15:39:27.418237', '4', 'b@x.com', 3, '', 27, 1),
(149, '2020-09-28 15:41:22.768310', '4', 'b@x.com', 3, '', 27, 1),
(150, '2020-09-28 15:41:27.462650', '5', 'b@v.com', 3, '', 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(35, 'blog', 'blog'),
(30, 'blog', 'feedhit'),
(31, 'blog', 'post'),
(36, 'blog', 'postimageset'),
(32, 'blog', 'reviewcomment'),
(33, 'blog', 'revision'),
(34, 'blog', 'section'),
(4, 'contenttypes', 'contenttype'),
(6, 'main_app', 'body'),
(7, 'main_app', 'condition'),
(29, 'main_app', 'contactus'),
(8, 'main_app', 'currency'),
(26, 'main_app', 'cylinder'),
(9, 'main_app', 'door'),
(10, 'main_app', 'drivetrain'),
(23, 'main_app', 'engine'),
(40, 'main_app', 'eurotolek'),
(24, 'main_app', 'exteriorcolor'),
(11, 'main_app', 'fuel'),
(25, 'main_app', 'interiorcolor'),
(12, 'main_app', 'make'),
(13, 'main_app', 'model'),
(14, 'main_app', 'photogallery'),
(15, 'main_app', 'searchoption'),
(16, 'main_app', 'seatingcap'),
(17, 'main_app', 'seller'),
(18, 'main_app', 'transmission'),
(19, 'main_app', 'vehicle'),
(22, 'main_app', 'vehiclehighlights'),
(21, 'main_app', 'vehicleoption'),
(20, 'main_app', 'vehicletype'),
(37, 'pinax_images', 'image'),
(38, 'pinax_images', 'imageset'),
(5, 'sessions', 'session'),
(39, 'sites', 'site'),
(27, 'users', 'customuser'),
(41, 'users', 'location'),
(28, 'users', 'savedvehicle');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'main_app', '0001_initial', '2020-09-04 12:13:03.758949'),
(2, 'contenttypes', '0001_initial', '2020-09-04 12:13:14.344446'),
(3, 'contenttypes', '0002_remove_content_type_name', '2020-09-04 12:13:15.180127'),
(4, 'auth', '0001_initial', '2020-09-04 12:13:16.066764'),
(5, 'auth', '0002_alter_permission_name_max_length', '2020-09-04 12:13:19.683039'),
(6, 'auth', '0003_alter_user_email_max_length', '2020-09-04 12:13:19.744212'),
(7, 'auth', '0004_alter_user_username_opts', '2020-09-04 12:13:19.772589'),
(8, 'auth', '0005_alter_user_last_login_null', '2020-09-04 12:13:19.802585'),
(9, 'auth', '0006_require_contenttypes_0002', '2020-09-04 12:13:19.822811'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2020-09-04 12:13:19.852359'),
(11, 'auth', '0008_alter_user_username_max_length', '2020-09-04 12:13:19.888525'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2020-09-04 12:13:19.926586'),
(13, 'auth', '0010_alter_group_name_max_length', '2020-09-04 12:13:20.045141'),
(14, 'auth', '0011_update_proxy_permissions', '2020-09-04 12:13:20.077712'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2020-09-04 12:13:20.117460'),
(16, 'users', '0001_initial', '2020-09-04 12:13:21.460050'),
(17, 'admin', '0001_initial', '2020-09-04 12:13:26.788831'),
(18, 'admin', '0002_logentry_remove_auto_add', '2020-09-04 12:13:28.400624'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-04 12:13:28.424096'),
(20, 'main_app', '0002_auto_20200903_1805', '2020-09-04 12:13:31.932859'),
(21, 'main_app', '0003_auto_20200903_2001', '2020-09-04 12:13:43.450983'),
(22, 'main_app', '0004_remove_vehicle_exterior_color', '2020-09-04 12:13:44.610754'),
(23, 'main_app', '0005_remove_vehicle_engine_type', '2020-09-04 12:13:44.811146'),
(24, 'main_app', '0006_auto_20200903_2041', '2020-09-04 12:13:47.302869'),
(25, 'main_app', '0007_auto_20200903_2044', '2020-09-04 12:13:51.721546'),
(26, 'sessions', '0001_initial', '2020-09-04 12:13:52.052757'),
(27, 'main_app', '0008_engine_model', '2020-09-04 15:51:13.128918'),
(28, 'main_app', '0009_remove_vehicle_model', '2020-09-04 15:58:13.906408'),
(29, 'main_app', '0010_auto_20200904_2026', '2020-09-04 18:26:34.656817'),
(30, 'users', '0002_customuser_name', '2020-09-04 18:26:34.843847'),
(31, 'users', '0003_customuser_display_name', '2020-09-08 15:55:10.994634'),
(32, 'users', '0004_savedvehicle', '2020-09-08 18:36:37.156110'),
(33, 'main_app', '0011_body_icon', '2020-09-09 11:50:25.885851'),
(34, 'main_app', '0012_auto_20200910_1546', '2020-09-10 13:46:51.111543'),
(35, 'main_app', '0013_contactus', '2020-09-10 16:17:22.292796'),
(36, 'main_app', '0014_body_vehicle_type', '2020-09-10 16:19:37.903122'),
(37, 'main_app', '0015_vehicletype_tag', '2020-09-10 16:28:12.186070'),
(38, 'main_app', '0016_auto_20200910_1852', '2020-09-10 16:52:17.173306'),
(39, 'pinax_images', '0001_initial', '2020-09-11 14:45:20.205042'),
(40, 'blog', '0001_initial', '2020-09-11 14:45:23.622416'),
(41, 'blog', '0002_post_state', '2020-09-11 14:45:27.656358'),
(42, 'blog', '0003_auto_20150529_0405', '2020-09-11 14:45:28.849585'),
(43, 'blog', '0004_auto_20150530_1541', '2020-09-11 14:45:29.053964'),
(44, 'blog', '0005_auto_20151218_1733', '2020-09-11 14:45:35.010150'),
(45, 'blog', '0006_auto_20160321_1527', '2020-09-11 14:45:35.078077'),
(46, 'blog', '0007_auto_20161223_1013', '2020-09-11 14:45:36.577954'),
(47, 'blog', '0008_auto_20161223_1013', '2020-09-11 14:45:36.624719'),
(48, 'blog', '0009_auto_20161223_1013', '2020-09-11 14:45:38.021374'),
(49, 'blog', '0010_auto_20161223_1014', '2020-09-11 14:45:38.963629'),
(50, 'blog', '0011_post_image_set', '2020-09-11 14:45:39.721524'),
(51, 'blog', '0012_set_default_imagesets', '2020-09-11 14:45:39.768502'),
(52, 'blog', '0013_imageset_not_null', '2020-09-11 14:45:41.240031'),
(53, 'blog', '0014_migrate_to_pinax_images', '2020-09-11 14:45:41.474363'),
(54, 'blog', '0015_drop_primary_image', '2020-09-11 14:45:41.795995'),
(55, 'blog', '0016_drop_image', '2020-09-11 14:45:42.270230'),
(56, 'blog', '0017_remove_post_tweet_text', '2020-09-11 14:45:42.504944'),
(57, 'blog', '0018_auto_20170213_1035', '2020-09-11 14:45:43.539858'),
(58, 'blog', '0019_conditional_slug_unique', '2020-09-11 14:45:43.570899'),
(59, 'blog', '0020_auto_20171106_2252', '2020-09-11 14:45:44.998811'),
(60, 'blog', '0021_postimageset', '2020-09-11 14:45:45.023618'),
(61, 'sites', '0001_initial', '2020-09-11 14:45:45.243306'),
(62, 'sites', '0002_alter_domain_unique', '2020-09-11 14:45:45.434160'),
(63, 'main_app', '0017_condition_tag', '2020-09-25 13:44:25.599429'),
(64, 'main_app', '0018_vehicle_extra_name', '2020-09-25 13:44:25.990035'),
(65, 'main_app', '0019_eurotolek', '2020-09-25 13:44:26.255643'),
(66, 'main_app', '0020_vehicle_popularity', '2020-09-25 13:44:26.443133'),
(67, 'users', '0005_location', '2020-09-25 13:44:26.661890'),
(68, 'users', '0006_auto_20200928_1421', '2020-09-28 12:21:27.780797'),
(69, 'users', '0007_auto_20200928_1503', '2020-09-28 13:03:03.327101'),
(70, 'users', '0008_auto_20200928_1543', '2020-09-28 13:44:03.813686'),
(71, 'users', '0009_auto_20200928_1552', '2020-09-28 13:52:25.318474');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0fz84c3c7p7ds0106hjzuh274atjpkia', '.eJxVjL0OwyAQg9-FuULhAAEdu_cZENwdJW1FpPxMUd-9RMrQypP92d5FTNta47bwHEcSV6HE5TfLCV_cDkDP1B6TxKmt85jlUZEnXeR9In7fzu7fQU1L7WtnQdlgtfdMwOS6AmiTC2rtsRjUDIRDQU8FgEK24BxrNYRurFHi8wXfaDe2:1kMyuR:ibaPmnK8gIbIJmJWKE4awwDi4sZ1AEAmmWpCqzwioog', '2020-10-12 19:34:03.859977'),
('0r33moj9axgbg1acwdeblo963tmmozcc', '.eJxVjL0OwyAQg9-FuULhAAEdu_cZENwdJW1FpPxMUd-9RMrQypP92d5FTNta47bwHEcSV6HE5TfLCV_cDkDP1B6TxKmt85jlUZEnXeR9In7fzu7fQU1L7WtnQdlgtfdMwOS6AmiTC2rtsRjUDIRDQU8FgEK24BxrNYRurFHi8wXfaDe2:1kHmqF:mPHfwS3pVqHH0iSkPZBmqheKDpy5J7247qFxmSVSl9Q', '2020-09-28 11:40:15.731040'),
('h995ifwjmsb3r35f3mymubf6fo53y337', '.eJxVjL0OwyAQg9-FuULhAAEdu_cZENwdJW1FpPxMUd-9RMrQypP92d5FTNta47bwHEcSV6HE5TfLCV_cDkDP1B6TxKmt85jlUZEnXeR9In7fzu7fQU1L7WtnQdlgtfdMwOS6AmiTC2rtsRjUDIRDQU8FgEK24BxrNYRurFHi8wXfaDe2:1kNL2d:J-GZ3CBIKzJrtoA74R7rkvToqV5OULGOYgABXL3Uwyc', '2020-10-13 19:11:59.878593'),
('hug15zzd5igcz8eu41pa4n1ixzmcrx4l', '.eJxVjL0OwyAQg9-FuULhAAEdu_cZENwdJW1FpPxMUd-9RMrQypP92d5FTNta47bwHEcSV6HE5TfLCV_cDkDP1B6TxKmt85jlUZEnXeR9In7fzu7fQU1L7WtnQdlgtfdMwOS6AmiTC2rtsRjUDIRDQU8FgEK24BxrNYRurFHi8wXfaDe2:1kHn6q:Y4PZ6sZXceYykHN3h6Ubmf7B1DBxWeEpX75wchglnJw', '2020-09-28 11:57:24.956262');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_body`
--

CREATE TABLE `main_app_body` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` longtext NOT NULL,
  `vehicle_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_body`
--

INSERT INTO `main_app_body` (`id`, `name`, `icon`, `vehicle_type_id`) VALUES
(1, 'Sedan', '', 1),
(2, 'Coupe', '', 1),
(3, 'Papaq', '', 2),
(4, 'Tonazh i rend', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_condition`
--

CREATE TABLE `main_app_condition` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_condition`
--

INSERT INTO `main_app_condition` (`id`, `name`, `tag`) VALUES
(1, 'New', ''),
(2, 'Used', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_contactus`
--

CREATE TABLE `main_app_contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `message` longtext NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_currency`
--

CREATE TABLE `main_app_currency` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `tag` varchar(4) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_currency`
--

INSERT INTO `main_app_currency` (`id`, `name`, `tag`, `symbol`) VALUES
(1, 'Albanian Lek', 'ALL', NULL),
(2, 'Euro', 'EUR', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_cylinder`
--

CREATE TABLE `main_app_cylinder` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_cylinder`
--

INSERT INTO `main_app_cylinder` (`id`, `name`) VALUES
(1, '8'),
(2, '12');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_door`
--

CREATE TABLE `main_app_door` (
  `id` int(11) NOT NULL,
  `name` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_door`
--

INSERT INTO `main_app_door` (`id`, `name`) VALUES
(1, 5),
(2, 2),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_drivetrain`
--

CREATE TABLE `main_app_drivetrain` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_drivetrain`
--

INSERT INTO `main_app_drivetrain` (`id`, `name`) VALUES
(1, 'FWD');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_engine`
--

CREATE TABLE `main_app_engine` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_engine`
--

INSERT INTO `main_app_engine` (`id`, `name`, `model_id`) VALUES
(1, '350', 1),
(2, '200', 1),
(3, '200', 2),
(4, '1100', 4),
(5, '8000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_eurotolek`
--

CREATE TABLE `main_app_eurotolek` (
  `id` int(11) NOT NULL,
  `exchange` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_eurotolek`
--

INSERT INTO `main_app_eurotolek` (`id`, `exchange`) VALUES
(1, 127);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_exteriorcolor`
--

CREATE TABLE `main_app_exteriorcolor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_exteriorcolor`
--

INSERT INTO `main_app_exteriorcolor` (`id`, `name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_fuel`
--

CREATE TABLE `main_app_fuel` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_fuel`
--

INSERT INTO `main_app_fuel` (`id`, `name`) VALUES
(1, 'Gasoline'),
(2, 'Gas');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_interiorcolor`
--

CREATE TABLE `main_app_interiorcolor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_interiorcolor`
--

INSERT INTO `main_app_interiorcolor` (`id`, `name`) VALUES
(1, 'Red'),
(2, 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_make`
--

CREATE TABLE `main_app_make` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_make`
--

INSERT INTO `main_app_make` (`id`, `name`, `logo`) VALUES
(1, 'Mercedes-Benz', 'https://i.pinimg.com/originals/2d/3b/54/2d3b5459e7bc6eefd6361685601290a4.jpg'),
(2, 'Audi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Audi_logo_detail.svg/800px-Audi_logo_detail.svg.png'),
(3, 'Yamaha', 'asd'),
(4, 'International', 'logo');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_model`
--

CREATE TABLE `main_app_model` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `make_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_model`
--

INSERT INTO `main_app_model` (`id`, `name`, `make_id`) VALUES
(1, 'S-Class', 1),
(2, 'TT', 2),
(3, 'C-Class', 1),
(4, 'T-Max', 3),
(5, 'LT625 6x4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_photogallery`
--

CREATE TABLE `main_app_photogallery` (
  `id` int(11) NOT NULL,
  `photo` longtext NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_photogallery`
--

INSERT INTO `main_app_photogallery` (`id`, `photo`, `vehicle_id`) VALUES
(4, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(5, 'https://i.ytimg.com/vi/pDBOto2cUME/maxresdefault.jpg', 8),
(6, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(7, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(8, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(9, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(10, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(11, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(12, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(13, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7),
(14, 'https://cdn.motor1.com/images/mgl/ge78o/s3/2020-mercedes-s-class-sedan-render.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_searchoption`
--

CREATE TABLE `main_app_searchoption` (
  `id` int(11) NOT NULL,
  `search_option_name` varchar(40) NOT NULL,
  `search_option_tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_searchoption`
--

INSERT INTO `main_app_searchoption` (`id`, `search_option_name`, `search_option_tag`) VALUES
(6, 'Vendodhje', 'Location'),
(7, 'Distanca', 'Distance'),
(9, 'Shitesi', 'Seller'),
(11, 'Marka', 'engine_type__model__make__name'),
(12, 'Modeli', 'Model'),
(13, 'Viti', 'Year'),
(14, 'Cmimi', 'Price'),
(15, 'Trupi', 'Body'),
(16, 'Ngjyra  jashme', 'ExteriorColor'),
(17, 'Ngjyra  brendshme', 'InteriorColor'),
(18, 'Kilometra', 'Mileage'),
(19, 'Diferenciali', 'Drivetrain'),
(20, 'Karburant', 'Fuel'),
(22, 'Motorri', 'Engine'),
(23, 'Cilindrata', 'cylinders'),
(24, 'Transmisioni', 'Transmission'),
(25, 'Sedilje', 'SeatingCap'),
(26, 'Dyer', 'door_type__name');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_seatingcap`
--

CREATE TABLE `main_app_seatingcap` (
  `id` int(11) NOT NULL,
  `name` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_seatingcap`
--

INSERT INTO `main_app_seatingcap` (`id`, `name`) VALUES
(1, 5),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_seller`
--

CREATE TABLE `main_app_seller` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_seller`
--

INSERT INTO `main_app_seller` (`id`, `name`) VALUES
(1, 'Private'),
(2, 'Dealer');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_transmission`
--

CREATE TABLE `main_app_transmission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_transmission`
--

INSERT INTO `main_app_transmission` (`id`, `name`) VALUES
(1, 'Automatic');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_vehicle`
--

CREATE TABLE `main_app_vehicle` (
  `id` int(11) NOT NULL,
  `production_year` int(10) UNSIGNED NOT NULL,
  `mileage` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL CHECK (`price` >= 0),
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `body_type_id` int(11) NOT NULL,
  `condition_type_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `door_type_id` int(11) NOT NULL,
  `drivetrain_type_id` int(11) NOT NULL,
  `fuel_type_id` int(11) NOT NULL,
  `seating_cap_id` int(11) NOT NULL,
  `transmission_type_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cylinders_id` int(11) NOT NULL,
  `engine_type_id` int(11) NOT NULL,
  `exterior_color_id` int(11) NOT NULL,
  `interior_color_id` int(11) NOT NULL,
  `consumption_city` double DEFAULT NULL,
  `consumption_combined` double DEFAULT NULL,
  `consumption_highway` double DEFAULT NULL,
  `extra_name` varchar(20) NOT NULL,
  `popularity` int(10) UNSIGNED NOT NULL CHECK (`popularity` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_vehicle`
--

INSERT INTO `main_app_vehicle` (`id`, `production_year`, `mileage`, `price`, `description`, `created_at`, `body_type_id`, `condition_type_id`, `currency_id`, `door_type_id`, `drivetrain_type_id`, `fuel_type_id`, `seating_cap_id`, `transmission_type_id`, `type_id`, `user_id`, `cylinders_id`, `engine_type_id`, `exterior_color_id`, `interior_color_id`, `consumption_city`, `consumption_combined`, `consumption_highway`, `extra_name`, `popularity`) VALUES
(7, 2020, 20, 120000, 'lorem ipsum', '2020-09-04 16:04:04.185618', 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, 7.7, 7, 6.7, '', 159),
(8, 2019, 30000, 3500000, '', '2020-09-04 16:05:16.343217', 2, 2, 1, 2, 1, 2, 2, 1, 1, 1, 1, 3, 1, 2, NULL, NULL, NULL, '', 100),
(9, 2019, 30000, 3500000, '', '2020-09-04 16:05:16.343217', 2, 2, 1, 2, 1, 2, 2, 1, 1, 1, 1, 3, 1, 2, NULL, NULL, NULL, '', 1),
(10, 2020, 20, 120000, 'lorem ipsum', '2020-09-04 16:04:04.185618', 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, NULL, NULL, NULL, '', 0),
(11, 2020, 20, 120000, 'lorem ipsum', '2020-09-04 16:04:04.185618', 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, NULL, NULL, NULL, '', 0),
(12, 2020, 20, 120000, 'lorem ipsum', '2020-09-04 16:04:04.185618', 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, NULL, NULL, NULL, '', 0),
(13, 2020, 20, 120000, 'lorem ipsum', '2020-09-04 16:04:04.185618', 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, 8.2, 7.8, 7.5, '', 0),
(14, 2019, 30000, 3500000, '', '2020-09-04 16:05:16.343217', 2, 2, 1, 2, 1, 2, 2, 1, 1, 1, 1, 3, 1, 2, NULL, NULL, NULL, '', 0),
(15, 2019, 30000, 3500000, '', '2020-09-04 16:05:16.343217', 2, 2, 1, 2, 1, 2, 2, 1, 1, 1, 1, 3, 1, 2, NULL, NULL, NULL, '', 0),
(16, 2020, 50, 15000, '', '2020-09-10 17:05:49.567240', 3, 1, 2, 3, 1, 1, 3, 1, 2, 1, 1, 4, 2, 2, 3.2, 3.1, 3, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_vehiclehighlights`
--

CREATE TABLE `main_app_vehiclehighlights` (
  `id` int(11) NOT NULL,
  `highlight_name` varchar(60) NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_vehiclehighlights`
--

INSERT INTO `main_app_vehiclehighlights` (`id`, `highlight_name`, `vehicle_id`) VALUES
(4, 'FWD', 7),
(5, 'On-Board Computer', 7),
(6, 'On-Board Computer', 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_vehicleoption`
--

CREATE TABLE `main_app_vehicleoption` (
  `id` int(11) NOT NULL,
  `option_name` varchar(60) NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_vehicleoption`
--

INSERT INTO `main_app_vehicleoption` (`id`, `option_name`, `vehicle_id`) VALUES
(4, 'Bluetooth', 7),
(5, 'Sensor shiu', 7),
(6, 'Bluetooth', 8);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_vehicletype`
--

CREATE TABLE `main_app_vehicletype` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `search_type` int(10) UNSIGNED NOT NULL CHECK (`search_type` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_vehicletype`
--

INSERT INTO `main_app_vehicletype` (`id`, `name`, `tag`, `banner`, `search_type`) VALUES
(1, 'Makina & SUVs', 'car', '1', 1),
(2, 'Motocikljeta', 'bike', 'vehicle/banner/car_parts_NIZH9cQ.jpg', 1),
(3, 'Makina Pune', 'commercial', 'vehicle/banner/car_parts.jpg', 1),
(4, 'Kamiona', 'heavy_truck', 'vehicle/banner/heavytruck.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pinax_images_image`
--

CREATE TABLE `pinax_images_image` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `original_filename` varchar(500) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `image_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pinax_images_imageset`
--

CREATE TABLE `pinax_images_imageset` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `primary_image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser`
--

CREATE TABLE `users_customuser` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `seller_type_id_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `display_name` varchar(60) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `website` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_customuser`
--

INSERT INTO `users_customuser` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `phone`, `date_joined`, `seller_type_id_id`, `name`, `display_name`, `logo`, `website`) VALUES
(1, 'pbkdf2_sha256$216000$i9y026VA9MLq$SKKVz+MTkJz+D3b8OeeDUehzCVGeJnsCy0PlSMuuEok=', '2020-09-29 19:11:59.762864', 1, '', '', 'a@b.com', 1, 1, '0676247163', '2020-09-04 12:14:34.567568', 2, '', '', '', ''),
(2, 'pbkdf2_sha256$216000$RQ5rxYTcMBV4$W0GDDmPTst9MrFKMz1BnEVXyPFFFp1UWWku8jvMikFc=', NULL, 0, '', '', 'a@c.com', 0, 1, '355676247163', '2020-09-04 15:40:06.170000', 2, '', '', '', ''),
(6, 'pbkdf2_sha256$216000$pZMJGhhKeHNB$U0JvgvECrFt3s5h3h3Z3+VDCPIDtYrR8TDTqQjJi+Qo=', '2020-09-28 15:48:05.955843', 0, 'test1', 'testtest', 'a@d.com', 0, 1, '355676247163', '2020-09-28 15:47:56.300750', 2, '', '', '', 'web.com'),
(7, 'pbkdf2_sha256$216000$qLQR44t0G2fj$To994CPZYrTwSZbH/T8wws1SWaVK7q8R0IEeeR+ZRtU=', '2020-09-28 16:32:33.677768', 0, 'test1', 'testtest', 'aa@b.com', 0, 1, '355676247163', '2020-09-28 16:32:26.756860', 2, '', '', 'user_aa@b.com/logo/logo_temp.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_groups`
--

CREATE TABLE `users_customuser_groups` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_user_permissions`
--

CREATE TABLE `users_customuser_user_permissions` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_location`
--

CREATE TABLE `users_location` (
  `id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `geolocation` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_location`
--

INSERT INTO `users_location` (`id`, `address`, `geolocation`, `user_id`) VALUES
(12, 'Durrës, Albania', '41.32419156985875,19.455701488221745', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_savedvehicle`
--

CREATE TABLE `users_savedvehicle` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_savedvehicle`
--

INSERT INTO `users_savedvehicle` (`id`, `user_id`, `vehicle_id`) VALUES
(4, 1, 7),
(5, 1, 8),
(6, 1, 14),
(7, 1, 14),
(8, 1, 13),
(9, 7, 8),
(10, 7, 8),
(11, 7, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `main_app_body`
--
ALTER TABLE `main_app_body`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_body_vehicle_type_id_ab46fa9d_fk_main_app_` (`vehicle_type_id`);

--
-- Indexes for table `main_app_condition`
--
ALTER TABLE `main_app_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_contactus`
--
ALTER TABLE `main_app_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_currency`
--
ALTER TABLE `main_app_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_cylinder`
--
ALTER TABLE `main_app_cylinder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_door`
--
ALTER TABLE `main_app_door`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_drivetrain`
--
ALTER TABLE `main_app_drivetrain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_engine`
--
ALTER TABLE `main_app_engine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_engine_model_id_9cd91044_fk_main_app_model_id` (`model_id`);

--
-- Indexes for table `main_app_eurotolek`
--
ALTER TABLE `main_app_eurotolek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_exteriorcolor`
--
ALTER TABLE `main_app_exteriorcolor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_fuel`
--
ALTER TABLE `main_app_fuel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_interiorcolor`
--
ALTER TABLE `main_app_interiorcolor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_make`
--
ALTER TABLE `main_app_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_model`
--
ALTER TABLE `main_app_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_model_make_id_d67e192f_fk_main_app_make_id` (`make_id`);

--
-- Indexes for table `main_app_photogallery`
--
ALTER TABLE `main_app_photogallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_photogallery_vehicle_id_300cff43_fk_main_app_vehicle_id` (`vehicle_id`);

--
-- Indexes for table `main_app_searchoption`
--
ALTER TABLE `main_app_searchoption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_seatingcap`
--
ALTER TABLE `main_app_seatingcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_seller`
--
ALTER TABLE `main_app_seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_transmission`
--
ALTER TABLE `main_app_transmission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_vehicle`
--
ALTER TABLE `main_app_vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_vehicle_type_id_002915de_fk_main_app_vehicletype_id` (`type_id`),
  ADD KEY `main_app_vehicle_body_type_id_ba103be9_fk_main_app_body_id` (`body_type_id`),
  ADD KEY `main_app_vehicle_condition_type_id_322dd4ab_fk_main_app_` (`condition_type_id`),
  ADD KEY `main_app_vehicle_currency_id_49867d29_fk_main_app_currency_id` (`currency_id`),
  ADD KEY `main_app_vehicle_door_type_id_527fa7d1_fk_main_app_door_id` (`door_type_id`),
  ADD KEY `main_app_vehicle_drivetrain_type_id_846b156f_fk_main_app_` (`drivetrain_type_id`),
  ADD KEY `main_app_vehicle_fuel_type_id_e9d9fbe0_fk_main_app_fuel_id` (`fuel_type_id`),
  ADD KEY `main_app_vehicle_seating_cap_id_973cbac5_fk_main_app_` (`seating_cap_id`),
  ADD KEY `main_app_vehicle_transmission_type_id_b288803b_fk_main_app_` (`transmission_type_id`),
  ADD KEY `main_app_vehicle_user_id_03bbd63b_fk_users_customuser_id` (`user_id`),
  ADD KEY `main_app_vehicle_cylinders_id_0cab35ff_fk_main_app_cylinder_id` (`cylinders_id`),
  ADD KEY `main_app_vehicle_engine_type_id_b8513bd6_fk_main_app_engine_id` (`engine_type_id`),
  ADD KEY `main_app_vehicle_exterior_color_id_a8de26dd_fk_main_app_` (`exterior_color_id`),
  ADD KEY `main_app_vehicle_interior_color_id_3c8cb855_fk_main_app_` (`interior_color_id`);

--
-- Indexes for table `main_app_vehiclehighlights`
--
ALTER TABLE `main_app_vehiclehighlights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_vehiclehigh_vehicle_id_33551d42_fk_main_app_` (`vehicle_id`);

--
-- Indexes for table `main_app_vehicleoption`
--
ALTER TABLE `main_app_vehicleoption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_vehicleopti_vehicle_id_32855d93_fk_main_app_` (`vehicle_id`);

--
-- Indexes for table `main_app_vehicletype`
--
ALTER TABLE `main_app_vehicletype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinax_images_image`
--
ALTER TABLE `pinax_images_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinax_images_image_image_set_id_eb99d8d0_fk_pinax_ima` (`image_set_id`),
  ADD KEY `pinax_images_image_created_by_id_31a81e5c_fk_users_customuser_id` (`created_by_id`);

--
-- Indexes for table `pinax_images_imageset`
--
ALTER TABLE `pinax_images_imageset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinax_images_imagese_created_by_id_52728f5f_fk_users_cus` (`created_by_id`),
  ADD KEY `pinax_images_imagese_primary_image_id_5335cee9_fk_pinax_ima` (`primary_image_id`);

--
-- Indexes for table `users_customuser`
--
ALTER TABLE `users_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `users_customuser_seller_type_id_id_3800d918_fk_main_app_` (`seller_type_id_id`);

--
-- Indexes for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_groups_customuser_id_group_id_76b619e3_uniq` (`customuser_id`,`group_id`),
  ADD KEY `users_customuser_groups_group_id_01390b14_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `users_location`
--
ALTER TABLE `users_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_location_user_id_3bae858a_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `users_savedvehicle`
--
ALTER TABLE `users_savedvehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_savedvehicle_user_id_640da777_fk_users_customuser_id` (`user_id`),
  ADD KEY `users_savedvehicle_vehicle_id_d53ced35_fk_main_app_vehicle_id` (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_app_body`
--
ALTER TABLE `main_app_body`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_app_condition`
--
ALTER TABLE `main_app_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_contactus`
--
ALTER TABLE `main_app_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_currency`
--
ALTER TABLE `main_app_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_cylinder`
--
ALTER TABLE `main_app_cylinder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_door`
--
ALTER TABLE `main_app_door`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_app_drivetrain`
--
ALTER TABLE `main_app_drivetrain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_app_engine`
--
ALTER TABLE `main_app_engine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_app_eurotolek`
--
ALTER TABLE `main_app_eurotolek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_app_exteriorcolor`
--
ALTER TABLE `main_app_exteriorcolor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_app_fuel`
--
ALTER TABLE `main_app_fuel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_interiorcolor`
--
ALTER TABLE `main_app_interiorcolor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_make`
--
ALTER TABLE `main_app_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_app_model`
--
ALTER TABLE `main_app_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_app_photogallery`
--
ALTER TABLE `main_app_photogallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_app_searchoption`
--
ALTER TABLE `main_app_searchoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `main_app_seatingcap`
--
ALTER TABLE `main_app_seatingcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_app_seller`
--
ALTER TABLE `main_app_seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_transmission`
--
ALTER TABLE `main_app_transmission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_app_vehicle`
--
ALTER TABLE `main_app_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `main_app_vehiclehighlights`
--
ALTER TABLE `main_app_vehiclehighlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_app_vehicleoption`
--
ALTER TABLE `main_app_vehicleoption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_app_vehicletype`
--
ALTER TABLE `main_app_vehicletype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pinax_images_image`
--
ALTER TABLE `pinax_images_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinax_images_imageset`
--
ALTER TABLE `pinax_images_imageset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser`
--
ALTER TABLE `users_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_location`
--
ALTER TABLE `users_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_savedvehicle`
--
ALTER TABLE `users_savedvehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `main_app_body`
--
ALTER TABLE `main_app_body`
  ADD CONSTRAINT `main_app_body_vehicle_type_id_ab46fa9d_fk_main_app_` FOREIGN KEY (`vehicle_type_id`) REFERENCES `main_app_vehicletype` (`id`);

--
-- Constraints for table `main_app_engine`
--
ALTER TABLE `main_app_engine`
  ADD CONSTRAINT `main_app_engine_model_id_9cd91044_fk_main_app_model_id` FOREIGN KEY (`model_id`) REFERENCES `main_app_model` (`id`);

--
-- Constraints for table `main_app_model`
--
ALTER TABLE `main_app_model`
  ADD CONSTRAINT `main_app_model_make_id_d67e192f_fk_main_app_make_id` FOREIGN KEY (`make_id`) REFERENCES `main_app_make` (`id`);

--
-- Constraints for table `main_app_photogallery`
--
ALTER TABLE `main_app_photogallery`
  ADD CONSTRAINT `main_app_photogallery_vehicle_id_300cff43_fk_main_app_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `main_app_vehicle` (`id`);

--
-- Constraints for table `main_app_vehicle`
--
ALTER TABLE `main_app_vehicle`
  ADD CONSTRAINT `main_app_vehicle_body_type_id_ba103be9_fk_main_app_body_id` FOREIGN KEY (`body_type_id`) REFERENCES `main_app_body` (`id`),
  ADD CONSTRAINT `main_app_vehicle_condition_type_id_322dd4ab_fk_main_app_` FOREIGN KEY (`condition_type_id`) REFERENCES `main_app_condition` (`id`),
  ADD CONSTRAINT `main_app_vehicle_currency_id_49867d29_fk_main_app_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `main_app_currency` (`id`),
  ADD CONSTRAINT `main_app_vehicle_cylinders_id_0cab35ff_fk_main_app_cylinder_id` FOREIGN KEY (`cylinders_id`) REFERENCES `main_app_cylinder` (`id`),
  ADD CONSTRAINT `main_app_vehicle_door_type_id_527fa7d1_fk_main_app_door_id` FOREIGN KEY (`door_type_id`) REFERENCES `main_app_door` (`id`),
  ADD CONSTRAINT `main_app_vehicle_drivetrain_type_id_846b156f_fk_main_app_` FOREIGN KEY (`drivetrain_type_id`) REFERENCES `main_app_drivetrain` (`id`),
  ADD CONSTRAINT `main_app_vehicle_engine_type_id_b8513bd6_fk_main_app_engine_id` FOREIGN KEY (`engine_type_id`) REFERENCES `main_app_engine` (`id`),
  ADD CONSTRAINT `main_app_vehicle_exterior_color_id_a8de26dd_fk_main_app_` FOREIGN KEY (`exterior_color_id`) REFERENCES `main_app_exteriorcolor` (`id`),
  ADD CONSTRAINT `main_app_vehicle_fuel_type_id_e9d9fbe0_fk_main_app_fuel_id` FOREIGN KEY (`fuel_type_id`) REFERENCES `main_app_fuel` (`id`),
  ADD CONSTRAINT `main_app_vehicle_interior_color_id_3c8cb855_fk_main_app_` FOREIGN KEY (`interior_color_id`) REFERENCES `main_app_interiorcolor` (`id`),
  ADD CONSTRAINT `main_app_vehicle_seating_cap_id_973cbac5_fk_main_app_` FOREIGN KEY (`seating_cap_id`) REFERENCES `main_app_seatingcap` (`id`),
  ADD CONSTRAINT `main_app_vehicle_transmission_type_id_b288803b_fk_main_app_` FOREIGN KEY (`transmission_type_id`) REFERENCES `main_app_transmission` (`id`),
  ADD CONSTRAINT `main_app_vehicle_type_id_002915de_fk_main_app_vehicletype_id` FOREIGN KEY (`type_id`) REFERENCES `main_app_vehicletype` (`id`),
  ADD CONSTRAINT `main_app_vehicle_user_id_03bbd63b_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `main_app_vehiclehighlights`
--
ALTER TABLE `main_app_vehiclehighlights`
  ADD CONSTRAINT `main_app_vehiclehigh_vehicle_id_33551d42_fk_main_app_` FOREIGN KEY (`vehicle_id`) REFERENCES `main_app_vehicle` (`id`);

--
-- Constraints for table `main_app_vehicleoption`
--
ALTER TABLE `main_app_vehicleoption`
  ADD CONSTRAINT `main_app_vehicleopti_vehicle_id_32855d93_fk_main_app_` FOREIGN KEY (`vehicle_id`) REFERENCES `main_app_vehicle` (`id`);

--
-- Constraints for table `pinax_images_image`
--
ALTER TABLE `pinax_images_image`
  ADD CONSTRAINT `pinax_images_image_created_by_id_31a81e5c_fk_users_customuser_id` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `pinax_images_image_image_set_id_eb99d8d0_fk_pinax_ima` FOREIGN KEY (`image_set_id`) REFERENCES `pinax_images_imageset` (`id`);

--
-- Constraints for table `pinax_images_imageset`
--
ALTER TABLE `pinax_images_imageset`
  ADD CONSTRAINT `pinax_images_imagese_created_by_id_52728f5f_fk_users_cus` FOREIGN KEY (`created_by_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `pinax_images_imagese_primary_image_id_5335cee9_fk_pinax_ima` FOREIGN KEY (`primary_image_id`) REFERENCES `pinax_images_image` (`id`);

--
-- Constraints for table `users_customuser`
--
ALTER TABLE `users_customuser`
  ADD CONSTRAINT `users_customuser_seller_type_id_id_3800d918_fk_main_app_` FOREIGN KEY (`seller_type_id_id`) REFERENCES `main_app_seller` (`id`);

--
-- Constraints for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD CONSTRAINT `users_customuser_gro_customuser_id_958147bf_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_groups_group_id_01390b14_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD CONSTRAINT `users_customuser_use_customuser_id_5771478b_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `users_location`
--
ALTER TABLE `users_location`
  ADD CONSTRAINT `users_location_user_id_3bae858a_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `users_savedvehicle`
--
ALTER TABLE `users_savedvehicle`
  ADD CONSTRAINT `users_savedvehicle_user_id_640da777_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_savedvehicle_vehicle_id_d53ced35_fk_main_app_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `main_app_vehicle` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
