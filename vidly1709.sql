-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2015 at 08:32 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vidly`
--

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `count` int(255) NOT NULL,
  `dislike_count` int(255) NOT NULL,
  `video_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `count`, `dislike_count`, `video_id`, `user_id`) VALUES
(42, 1, 0, 0, 0),
(43, 1, 0, 55, 74),
(44, 1, 0, 51, 74),
(45, 0, 1, 52, 74),
(46, 0, 1, 53, 74),
(47, 1, 0, 51, 52),
(48, 1, 0, 52, 52),
(49, 1, 0, 53, 52),
(50, 1, 0, 55, 52),
(51, 1, 0, 54, 52),
(52, 1, 0, 64, 52),
(53, 1, 0, 51, 43),
(54, 1, 0, 52, 43),
(55, 1, 0, 55, 43),
(56, 0, 1, 63, 95),
(57, 1, 0, 65, 95),
(58, 0, 1, 51, 95),
(59, 1, 0, 52, 95),
(60, 1, 0, 70, 100),
(61, 0, 1, 71, 100),
(62, 1, 0, 51, 100),
(63, 1, 0, 69, 100),
(64, 1, 0, 51, 124),
(65, 1, 0, 52, 124),
(66, 1, 0, 55, 124),
(67, 1, 0, 54, 124),
(68, 1, 0, 64, 124),
(69, 1, 0, 65, 124),
(70, 1, 0, 69, 124),
(71, 1, 0, 70, 124),
(72, 1, 0, 63, 124),
(73, 1, 0, 74, 100),
(74, 1, 0, 51, 78),
(75, 1, 0, 51, 107),
(76, 1, 0, 55, 78),
(77, 1, 0, 64, 78);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL,
  `v_id` varchar(6) NOT NULL,
  `keywords` text NOT NULL,
  `mediaId` varchar(255) NOT NULL,
  `zencoder_id` varchar(255) NOT NULL,
  `input` longtext NOT NULL,
  `outputs` longtext NOT NULL,
  `state` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `isPrivate` tinyint(1) NOT NULL,
  `nsfw` tinyint(1) NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT '1',
  `Delete` tinyint(1) NOT NULL DEFAULT '0',
  `input_file` varchar(255) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `submitted_at` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `userId`, `v_id`, `keywords`, `mediaId`, `zencoder_id`, `input`, `outputs`, `state`, `thumbnail`, `description`, `isPrivate`, `nsfw`, `Active`, `Delete`, `input_file`, `channel`, `submitted_at`, `created`) VALUES
