-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Час створення: Лип 30 2019 р., 18:15
-- Версія сервера: 10.3.16-MariaDB
-- Версія PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `id10307754_crudhotdog`
--
CREATE DATABASE IF NOT EXISTS `id10307754_crudhotdog` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id10307754_crudhotdog`;

-- --------------------------------------------------------

--
-- Структура таблиці `hotdogs`
--

CREATE TABLE `hotdogs` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bun` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sausage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vegetables` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sauce` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `hotdogs`
--

INSERT INTO `hotdogs` (`id`, `name`, `bun`, `sausage`, `vegetables`, `sauce`) VALUES
(8, 'Dtzqq', 'Dts', 'Dts', 'Dta', 'Navi'),
(11, 'ggg', 'ggg', 'ggg', 'eee', 'ggg1'),
(12, 'new', '1', '2', '1', '1');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `hotdogs`
--
ALTER TABLE `hotdogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `hotdogs`
--
ALTER TABLE `hotdogs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
