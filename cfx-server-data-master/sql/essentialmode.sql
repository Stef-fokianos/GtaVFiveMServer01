-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 04 Ιουλ 2020 στις 21:30:58
-- Έκδοση διακομιστή: 10.4.13-MariaDB
-- Έκδοση PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `essentialmode`
--

DELIMITER $$
--
-- Διαδικασίες
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ADD_COLUMN_IF_NOT_EXISTS` (IN `dbName` TINYTEXT, IN `tableName` TINYTEXT, IN `fieldName` TINYTEXT, IN `fieldDef` TEXT)  BEGIN
  IF NOT EXISTS (
    SELECT * FROM information_schema.COLUMNS
    WHERE `column_name`  = fieldName
    AND   `table_name`   = tableName
    AND   `table_schema` = dbName
  )
  THEN
    SET @ddl=CONCAT('ALTER TABLE ', dbName, '.', tableName, ' ADD COLUMN ', fieldName, ' ', fieldDef);
    PREPARE stmt from @ddl;
    EXECUTE stmt;
  END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `accounts`
--

CREATE TABLE `accounts` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `datastores`
--

CREATE TABLE `datastores` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `inventories`
--

CREATE TABLE `inventories` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `items` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `inventories`
--

INSERT INTO `inventories` (`name`, `owner`, `items`) VALUES
('test', NULL, '\"something\"');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `items`
--

CREATE TABLE `items` (
  `name` varchar(64) NOT NULL,
  `label` varchar(64) NOT NULL,
  `weight` int(11) NOT NULL,
  `rare` int(11) NOT NULL,
  `can_remove` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(64) NOT NULL,
  `label` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `jobs`
--

INSERT INTO `jobs` (`name`, `label`) VALUES
('unemployed', 'Unemployed');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(32) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `label` varchar(64) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `last` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `migrations`
--

INSERT INTO `migrations` (`id`, `module`, `last`) VALUES
(1, 'skin', 0),
(2, 'society', 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(64) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(32) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `is_dead` int(11) DEFAULT 0,
  `last_name` varchar(32) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `is_male` int(11) DEFAULT 1,
  `accessories` mediumtext DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `skin` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`identifier`, `name`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `is_dead`, `last_name`, `dob`, `is_male`, `accessories`, `first_name`, `skin`) VALUES
('0406b934112baba1dfcb10bdb712c3005a6ebcf3', 'Stef05', '{\"bank\":5000,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, '[]', '{\"heading\":156.8,\"z\":31.3,\"y\":6424.1,\"x\":-116.4}', 0, NULL, NULL, 1, '{}', NULL, NULL);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`name`);

--
-- Ευρετήρια για πίνακα `datastores`
--
ALTER TABLE `datastores`
  ADD PRIMARY KEY (`name`);

--
-- Ευρετήρια για πίνακα `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`name`);

--
-- Ευρετήρια για πίνακα `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Ευρετήρια για πίνακα `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Ευρετήρια για πίνακα `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT για πίνακα `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
