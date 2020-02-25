-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 25 2020 г., 22:16
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_xml`
--

-- --------------------------------------------------------

--
-- Структура таблицы `movie`
--

CREATE TABLE `movie` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `year` int(4) NOT NULL,
  `rating` float(3,1) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `category_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `movie`
--

INSERT INTO `movie` (`id`, `name`, `descriptions`, `year`, `rating`, `poster`, `date`, `category_id`) VALUES
(1, 'Джой', 'Joy', 2015, 0.0, 'http://c.cinemate.cc/media/m/4/5/154054/0.big.jpg', '2020-02-25', 1),
(2, 'Лазурный берег', 'By the Sea', 2015, 0.0, 'http://c.cinemate.cc/media/m/3/1/159513/0.big.jpg', '2020-02-25', 1),
(3, 'Сотрясение', 'Concussion', 2015, 0.0, 'http://c.cinemate.cc/media/m/9/4/157449/0.big.jpg', '2020-02-25', 1),
(4, 'Кукла', 'The Boy', 2015, 5.7, 'http://c.cinemate.cc/media/m/7/6/159067/0.big.jpg', '2020-02-25', 1),
(5, 'И грянул шторм', 'The Finest Hours', 2015, 0.0, 'http://c.cinemate.cc/media/m/8/9/159198/0_1.big.jpg', '2020-02-25', 1),
(6, 'Дочь Бога', 'Daughter of God', 2015, 0.0, 'http://c.cinemate.cc/media/m/2/7/159272/0.big.jpg', '2020-02-25', 1),
(7, 'Девушка из Дании', 'The Danish Girl', 2015, 5.4, 'http://c.cinemate.cc/media/m/8/8/159788/0.big.jpg', '2020-02-25', 1),
(8, 'Выживший', 'The Revenant', 2015, 0.0, 'http://c.cinemate.cc/media/m/0/9/155290/0.big.jpg', '2020-02-25', 1),
(9, 'Сестры', 'Sisters', 2015, 0.0, 'http://c.cinemate.cc/media/m/0/1/153610/0_1.big.jpg', '2020-02-25', 1),
(10, 'Крид', 'Creed', 2015, 0.0, 'http://c.cinemate.cc/media/m/5/7/157775/0_qHqshz3.big.jpg', '2020-02-25', 1),
(11, 'Элвин и бурундуки 4', 'Alvin and the Chipmunks: The Road Chip', 2015, 0.0, 'http://c.cinemate.cc/media/m/5/7/137475/0.big.jpg', '2020-02-25', 1),
(12, 'Стив Джобс', 'Steve Jobs', 2015, 6.4, 'http://c.cinemate.cc/media/m/1/7/157771/0_RfDTyDZ.big.jpg', '2020-02-25', 1),
(13, 'Крампус', 'Krampus', 2015, 0.0, 'http://c.cinemate.cc/media/m/3/7/157773/0.big.jpg', '2020-02-25', 1),
(14, 'На гребне волны', 'Point Break', 2015, 0.0, 'http://c.cinemate.cc/media/m/6/0/155006/0.big.jpg', '2020-02-25', 1),
(15, 'Декиру: Магические камни', 'Dekiru: The Three Stones', 2015, 0.0, 'http://c.cinemate.cc/media/m/5/8/159885/0.big.jpg', '2020-02-25', 1),
(16, 'Зачинщики', 'Masterminds', 2015, 0.0, 'http://c.cinemate.cc/media/m/5/3/153535/0.big.jpg', '2020-02-25', 1),
(17, 'Любите Куперов', 'Love the Coopers', 2015, 0.0, 'http://c.cinemate.cc/media/m/2/6/159062/0.big.jpg', '2020-02-25', 1),
(18, 'Звёздные войны: Пробуждение силы', 'Star Wars: Episode VII - The Force Awakens', 2015, 0.0, 'http://c.cinemate.cc/media/m/6/8/120786/0.big.jpg', '2020-02-25', 1),
(19, 'Рождество', 'X-Mas', 2015, 0.0, 'http://c.cinemate.cc/media/m/7/3/156737/0.big.jpg', '2020-02-25', 1),
(20, 'Утешение', 'Solace', 2015, 6.4, 'http://c.cinemate.cc/media/m/2/6/157762/0.big.jpg', '2020-02-25', 1),
(21, 'В сердце моря', 'In the Heart of the Sea', 2015, 0.0, 'http://c.cinemate.cc/media/m/6/9/154996/0.big.jpg', '2020-02-25', 1),
(22, 'Шпионский мост', 'Bridge of Spies', 2015, 8.3, 'http://c.cinemate.cc/media/m/0/1/155010/0.big.jpg', '2020-02-25', 1),
(23, 'Ужастики', 'Goosebumps', 2015, 7.3, 'http://c.cinemate.cc/media/m/4/8/155284/0_VvqPtmT.big.jpg', '2020-02-25', 1),
(24, 'Хороший динозавр', 'The Good Dinosaur', 2015, 0.0, 'http://c.cinemate.cc/media/m/4/7/137474/0.big.jpg', '2020-02-25', 1),
(25, 'Наёмница', 'Sicario', 2015, 8.0, 'http://c.cinemate.cc/media/m/1/2/158621/0.big.jpg', '2020-02-25', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
