-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 04 2014 г., 17:06
-- Версия сервера: 5.5.40
-- Версия PHP: 5.4.4-14+deb7u14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `filmmaking`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id`, `surname`, `name`, `birthday`) VALUES
(1, 'Green', 'Eva', '1980-07-06'),
(2, 'Willis', 'Bruce', '1955-03-19'),
(3, 'Gordon-Levitt', 'Joseph', '1981-02-17'),
(4, 'Depp', 'John', '1963-06-09'),
(5, 'Rourke', 'Mickey', '1952-09-16'),
(6, 'Schwarzenegger', 'Arnold', '1947-07-30'),
(7, 'Weaver', 'Sigourney', '1949-10-08'),
(8, 'Keitel', 'Harvey', '1939-05-13'),
(9, 'Roth', 'Tim', '1961-05-14'),
(10, 'Bale', 'Cristian', '1974-01-30'),
(11, 'Oldman', 'Gary', '1958-03-21'),
(12, 'Cotillard', 'Marion', '1975-11-30'),
(13, 'Portman', 'Natalie', '1981-06-09'),
(14, 'Thurman', 'Uma', '1970-04-29'),
(15, 'DiCaprio', 'Leonardo', '1974-11-11'),
(16, 'Murphy', 'Eddie', '1961-04-03'),
(17, 'Murphy', 'Cillian', '1976-05-25'),
(18, 'Silverstone', 'Benjamin', '1979-04-09'),
(19, 'Silverstone', 'Alicia', '1976-10-04'),
(20, 'Keaton', 'Diane', '1946-01-05'),
(21, 'Keaton', 'Michael', '1951-09-05'),
(22, 'Arquette', 'David', '1971-09-08'),
(23, 'Arquette', 'Lewis', '1935-12-14');

-- --------------------------------------------------------

--
-- Структура таблицы `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `directors`
--

INSERT INTO `directors` (`id`, `surname`, `name`, `birthday`) VALUES
(1, 'Miller', 'Frank', '1980-07-06'),
(2, 'Rodriguez', 'Robert', '1968-06-20'),
(3, 'McTiernan', 'John', '1951-01-08'),
(4, 'Cameron', 'James', '1954-08-16'),
(6, 'Tarantino', 'Quentin', '1963-03-27'),
(7, 'Nolan', 'Jonathan', '1976-06-06'),
(8, 'Scorsese', 'Martin', '1942-11-17'),
(9, 'Besson', 'Luc', '1959-03-18'),
(10, 'Dahan', 'Olivier', '1967-07-26'),
(11, 'Aronofsky', 'Darren', '1969-02-12'),
(12, 'Hughes', 'Allen', '1972-04-01'),
(13, 'Hughes', 'Albert', '1972-04-01'),
(14, 'Niccol', 'Andrew', '1964-06-10'),
(15, 'Nolan', 'Christopher', '1970-07-30'),
(16, 'Zwick', 'Edward', '1952-10-08');

-- --------------------------------------------------------

--
-- Структура таблицы `directors_movies`
--

