-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 03:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `excerpt` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'a', 'a', 'a', 'a', 1, 1, 1, '2024-10-24 07:47:09', '2024-10-24 07:47:09', 0),
(2, 'b', 'b', 'b', 'b', 1, 1, 1, '2024-10-24 07:47:09', '2024-10-24 07:47:09', 0),
(3, 'a', 'a', 'a', 'a', 1, 1, 1, '2024-10-24 07:47:12', '2024-10-24 07:47:12', 0),
(4, 'b', 'b', 'b', 'b', 1, 1, 1, '2024-10-24 07:47:12', '2024-10-24 07:47:12', 0),
(5, 'c', 'c', 'c', 'c', 0, 0, 0, '2024-10-24 07:47:53', '2024-10-24 07:47:53', 1),
(6, 'd', 'd', 'd', 'd', 1, 1, 1, '2024-10-24 07:47:53', '2024-10-24 07:47:53', 1),
(7, 'c', 'c', 'c', 'c', 0, 0, 0, '2024-10-24 07:47:55', '2024-10-24 07:47:55', 1),
(8, 'd', 'd', 'd', 'd', 1, 1, 1, '2024-10-24 07:47:55', '2024-10-24 07:47:55', 1),
(10, 'aaa', 'bsg', 'bac a bac ', NULL, 1, 1, 0, '2024-10-24 09:38:55', '2024-10-24 09:38:55', 0),
(11, 'aaa', 'bsg', 'bac a bac ', NULL, 1, 1, 0, '2024-10-24 09:39:02', '2024-10-24 09:39:02', 0),
(12, 'a', 'a', 'a', 'a', 0, 0, 1, '2024-10-24 09:40:46', '2024-10-24 09:40:46', 0),
(13, 'j', 'j', 'p', 'o', 0, 1, 0, '2024-10-24 09:41:38', '2024-10-24 09:41:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
