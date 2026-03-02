-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2025 at 07:18 PM
-- Server version: 8.4.6
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2526DEV3003`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `weight_value` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `weight_value`) VALUES
(1, 1, 'Popcorn', 'comedy'),
(2, 1, 'Nachos', 'action'),
(3, 1, 'Chocolate', 'romance'),
(4, 1, 'Ice cream', 'drama'),
(5, 1, 'Nothing', 'sci-fi'),
(11, 2, 'A futuristic city', 'sci-fi'),
(12, 2, 'A peaceful countryside', 'romance'),
(13, 2, 'A dark forest', 'horror'),
(14, 2, 'A busy metropolis', 'action'),
(15, 2, 'A galaxy far, far away', 'sci-fi'),
(16, 3, 'The rebel', 'action'),
(17, 3, 'The genius', 'sci-fi'),
(18, 3, 'The underdog', 'drama'),
(19, 3, 'The warrior', 'action'),
(20, 3, 'The comedian', 'comedy'),
(21, 4, '90 minutes', 'comedy'),
(22, 4, '2 hours', 'drama'),
(23, 4, '2.5 hours', 'action'),
(24, 4, '3+ hours', 'drama'),
(25, 4, 'Doesn’t matter', 'sci-fi'),
(26, 5, 'Energetic', 'action'),
(27, 5, 'Romantic', 'romance'),
(28, 5, 'Curious', 'sci-fi'),
(29, 5, 'Chaotic', 'comedy'),
(30, 5, 'Calm', 'drama'),
(31, 7, 'Shocking', 'action'),
(32, 7, 'Emotional', 'drama'),
(33, 7, 'Smart', 'sci-fi'),
(34, 7, 'Funny', 'comedy'),
(35, 7, 'Mysterious', 'horror'),
(36, 8, 'The mastermind', 'sci-fi'),
(37, 8, 'The monster', 'horror'),
(38, 8, 'The corrupt leader', 'drama'),
(39, 8, 'The jealous rival', 'romance'),
(40, 8, 'The unknown threat', 'horror'),
(41, 9, 'Story', 'drama'),
(42, 9, 'Action', 'action'),
(43, 9, 'Aesthetics', 'sci-fi'),
(44, 9, 'Characters', 'romance'),
(45, 9, 'Comedy', 'comedy'),
(46, 10, 'Action', 'action'),
(47, 10, 'Comedy', 'comedy'),
(48, 10, 'Romance', 'romance'),
(49, 10, 'Drama', 'drama'),
(50, 10, 'Sci-Fi', 'sci-fi'),
(174, 11, 'McLaren P1', 'mclaren'),
(175, 11, 'Ferrari LaFerrari', 'ferrari'),
(176, 11, 'Porsche 918 Spyder', 'porsche'),
(177, 12, 'BMW M', 'bmw'),
(178, 12, 'Mercedes-AMG', 'mercedes'),
(179, 12, 'Audi RS', 'audi'),
(180, 13, 'Lamborghini', 'lamborghini'),
(181, 13, 'Ferrari', 'ferrari'),
(182, 14, 'Pure snelheid', 'supercar'),
(183, 14, 'Comfort', 'luxury'),
(184, 14, 'Handling / bochten', 'sport'),
(185, 14, 'Looks', 'exotic'),
(186, 14, 'Betrouwbaarheid', 'daily'),
(187, 15, 'Agressief', 'supercar'),
(188, 15, 'Rustig', 'luxury'),
(189, 15, 'Sportief', 'sport'),
(190, 15, 'Speels', 'hot_hatch'),
(191, 15, 'Efficiënt', 'daily'),
(192, 16, 'V8', 'muscle'),
(193, 16, 'V10', 'lamborghini'),
(194, 16, 'V12', 'ferrari'),
(195, 16, 'Turbo whoosh', 'jdm'),
(196, 16, 'Elektrisch stil', 'electric'),
(197, 17, 'Circuit', 'track'),
(198, 17, 'Autobahn', 'german'),
(199, 17, 'Stad', 'urban'),
(200, 17, 'Bergwegen', 'sport'),
(201, 17, 'Overal', 'daily'),
(202, 18, 'Brutaal', 'lamborghini'),
(203, 18, 'Elegant', 'ferrari'),
(204, 18, 'Clean', 'audi'),
(205, 18, 'Agressief', 'bmw'),
(206, 18, 'Luxueus', 'mercedes'),
(207, 19, 'Manual', 'driver'),
(208, 19, 'Automatic', 'luxury'),
(209, 19, 'Paddle shifters', 'sport'),
(210, 20, 'Supercar', 'supercar'),
(211, 20, 'Luxury sedan', 'luxury'),
(212, 20, 'Track car', 'track'),
(213, 20, 'JDM icon', 'jdm'),
(214, 20, 'Electric performance car', 'electric');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `name`, `created_at`) VALUES
(1, ' Damian', '2025-12-13 23:11:43'),
(2, ' Damian', '2025-12-13 23:28:00'),
(3, ' Damian', '2025-12-13 23:46:30'),
(4, ' Damian', '2025-12-13 23:59:33'),
(5, ' Damian', '2025-12-14 00:02:30'),
(6, ' Damian', '2025-12-14 00:34:07'),
(7, ' Damian', '2025-12-14 00:36:10'),
(8, ' Damian', '2025-12-14 00:40:22'),
(9, ' Damian', '2025-12-14 00:42:28'),
(10, ' Damian', '2025-12-14 00:42:49'),
(11, ' Damian', '2025-12-14 00:43:05'),
(12, ' Damian', '2025-12-14 01:08:40'),
(13, 'Damian', '2025-12-14 01:10:54'),
(14, ' Damian', '2025-12-14 01:16:33'),
(15, 'Damian', '2025-12-14 01:16:43'),
(16, ' da', '2025-12-14 11:37:49'),
(17, ' Da', '2025-12-14 11:48:03'),
(18, ' Da', '2025-12-14 11:55:21'),
(19, ' Da', '2025-12-14 11:55:49'),
(20, ' Da', '2025-12-14 12:03:57'),
(21, 'Damian', '2025-12-14 12:04:32'),
(22, ' Damian', '2025-12-14 16:44:39'),
(23, ' Damina', '2025-12-14 17:01:55'),
(24, 'Da', '2025-12-14 17:04:57'),
(26, ' a', '2025-12-14 17:17:56'),
(27, ' Damian', '2025-12-14 17:49:13'),
(28, ' Damian', '2025-12-14 17:57:35'),
(29, ' Damian', '2025-12-14 17:59:55'),
(30, 'Damian', '2025-12-14 18:47:12'),
(31, 'Damian', '2025-12-14 19:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `survey_id` int NOT NULL,
  `question_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `survey_id`, `question_text`) VALUES
