-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 12:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `aboutId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `userDetails` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`aboutId`, `username`, `image`, `userDetails`, `create_at`) VALUES
(1, 'Tahmid', 'upload/c4ba7914ef.jpg', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham', '2023-09-03 02:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(15, 'mob'),
(17, 'Mobile'),
(18, 'cat'),
(20, 'bike-1'),
(21, 'TEACHER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `cmtId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `postId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(70) NOT NULL,
  `message` text NOT NULL,
  `admin_reply` text DEFAULT NULL,
  `update_date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`cmtId`, `userId`, `postId`, `name`, `email`, `website`, `message`, `admin_reply`, `update_date`, `status`, `create_time`) VALUES
(13, 7, 21, 'MD. TAHMID', 'null', 'tahmidalmaruf99@gmail.com', 'first comment', 'Thank you for your comment :>', 'Aug 22, 2023 12:06:20am', 0, '2023-09-08 11:49:53'),
(15, 8, 23, 'MD. TAHMID', 'null', 'tahmidalmaruf99@gmail.com', 'i love this post', 'Thank You', 'Sep 08, 2023 02:17:46pm', 1, '2023-09-08 12:17:46'),
(16, 8, 23, 'ruddeo', 'null', 'tahmid15-5951@diu.edu.bd', 'tdrdhg', NULL, '', 1, '2023-09-08 11:57:32'),
(17, 8, 23, 'ruddeo', 'null', 'tahmid15-5951@diu.edu.bd', 'tdrdhg', NULL, '', 0, '2023-09-08 11:57:51'),
(18, 8, 23, 'ruddeo', 'null', 'tahmid15-5951@diu.edu.bd', 'tdrdhg', NULL, '', 0, '2023-09-08 12:17:18'),
(19, 8, 23, 'ruddeo', 'null', 'tahmid15-5951@diu.edu.bd', 'tdrdhg', NULL, '', 0, '2023-09-08 12:17:52'),
(20, 7, 26, 'MD. TAHMID', 'null', 'tahmidalmaruf99@gmail.com', 'this product is best', 'thank you', 'Oct 03, 2023 04:42:52pm', 0, '2023-11-26 14:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contactId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contactId`, `name`, `phone`, `email`, `message`, `created_at`) VALUES
(1, 'name', 'phone', 'email', 'message', '2023-09-11 00:19:16'),
(2, 'MD. TAHMID', '01727452728', 'tahmidalmaruf99@gmail.com', 'I Love This WebSite', '2023-09-11 00:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `logoId` int(11) NOT NULL,
  `logoName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`logoId`, `logoName`) VALUES
(1, 'Web Master');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `imageOne` varchar(255) NOT NULL,
  `disOne` text NOT NULL,
  `imageTwo` varchar(255) NOT NULL,
  `disTwo` text NOT NULL,
  `postType` tinyint(4) NOT NULL DEFAULT 1,
  `tags` varchar(100) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`postId`, `userId`, `title`, `catId`, `imageOne`, `disOne`, `imageTwo`, `disTwo`, `postType`, `tags`, `status`, `create_time`) VALUES
(21, 7, 'dsf', 18, 'upload/4285e38c90.jpg', '<p>dsf</p>', 'upload/6482a41264.jpg', '<p>sdsdf</p>', 2, 'dfg', 0, '2023-08-21 20:42:12'),
(22, 8, 'abcd', 18, 'upload/01165e1658.jpg', '<p>esfesf</p>', 'upload/636974a3ba.jpg', '<p>egrger</p>', 2, 'ergergergrweg', 0, '2023-08-25 15:28:54'),
(23, 8, 'Post title', 17, 'upload/6303b95717.jpg', '<p>This is Mobile Post</p>', 'upload/fbb0e9f6f1.jpg', '<p>This is Mobile Post</p>', 2, 'anything', 0, '2023-08-27 04:53:13'),
(24, 7, 'Post', 15, 'upload/88dfd1b835.jpg', '<p>Thias is paragaraph</p>', 'upload/b1d3e617d5.jpg', '<p>Thias is paragaraph</p>', 2, 'Tag on', 0, '2023-08-30 06:00:21'),
(25, 7, 'Tahmid', 15, 'upload/74a925d128.jpg', '<p>asdfasfsafsaf e srgsadgsa&nbsp;</p>', 'upload/f4d53647a3.jpg', '<p>sdf sadfsadf safs afgsafgs sd sf</p>', 1, 'Slider', 0, '2023-08-30 06:01:57'),
(26, 7, 'kamru sona', 17, 'upload/740c37a15e.jpg', '<p>kamru sona valo manush</p>', 'upload/856748ed73.jpg', '<p>kamru sona lotar jamai</p>', 1, 'lota', 0, '2023-10-03 14:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `sid` int(11) NOT NULL,
  `twtter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `insta` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`sid`, `twtter`, `facebook`, `insta`, `youtube`) VALUES
(1, 'Twtter', 'https://www.facebook.com/', 'https://www.instagram.com/', 'YouTube');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `v_token` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_bio` text DEFAULT NULL,
  `v_status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `username`, `email`, `phone`, `password`, `v_token`, `image`, `user_bio`, `v_status`, `create_at`) VALUES
(7, 'TAHMID', 'tahmidalmaruf99@gmail.com', '+8801727452728', '698d51a19d8a121ce581499d7b701668', '99952b9013c8fa7741f75a360dfc7c2c', 'upload/c4ba7914ef.jpg', NULL, 1, '2023-08-10 09:15:07'),
(8, 'Maruf', 'tahmid15-5951@diu.edu.bd', '+8801727452728', 'bcbe3365e6ac95ea2c0343a2395834dd', '3e05f8b42de8a5fff14791572998ba79', 'upload/058addf309.jpg', 'i love this post', 1, '2023-08-14 18:51:51'),
(9, 'MD. RASEL', 'sarker15-5663@diu.edu.bd', '+8801727452728', '698d51a19d8a121ce581499d7b701668', '5e310a973557506c0e450451bf8107e5', '', NULL, 0, '2023-11-19 14:41:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`aboutId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`cmtId`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`logoId`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `aboutId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `cmtId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `logoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
