
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




DROP DATABASE IF EXISTS `authorsdb`;
CREATE DATABASE IF NOT EXISTS `authorsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `authorsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `authorstb`;
CREATE TABLE IF NOT EXISTS `authorstb` (
  `author_id` bigint(10) NOT NULL AUTO_INCREMENT,
  `author_fullname` varchar(50) DEFAULT '',
  `author_email` varchar(50) DEFAULT '',
  `author_address` mediumtext DEFAULT NULL,
  `author_biography` longtext DEFAULT NULL,
  `author_date of birth` datetime DEFAULT current_timestamp(),
  `author_suspended`boolean DEFAULT NULL,
  `date_read` datetime DEFAULT current_timestamp(),
  `date_created` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

TRUNCATE TABLE `authorstb`;COMMIT;