(101, '', '', '', '', '186524415', '{"id":186495359,"format":"mpeg4","frame_rate":25,"duration_in_ms":5312,"audio_sample_rate":48000,"audio_bitrate_in_kbps":384,"audio_codec":"aac","height":720,"width":1280,"file_size_in_bytes":1055736,"video_codec":"h264","total_bitrate_in_kbps":1589,"channels":"6","video_bitrate_in_kbps":1205,"state":"finished","md5_checksum":null}', '//vidly-videos-dev.s3.amazonaws.com/zensockets/308cdc5138fbe686a540f7d7878c3e60.mp4', 'finished', '//vidly-videos-dev.s3.amazonaws.com/zensockets/0_101.png', 'dfd', 0, 1, 1, 0, 'https://www.filepicker.io/api/file/rsVViK5VToSC6micS3A2', '2k1xdu', '2015-09-14', '2015-09-17 14:07:52'),
(102, '', '', '', '', '186528248', '{"id":186499192,"format":"mpeg4","frame_rate":25,"duration_in_ms":5312,"audio_sample_rate":48000,"audio_bitrate_in_kbps":384,"audio_codec":"aac","height":720,"width":1280,"file_size_in_bytes":1055736,"video_codec":"h264","total_bitrate_in_kbps":1589,"channels":"6","video_bitrate_in_kbps":1205,"state":"finished","md5_checksum":null}', '//vidly-videos-dev.s3.amazonaws.com/zensockets/9b543c5f97e338024eb576f69a79b64b.mp4', 'finished', '//vidly-videos-dev.s3.amazonaws.com/zensockets/0_102.png', 'fdfs', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/rijd0xmiRpyzgXog2qeJ', '2k1xdu', '2015-09-14', '2015-09-14 13:30:24'),
(103, '', '', '', '', '', '', '', 'transcoding', '', 'sunny', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/hwWzZM9RcqLuwX406Gtb', 'lla2qb', '2015-09-17', '2015-09-17 06:52:28'),
(104, '', '', '', '', '', '', '', 'transcoding', '', 'hjlhjhjl', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/Fj6vothzR4SPMqG27eHr', 'lla2qb', '2015-09-17', '2015-09-17 07:48:03'),
(105, '', '', '', '', '', '', '', 'transcoding', '', 'fgjffgjff', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/4Yq0U3mZTSpIKUr5YAfH', 'lla2qb', '2015-09-17', '2015-09-17 08:03:42'),
(106, '', '', '', '', '', '', '', 'transcoding', '', '', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/p4sO78VRMOWAr2ffHQbA', 'lla2qb', '2015-09-17', '2015-09-17 08:59:52'),
(107, '', 'eeeet', '', '', '', '', '', 'transcoding', '', 'wetwet', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/hG65YWx0TZeJVJZsnFWv', 'lla2qb', '2015-09-17', '2015-09-17 09:02:46'),
(108, '', 'ovvy', '', '', '', '', '', 'transcoding', '', 'myvedio', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/mzH0BeSQu68u6OXuJB9A', 'lla2qb', '2015-09-17', '2015-09-17 09:04:28'),
(109, '', 'dmev', '', '', '', '', '', 'transcoding', '', 'myvedio', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/qajA4jTDT0qSrioHzWoz', 'lla2qb', '2015-09-17', '2015-09-17 09:05:30'),
(110, '', 'dmyv', '', '', '', '', '', 'transcoding', '', 'myvedio', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/SYpEnYIjRvWE23LrzYu3', 'lla2qb', '2015-09-17', '2015-09-17 09:06:34'),
(111, '', '', '', '', '', '', '', 'transcoding', '', '', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/0I2LSaFTTR6rQWMlClsI', 'lla2qb', '2015-09-17', '2015-09-17 10:25:43'),
(112, '', 'dddf', 'sunny,bullet,casio', '', '', '', '', 'transcoding', '', 'ddfdfd', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/hPDmIw8hR0qGauCfh5Oc', 'lla2qb', '2015-09-17', '2015-09-17 10:31:16'),
(113, '', 'gfff', 'jfgjfgjfgjfgjfgj', '', '', '', '', 'transcoding', '', 'dfgjfg', 1, 0, 1, 0, 'https://www.filepicker.io/api/file/k6Lw2NrbQua3CeliOxQQ', 'lla2qb', '2015-09-17', '2015-09-17 10:56:55'),
(114, '', 'fjjg', 'fgjfgjfgjfgjfgjfgjfgjfgj', '', '', '', '', 'transcoding', '', 'fgjfgj', 1, 0, 1, 0, 'https://www.filepicker.io/api/file/NWmJEEgSxWp0EaDuJH3f', 'lla2qb', '2015-09-17', '2015-09-17 11:01:19'),
(115, '141', '', '', '', '', '', '', 'transcoding', '', '', 0, 0, 1, 0, 'https://www.filepicker.io/api/file/MfADVe76RMmtr2T3Jvfb', 'lla2qb', '2015-09-17', '2015-09-17 11:06:56'),
(116, '141', 'ssdd', 'sdgsdg', '', '', '', '', 'transcoding', '', 'dssdg', 1, 1, 1, 0, 'https://www.filepicker.io/api/file/ERSELjJMQzuCrmcjPfWD', 'lla2qb', '2015-09-17', '2015-09-17 11:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `IsDelete` tinyint(1) NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL,
  `is_nsfw` tinyint(4) DEFAULT NULL,
  `isReddit` tinyint(1) NOT NULL DEFAULT '0',
  `makeAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `random_no` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=142 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `IsDelete`, `isActive`, `is_nsfw`, `isReddit`, `makeAdmin`, `random_no`, `created`, `updatedAt`) VALUES
(43, 'shweta21', 'shwetas@mastersoftwaresolutions.com', '', 'user', 0, 0, NULL, 0, 0, '', '2015-09-07', '2015-09-15 11:33:37'),
(75, 'shail', 'shailendra@mastersoftwaresolutions.com', '', 'user', 0, 1, NULL, 0, 0, 'UC7K9', '2015-09-02', '0000-00-00 00:00:00'),
(78, 'mssavnishkumar', '', '', 'user', 0, 1, NULL, 1, 0, '', '2015-09-03', '2015-09-10 12:59:14'),
(101, 'shweta', 'shwetasaluja@mastersoftwaresolutions.com', '', 'user', 0, 1, NULL, 0, 0, 'bV2K2', '2015-09-07', '0000-00-00 00:00:00'),
(103, 'shivi', 'shivi@gmail.com', '', 'user', 0, 0, NULL, 0, 0, 'FNzFx', '2015-09-07', '0000-00-00 00:00:00'),
(107, 'Vikas', 'vikasyadav@mastersoftwaresolutions.com', '', 'user', 0, 1, NULL, 0, 0, '01jKw', '2015-09-07', '2015-09-09 12:59:30'),
(125, 'DontFindMe_', '', '', 'user', 0, 1, NULL, 1, 0, '', '0000-00-00', '2015-09-10 12:59:23'),
(126, 'Jordan', 'jordansimps@me.com', '', 'user', 0, 0, NULL, 0, 0, 'GVJph', '2015-09-10', '2015-09-10 04:21:07'),
(128, 'asssss', 'dsfs@gmail.com', '', 'user', 0, 0, NULL, 0, 0, 'CTXRR', '2015-09-10', '2015-09-10 13:02:02'),
(129, 'asdfgh', 'dd@gmail.com', '', 'user', 0, 0, NULL, 0, 0, '2AFs3', '2015-09-10', '2015-09-10 13:07:22'),
(135, 'psachdeva', 'mss.parveensachdeva@gmail.com', '', 'user', 0, 0, NULL, 0, 0, '1V3Fp', '2015-09-14', '2015-09-14 08:19:14'),
(139, 'megha31', 'meghathareja@mastersoftwaresolutions.com', '', 'admin', 0, 1, NULL, 0, 0, 'fNPmi', '2015-09-14', '2015-09-14 09:39:27'),
(140, 'gsg123', 'sdf@gmail.com', '', 'user', 0, 0, NULL, 0, 0, '7u4Vo', '2015-09-15', '2015-09-15 06:26:27'),
(141, '123456', 'gdc@gmail.com', '', 'user', 0, 1, 1, 0, 0, 'CHoAh', '2015-09-15', '2015-09-17 13:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE IF NOT EXISTS `views` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `view_count` int(255) NOT NULL,
  `ip` varchar(225) NOT NULL,
  `video_id` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `view_count`, `ip`, `video_id`) VALUES
(2, 1, '127.0.0.1', 51),
(3, 1, '127.0.0.1', 52),
(4, 1, '127.0.0.1', 53),
(5, 1, '127.0.0.1', 55),
(6, 1, '192.168.0.1', 54),
(7, 1, '192.168.0.1', 53),
(8, 1, '192.168.0.1', 63),
(9, 1, '192.168.0.1', 52),
(10, 1, '192.168.0.1', 69),
(11, 1, '192.168.0.1', 51),
(12, 1, '192.168.0.148', 51),
(13, 1, '192.168.0.148', 52),
(14, 1, '192.168.0.148', 53),
(15, 1, '192.168.0.148', 65),
(16, 1, '192.168.0.46', 51),
(17, 1, '192.168.0.46', 52),
(18, 1, '192.168.0.142', 52),
(19, 1, '192.168.0.137', 52),
(20, 1, '127.0.0.1', 70),
(21, 1, '192.168.0.46', 69),
(22, 1, '127.0.0.1', 80),
(23, 1, '192.168.0.1', 81),
(24, 1, '192.168.0.142', 51),
(25, 1, '192.168.0.1', 64),
(26, 1, '206.131.8.50', 65),
(27, 1, '76.126.58.32', 51),
(28, 1, '76.126.58.32', 52),
(29, 1, '76.126.58.32', 74),
(30, 1, '76.126.58.32', 69),
(31, 1, '127.0.0.1', 54),
(32, 1, '192.168.0.1', 55),
(33, 1, '192.168.0.1', 65),
(34, 1, '192.168.0.1', 85),
(35, 1, '192.168.0.1', 83),
(36, 1, '192.168.0.51', 52),
(37, 1, '192.168.0.51', 51),
(38, 1, '192.168.0.51', 54),
(39, 1, '127.0.0.1', 75),
(40, 1, '192.168.0.148', 101),
(41, 1, '192.168.0.148', 102),
(42, 1, '192.168.0.1', 101),
(43, 1, '::ffff:127.0.0.1', 101);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
