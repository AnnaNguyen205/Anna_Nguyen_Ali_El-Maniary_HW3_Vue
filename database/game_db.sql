-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2025 at 02:56 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `description` text,
  `game_img` varchar(255) DEFAULT NULL,
  `studio_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `genre`, `release_year`, `description`, `game_img`, `studio_id`, `created_at`, `updated_at`) VALUES
(1, 'League of Legends', 'MOBA', 2009, 'A team-based strategy game where two teams of five champions face off to destroy the enemy base.', 'leagueoflegends.jpg', 1, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(2, 'Valorant', 'FPS', 2020, 'A tactical shooter with unique agents and abilities.', 'valorant.jpg', 1, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(3, 'Teamfight Tactics', 'Auto Battler', 2019, 'A strategy-based auto battler game set in the League of Legends universe.', 'teamfighttactics.jpg', 1, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(4, 'Fortnite', 'Battle Royale', 2017, 'A battle royale game featuring building mechanics and creative modes.', 'fortnite.jpg', 2, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(5, 'Unreal Tournament', 'FPS', 1999, 'A fast-paced multiplayer FPS game.', 'unrealtournament.jpg', 2, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(6, 'Marvel Rivals', 'Hero Shooter', 2024, 'A superhero-based team shooter featuring Marvel characters.', 'marvelrivals.jpg', 3, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(7, 'PUBG', 'Battle Royale', 2017, 'A realistic battle royale shooter with 100 players competing for survival.', 'pubg.jpg', 4, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(8, 'Call of Duty', 'FPS', 2003, 'A military shooter franchise featuring various war scenarios.', 'callofduty.jpg', 5, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(9, 'Call of Duty: Warzone', 'Battle Royale', 2020, 'A free-to-play battle royale mode in the Call of Duty universe.', 'warzone.jpg', 5, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(10, 'Rocket League', 'Sports', 2015, 'A high-powered hybrid of arcade soccer and vehicular mayhem.', 'rocketleague.jpg', 6, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(11, 'Overwatch 2', 'Hero Shooter', 2022, 'A team-based multiplayer shooter featuring unique heroes with abilities.', 'overwatch2.jpg', 7, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(12, 'Diablo IV', 'Action RPG', 2023, 'An action RPG set in the dark fantasy world of Sanctuary.', 'diablo4.jpg', 7, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(13, 'FIFA', 'Sports', 1993, 'A football simulation game featuring real teams and leagues.', 'fifa.jpg', 8, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(14, 'Madden NFL', 'Sports', 1988, 'An American football simulation game licensed by the NFL.', 'maddennfl.jpg', 8, '2025-03-28 16:12:43', '2025-03-28 16:12:43'),
(15, 'The Sims', 'Life Simulation', 2000, 'A life simulation game where players control virtual characters.', 'thesims.jpg', 8, '2025-03-28 16:12:43', '2025-03-28 16:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `headquarters` varchar(255) DEFAULT NULL,
  `founded_year` int DEFAULT NULL,
  `studio_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studios`
--

INSERT INTO `studios` (`id`, `name`, `headquarters`, `founded_year`, `studio_img`, `created_at`, `updated_at`) VALUES
(1, 'Riot Games', 'Los Angeles, USA', 2006, 'riotgames.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04'),
(2, 'Epic Games', 'Cary, USA', 1991, 'epicgames.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04'),
(3, 'NetEase', 'Hangzhou, China', 1997, 'netease.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04'),
(4, 'Krafton', 'Seongnam, South Korea', 2007, 'krafton.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04'),
(5, 'Activision', 'Santa Monica, USA', 1979, 'activision.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04'),
(6, 'Psyonix', 'San Diego, USA', 2000, 'psyonix.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04'),
(7, 'Blizzard Entertainment', 'Irvine, USA', 1991, 'blizzard.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04'),
(8, 'Electronic Arts', 'Redwood City, USA', 1982, 'ea.jpg', '2025-03-28 16:13:04', '2025-03-28 16:13:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studio_id` (`studio_id`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `studios`
--
ALTER TABLE `studios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