(1, 1, 'Choose a movie snack'),
(2, 1, 'Pick a setting for your perfect movie world'),
(3, 1, 'What kind of main character do you root for?'),
(4, 1, 'Choose an ideal movie length'),
(5, 1, 'Which mood fits you today?'),
(7, 1, 'A twist in a movie should be...'),
(8, 1, 'Choose a movie villain type'),
(9, 1, 'What do you value most in a film?'),
(10, 1, 'If your life was a movie, it would be...'),
(11, 2, 'Welke auto van de Holy Trinity ben jij?'),
(12, 2, 'Van de Big German 3, welke auto kies je?'),
(13, 2, 'Lamborghini of Ferrari?'),
(14, 2, 'Wat is belangrijker voor jou in een auto?'),
(15, 2, 'Welke rijstijl past het best bij jou?'),
(16, 2, 'Welke sound spreekt je het meest aan?'),
(17, 2, 'Waar gebruik je je auto het liefst?'),
(18, 2, 'Welke uitstraling past bij jou?'),
(19, 2, 'Manual of automatic?'),
(20, 2, 'Als je één droomauto mocht kiezen, wat zou het zijn?');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int NOT NULL,
  `participant_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `participant_id`, `question_id`, `option_id`, `created_at`) VALUES
(1, 24, 11, 176, '2025-12-14 17:04:59'),
(2, 24, 12, 178, '2025-12-14 17:05:01'),
(3, 24, 13, 180, '2025-12-14 17:05:03'),
(4, 24, 14, 185, '2025-12-14 17:05:04'),
(5, 24, 15, 191, '2025-12-14 17:05:05'),
(6, 24, 16, 195, '2025-12-14 17:05:06'),
(7, 24, 17, 199, '2025-12-14 17:05:07'),
(8, 24, 18, 203, '2025-12-14 17:05:08'),
(9, 24, 19, 207, '2025-12-14 17:05:08'),
(10, 24, 20, 214, '2025-12-14 17:05:09'),
(11, 25, 1, 1, '2025-12-14 17:16:54'),
(12, 25, 2, 12, '2025-12-14 17:16:54'),
(13, 25, 3, 18, '2025-12-14 17:16:55'),
(14, 25, 4, 24, '2025-12-14 17:16:55'),
(15, 25, 5, 30, '2025-12-14 17:16:56'),
(16, 25, 7, 33, '2025-12-14 17:16:59'),
(17, 25, 8, 40, '2025-12-14 17:16:59'),
(18, 25, 9, 43, '2025-12-14 17:17:00'),
(19, 25, 10, 47, '2025-12-14 17:17:01'),
(20, 27, 1, 2, '2025-12-14 17:49:45'),
(21, 27, 2, 13, '2025-12-14 17:50:13'),
(22, 27, 3, 19, '2025-12-14 17:50:16'),
(23, 27, 4, 25, '2025-12-14 17:50:20'),
(24, 27, 5, 27, '2025-12-14 17:50:23'),
(25, 27, 7, 33, '2025-12-14 17:50:29'),
(26, 27, 8, 39, '2025-12-14 17:50:31'),
(27, 27, 9, 41, '2025-12-14 17:50:34'),
(28, 27, 10, 50, '2025-12-14 17:51:00'),
(29, 28, 11, 176, '2025-12-14 17:57:43'),
(30, 28, 12, 179, '2025-12-14 17:57:47'),
(31, 28, 13, 181, '2025-12-14 17:57:50'),
(32, 28, 14, 183, '2025-12-14 17:58:21'),
(33, 28, 15, 189, '2025-12-14 17:58:38'),
(34, 28, 16, 194, '2025-12-14 17:58:42'),
(35, 28, 17, 198, '2025-12-14 17:58:45'),
(36, 28, 18, 204, '2025-12-14 17:58:49'),
(37, 28, 19, 207, '2025-12-14 17:58:51'),
(38, 28, 20, 211, '2025-12-14 17:58:56'),
(39, 29, 1, 2, '2025-12-14 17:59:58'),
(40, 29, 2, 13, '2025-12-14 18:00:08'),
(41, 29, 3, 17, '2025-12-14 18:00:09'),
(42, 29, 4, 24, '2025-12-14 18:00:11'),
(43, 29, 5, 30, '2025-12-14 18:00:12'),
(44, 29, 7, 33, '2025-12-14 18:00:13'),
(45, 29, 8, 36, '2025-12-14 18:00:14'),
(46, 29, 9, 42, '2025-12-14 18:00:15'),
(47, 29, 10, 48, '2025-12-14 18:00:16'),
(48, 30, 1, 2, '2025-12-14 18:47:14'),
(49, 30, 2, 13, '2025-12-14 18:47:14'),
(50, 30, 3, 19, '2025-12-14 18:47:15'),
(51, 30, 4, 23, '2025-12-14 18:47:16'),
(52, 30, 5, 27, '2025-12-14 18:47:16'),
(53, 30, 7, 33, '2025-12-14 18:47:17'),
(54, 30, 8, 37, '2025-12-14 18:47:17'),
(55, 30, 9, 43, '2025-12-14 18:47:18'),
(56, 30, 10, 47, '2025-12-14 18:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id`, `title`, `description`, `created_at`) VALUES
(1, 'Movies', 'BuzzFeed-style personality quiz based on movie preferences', '2025-12-14 19:17:32'),
(2, 'Cars', 'BuzzFeed-style personality quiz based on car preferences', '2025-12-14 19:17:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