CREATE TABLE `directors_movies` (
  `director_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  KEY `director_id` (`director_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `directors_movies`
--

INSERT INTO `directors_movies` (`director_id`, `movie_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(4, 4),
(6, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(11, 12),
(12, 13),
(13, 13),
(14, 14),
(15, 15),
(8, 16),
(16, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `filmstudios`
--

CREATE TABLE `filmstudios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `founded` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `filmstudios`
--

INSERT INTO `filmstudios` (`id`, `title`, `founded`) VALUES
(1, 'Dimension Films', 1992),
(2, 'Troublemaker Studios', 1991),
(3, 'Miramax Films', 1979),
(4, 'The Weinstein Company', 2005),
(5, '20th Century Fox Film', 1935),
(6, 'Jersey Films', NULL),
(7, 'Saturn Films', NULL),
(8, 'Phoenix Pictures', 1990),
(9, 'Cross Creek Pictures', 2010),
(10, 'Légende Films', NULL),
(11, 'Gaumont', 0000),
(12, 'Legendary Pictures', 2000),
(13, 'Live Entertaiment', 1988),
(14, 'Dune Entertainment', NULL),
(15, 'StudioChanel', 1998),
(16, 'Lightstorm Entertainment', 1990),
(17, 'Carolco Pictures', 1976),
(18, 'Warner Bros. Entertainment Inc.', 1923);

-- --------------------------------------------------------

--
-- Структура таблицы `filmstudios_movies`
--

CREATE TABLE `filmstudios_movies` (
  `filmstudio_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  KEY `filmstudio_id` (`filmstudio_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `filmstudios_movies`
--

INSERT INTO `filmstudios_movies` (`filmstudio_id`, `movie_id`) VALUES
(2, 1),
(3, 1),
(1, 1),
(5, 13),
(6, 14),
(7, 12),
(8, 11),
(9, 11),
(14, 11),
(10, 10),
(11, 9),
(12, 7),
(13, 6),
(3, 5),
(16, 4),
(14, 4),
(17, 3),
(16, 3),
(15, 3),
(5, 2),
(18, 8),
(18, 15),
(18, 16),
(5, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `created` year(4) DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL,
  `box_office` decimal(13,2) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `movies`
--

INSERT INTO `movies` (`id`, `title`, `director`, `created`, `budget`, `box_office`, `duration`) VALUES
(1, 'Sin City: A Dame to Kill For', 'Frank Miller, Robert Anthony Rodriguez', 2000, 62000000.00, 38000000.00, '01:42:00'),
(2, 'Die Hard', 'John McTiernan', 1988, 28000000.00, 140700000.00, '02:12:00'),
(3, 'Terminator 2: Judgment Day', 'James Cameron', 1991, 102000000.00, 519843345.00, '02:12:00'),
(4, 'Avatar', 'James Cameron', 2009, 237000000.00, 2787965087.00, '02:41:00'),
(5, 'Pulp Fiction', 'Quentin Tarantino', 1994, 8500000.00, 213928762.00, '02:34:00'),
(6, 'Reservoir Dogs', 'Quentin Tarantino', 1992, 1200000.00, 4000000.00, '01:39:00'),
(7, 'The Dark Knight Rises', 'Jonathan Nolan', 2012, 230000000.00, 1080000000.00, '02:45:00'),
(8, 'Aviator', '	Martin Scorsese', 2004, 110000000.00, 213741459.00, '02:50:00'),
(9, 'The Fifth Element', 'Luc Besson', 1997, 90000000.00, 263920180.00, '02:06:00'),
(10, 'La Vie en Rose', 'Olivier Dahan', 2007, 25000000.00, 86274793.00, '02:20:00'),
(11, 'Black Swan', 'Darren Aronofsky', 2010, 13000000.00, 329398046.00, '01:48:00'),
(12, 'The Wrestler', 'Darren Aronofsky', 2008, 6000000.00, 44703995.00, '01:49:00'),
(13, 'From Hell', 'Albert Hughes, Allen Hughes', 2001, 35000000.00, 74558115.00, '02:02:00'),
(14, 'Gattaca', 'Andrew Niccol', 1997, 36000000.00, 12532777.00, '01:46:00'),
(15, 'Inception', '	Christopher Nolan', 2010, 160000000.00, 825500000.00, '02:28:00'),
(16, 'The Departed', 'Martin Scorsese', 2006, 90000000.00, 289847354.00, '02:31:00'),
(17, 'The Siege', 'Edward Zwick', 1998, 70000000.00, 116672912.00, '01:56:00');

-- --------------------------------------------------------

--
-- Структура таблицы `movies_actors`
--

CREATE TABLE `movies_actors` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL DEFAULT '0',
  `fee` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `movies_actors`
--

INSERT INTO `movies_actors` (`movie_id`, `actor_id`, `fee`) VALUES
(1, 1, 1250000),
(1, 2, 2000000),
(1, 3, 413578),
(1, 5, 909000),
(2, 2, 243000),
(3, 6, 1017000),
(4, 7, 1108000),
(5, 8, 261000),
(5, 9, 233000),
(5, 14, 114000),
(6, 8, 111000),
(7, 3, 789000),
(7, 10, 1137000),
(7, 11, 2009000),
(7, 12, 1999999),
(8, 15, 2000000),
(9, 2, 873513),
(9, 11, 999000),
(10, 12, 2000000),
(11, 13, 3909000),
(12, 5, 4213678),
(13, 4, 819000),
(14, 14, 316005),
(15, 15, 3000000),
(16, 15, 4000000),
(17, 2, 1456789);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `directors_movies`
--
ALTER TABLE `directors_movies`
  ADD CONSTRAINT `directors_movies_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`),
  ADD CONSTRAINT `directors_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Ограничения внешнего ключа таблицы `filmstudios_movies`
--
ALTER TABLE `filmstudios_movies`
  ADD CONSTRAINT `filmstudios_movies_ibfk_1` FOREIGN KEY (`filmstudio_id`) REFERENCES `filmstudios` (`id`),
  ADD CONSTRAINT `filmstudios_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Ограничения внешнего ключа таблицы `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
