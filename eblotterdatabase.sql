-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 02:25 PM
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
-- Database: `eblotterdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `document_requests`
--

CREATE TABLE `document_requests` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `purpose` text NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_requests`
--

INSERT INTO `document_requests` (`id`, `fullname`, `email`, `phone`, `document_type`, `purpose`, `status`, `created_at`) VALUES
(1, 'qwerty', 'qwerty@qwerty.com', '0987654321', 'indigency', 'gusto ko lang', 'approved', '2025-02-15 17:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `fb_posts`
--

CREATE TABLE `fb_posts` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `media_url` varchar(255) DEFAULT NULL,
  `post_id` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `scheduled_time` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grecords`
--

CREATE TABLE `grecords` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `suspect_name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `is_closed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grecords`
--

INSERT INTO `grecords` (`id`, `group_name`, `name`, `contact`, `address`, `time`, `month`, `day`, `year`, `case_type`, `description`, `suspect_name`, `position`, `is_closed`, `created_at`) VALUES
(9, '5star motor shop', 'Danilo', 912345678, 'parian', '03:03:00', 'December', '21', '2024', 'block the parking ', 'pinaparada lang  yung truck nila malapit samin wala na mapwestuhan ang mga customer namin sila pa galit pagpinapaalis kasi pwesto namin yun', 'Edd\'s Junk shop', 'Secretary', 1, '2024-12-13 23:03:36'),
(10, 'St. John Hospital', 'Dr. Cruz', 912345678, 'Parian ', '15:11:00', 'January', '21', '2024', 'Littering Garbage', 'tintapon lang mga sako sakong basura sa tabi ng hospital', 'Andrew\'s Pares', 'Secretary', 1, '2024-12-13 23:12:04'),
(11, 'Aeron\'s Hotel', 'Aeron', 212123, 'Parian ', '15:12:00', 'September', '21', '2024', 'Noise complain', 'ang ingay ng ktv nila walang pinipiling oras na iistorbo tulog ng mga customer ko', 'Kenneth\'s resto bar', 'Secretary', 0, '2024-12-13 23:12:38'),
(13, 'juaninasal', 'juan', 912345678, 'parian', '16:24:00', 'December', '07', '2024', 'Food waste', 'walang sariling tapunan ng kaning baboy or food waste kaya nangagamoy masasang at delikado sa kalusugan', 'mang pedro eatery', 'secretary', 0, '2024-12-14 00:24:28'),
(14, 'Five star chicken', 'Pedro Cruz', 912345678, 'parian', '16:39:00', 'December', '05', '2024', 'Littering Garbage', 'Hindi tina tapon ng maayos ang mga basura sa tama kay nagkakalat ito lalo at nangangamoy pa dahil sa mga bulok na manok natinatapon kung saan', 'Juan\'s Store', 'Secretary', 0, '2024-12-14 00:39:41'),
(15, 'mang inasal', 'miranda', 2147483647, 'parian', '23:24:00', 'January', '1', '2025', 'obstruction', 'dami nakaharang', 'andoks', 'secretary', 1, '2024-12-16 07:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `involved_parties`
--

CREATE TABLE `involved_parties` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `involved_parties`
--

INSERT INTO `involved_parties` (`id`, `record_id`, `name`, `contact`, `address`, `age`, `gender`, `relationship`) VALUES
(48, 42, 'kenneth masunurin', '', 'parian', '31', 'Female', ''),
(49, 41, 'mark ong', '', 'parian', '21', 'Male', ''),
(50, 10, 'Maria Delacruz', '', 'parian', '29', 'female', ''),
(51, 9, 'bongbong ', '', 'ilocos', 'immortal', 'male', ''),
(52, 8, 'Pedro ', '', 'parian', '32', 'male', ''),
(53, 7, 'vice ganda', '', 'parian', '48', 'non-binary', ''),
(54, 6, 'jose', '', 'tondo', '48', 'male', ''),
(55, 5, 'Martin Rumwaldes', '', 'parian', '36', 'male', ''),
(56, 2, 'maine', '', 'parian', '29', 'female', ''),
(59, 43, 'aling miranda', '', 'parian', '41', 'Female', ''),
(61, 45, 'joselito', '', 'friend', '30', 'Male', '');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `time` time NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_closed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('open','closed') DEFAULT 'open',
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `name`, `contact`, `month`, `day`, `year`, `time`, `address`, `age`, `gender`, `relationship`, `case_type`, `description`, `is_closed`, `created_at`, `status`, `position`) VALUES
(2, 'alden', 2147483647, 'october', 24, 2024, '01:07:00', 'parian', 32, 'male', 'complicated', 'assault', 'binugbog', 1, '2024-11-28 09:18:23', 'open', 'Secretary'),
(5, 'Madelyn Rumwaldes', 2147483647, 'november', 21, 2024, '23:40:00', 'parian', 34, 'female', 'husband', 'noise complaint', 'pangit boses', 1, '2024-11-28 19:40:45', 'open', 'Secretary'),
(6, 'wally', 2147483647, 'november', 21, 2024, '15:24:00', 'parian', 42, 'male', 'friend', 'estafa', 'nangnakaw na nga. eh meron nga yang b-', 1, '2024-11-28 19:41:04', 'open', 'Secretary'),
(7, 'anne', 2147483647, 'december', 30, 2024, '14:33:00', 'parian', 39, 'female', 'workmates', 'theft', 'kinuha yung make-up ko', 1, '2024-11-28 19:47:57', 'open', 'Secretary'),
(8, 'Juan Gomez', 2147483647, 'december', 21, 2024, '13:33:00', 'parian', 32, 'male', 'neighbor', 'noise complaint', 'ang ingay talaga panget kumanta', 1, '2024-11-28 21:33:09', 'open', 'Secretary'),
(9, 'Sara Perez', 2147483647, 'december', 28, 2024, '23:40:00', 'davao', 26, 'female', 'lover', 'assault', 'gusto ako ipapatay', 1, '2024-11-29 07:40:53', 'open', 'Secretary'),
(10, 'Juan Delacruz', 2147483647, 'december', 10, 2024, '11:11:00', 'parian', 32, 'male', 'wife', 'third party', 'may kabit?', 1, '2024-12-08 19:11:51', 'open', 'secretary'),
(41, 'Paulo Cruz', 2147483647, 'December', 21, 2024, '15:02:00', 'parian ', 21, 'Male', 'stranger', 'theft', 'nanakawan ng cellphone', 1, '2024-12-13 23:02:44', 'open', 'Secretary'),
(42, 'robert domingo', 2147483647, 'January', 1, 2025, '22:54:00', 'parian', 31, 'Male', 'stranger', 'noise complaint', 'dami paputok', 1, '2024-12-14 06:55:36', 'open', 'secretary'),
(43, 'tito robert', 2147483647, 'December', 25, 2024, '23:21:00', 'parian', 21, 'Male', 'neighbor', 'noise complaint', 'maingay ang videoke', 1, '2024-12-16 07:22:23', 'open', 'secretary'),
(45, 'juan', 2147483647, 'January', 2, 2025, '00:35:00', 'lawa', 30, 'Male', 'friend', 'noise complaint', 'ingay ng karaoke', 0, '2025-02-24 16:35:58', 'open', 'kapitan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin','sub_admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT 'images/default-avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`, `reset_token`, `reset_token_expiry`, `profile_picture`) VALUES
(1, 'admin nga ng lawa', 'admin@lawa.com', '$2y$10$LLIZ9/7EizsKcabFlVjTLO1ECWDLLe7U0y3X1nHrDFsdOqpoVKpZS', 'admin', '2024-11-28 09:04:59', NULL, NULL, 'uploads/profile_pictures/67b378f70ec1e_1739815159_finlogo.png'),
(7, 'aeron', 'aeron@parian.com', '$2y$10$Swhd3.d9cT101bBN3Px4DeCbovguNTLwjhp4L4kQZC3hWvDfBIT8y', 'user', '2024-12-07 06:16:22', 'f695d46d6578100b1f0c4cfcb22b3d3e', '2024-12-07 16:51:00', 'uploads/profile_pictures/67bdaf455d6ef_1740484421_jhoanna.webp'),
(8, 'mark', 'mark@parian.com', '$2y$10$FeVb0zXrn28qf7MwtV3vVuuCydg6ZCu3vA0xINqiQzHN4ZeINu2zu', 'user', '2024-12-12 10:33:26', NULL, NULL, 'images/default-avatar.png'),
(9, 'secretary', 'secretary@parian.com', '$2y$10$niiAmWnLHGWE9V4FtU8uhOHNHTrhGlfbQYiFpZ6OvAVJbWZJhxwqO', 'sub_admin', '2024-12-13 20:20:39', NULL, NULL, 'images/default-avatar.png'),
(10, 'ren', 'k1@gmail.com', '$2y$10$mIss2pMfVLPW/YY.jD7ocusDkBgdNMM7K7BfQW48Bv4zN.Y79Qdvq', 'sub_admin', '2025-02-18 06:18:40', NULL, NULL, 'uploads/profile_pictures/67b4ec76b9b72_1739910262_default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document_requests`
--
ALTER TABLE `document_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_posts`
--
ALTER TABLE `fb_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grecords`
--
ALTER TABLE `grecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `involved_parties`
--
ALTER TABLE `involved_parties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document_requests`
--
ALTER TABLE `document_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fb_posts`
--
ALTER TABLE `fb_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grecords`
--
ALTER TABLE `grecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `involved_parties`
--
ALTER TABLE `involved_parties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `involved_parties`
--
ALTER TABLE `involved_parties`
  ADD CONSTRAINT `involved_parties_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `records` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
