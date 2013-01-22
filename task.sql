-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 02 2012 г., 11:55
-- Версия сервера: 5.5.28
-- Версия PHP: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
  `login` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `phone` text NOT NULL,
  `pin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin_info`
--

INSERT INTO `admin_info` (`login`, `country`, `city`, `phone`, `pin`) VALUES
('Admin', 'Russia', 'Saint-Petersburg', '555-88-99', '0500 0501 0502 0503 0504');

-- --------------------------------------------------------

--
-- Структура таблицы `client_info`
--

CREATE TABLE IF NOT EXISTS `client_info` (
  `login` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `phone` text NOT NULL,
  `pin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `client_info`
--

INSERT INTO `client_info` (`login`, `country`, `city`, `phone`, `pin`) VALUES
('Vasya', 'Russia', 'Moscow', '333-12-34', '3770 9771 9772 9773 9774'),
('HaX0r', 'Ireland', 'Dublin', '897-55-99', '2375 2376 2377 2378 2379');

-- --------------------------------------------------------

--
-- Структура таблицы `guest_info`
--

CREATE TABLE IF NOT EXISTS `guest_info` (
  `login` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `phone` text NOT NULL,
  `pin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `guest_info`
--

INSERT INTO `guest_info` (`login`, `country`, `city`, `phone`, `pin`) VALUES
('Petya', 'Internet', 'noooooo', '313-37-00', '6365 6366 6367 6368 6369');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `login` text NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`login`, `password`, `status`) VALUES
('Admin', '202cb962ac59075b964b07152d234b70', 'admin'),
('Vasya', 'f3abb86bd34cf4d52698f14c0da1dc60', 'client'),
('HaX0r', 'baa7a52965b99778f38ef37f235e9053', 'client'),
('Petya', '37f62f1363b04df4370753037853fe88', 'guest');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
