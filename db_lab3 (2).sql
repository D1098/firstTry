-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 11 2021 г., 11:50
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_lab3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `детали оплаты`
--

CREATE TABLE `детали оплаты` (
  `ID владельца` int(10) UNSIGNED NOT NULL,
  `Имя держателя карты` varchar(70) NOT NULL,
  `Данные карты` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `детали оплаты`
--

INSERT INTO `детали оплаты` (`ID владельца`, `Имя держателя карты`, `Данные карты`) VALUES
(0, 'Иванов Иван Иванович', 'XXXX-XXXX-XXXX-XXXX\r\nCVC: XXX'),
(1, 'Алешин Егор Романович', 'XXXX-XXXX-XXXX-XXXX\r\nCVC: XXX');

-- --------------------------------------------------------

--
-- Структура таблицы `клиент`
--

CREATE TABLE `клиент` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ФИО` varchar(70) NOT NULL,
  `Номер телефона` tinytext NOT NULL,
  `Информация о компании` text NOT NULL,
  `Пароль (hash?)` varchar(255) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Платежная информация` tinytext NOT NULL,
  `Доп. информация` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `клиент`
--

INSERT INTO `клиент` (`ID`, `ФИО`, `Номер телефона`, `Информация о компании`, `Пароль (hash?)`, `Email`, `Платежная информация`, `Доп. информация`) VALUES
(0, 'Иванов Иван Иванович', '+8(985)776-32-32', 'Какая-то информация', '$2y$10$IsKepAY7/PS0HIodb47jfOEZ7luZjMceE/3riHvoNFqz3P3o9.qq.', 'IvanIvanov@gmail.com', 'Номер карты: XXXX-XXXX-XXXX-XXXX\r\nИмя Владельца: IVAN IVANOV\r\nCVC: xxx', 'Какая-нибудь информация'),
(1, 'Алешин Егор Романович', '+7(495)732-88-39', '...', 'Пароль1234', 'Petr@gmail.com', '...', '...'),
(2, 'Архипов Кирилл Артемьевич', '+7(495)439-97-42', '...', 'gfhjkm5436', 'Kiril@gmail.com', '...', '...'),
(3, 'Воробьева Ульяна Руслановна', '+7(495)050-93-69', '...', 'grgwbegj21t@', 'Ulya334@mail.ru', '...', '...'),
(4, 'Григорьев Глеб Михайлович', '7(495)348-42-98', '...', 'efengbvz342', 'GlEb000@gmail.com', '...', '...'),
(5, 'Гришина Анна Вячеславовна', '7(495)193-80-51', '...', '', 'AnnaG@gmail.com', '...', '...'),
(6, 'Дегтярев Сергей Максимович', '+7(495)277-02-00', '...', 'fgwbes23zr1', 'SerDeg@mail.ru', '...', '...'),
(7, 'Демидова Екатерина Алексеевна', '7(495)637-35-04', '...', 'gbrnhbds31@ed', 'everD13@gmail.com', '...', '...'),
(8, 'Егорова Анастасия Матвеевна', '7(495)531-66-30', '...', 'wgebvcw3U76', 'AEgorova33@gmail.com', '...', '...'),
(9, 'Ефремов Максим Степанович', '7(495)704-15-60', '...', '$2y$10$RE.j1bQyeTndG7yp0sRPQOm9GTU.kB48vxAoSrZQU/zKsSRkgAgIK', 'Maxx42_s@mail.ru', '...', '...'),
(10, 'Захарова Александра Всеволодовна', '7(495)034-23-88', '...', '$2y$10$18RqWb2Eq3x6tlcH.PCZg.mBZYOl3/rU6ob8QcmosAVQJ0guNBbeO', 'PointA213@gmail.com', '...', '...');

-- --------------------------------------------------------

--
-- Структура таблицы `помещение`
--

CREATE TABLE `помещение` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Вид` tinytext NOT NULL,
  `ID владельца` int(10) UNSIGNED NOT NULL,
  `Адрес` tinytext NOT NULL,
  `Описание` text NOT NULL,
  `Тарифы (???)` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `помещение`
--

INSERT INTO `помещение` (`ID`, `Вид`, `ID владельца`, `Адрес`, `Описание`, `Тарифы (???)`) VALUES
(0, 'Коворкинг', 0, 'г. Москва, ул. Улица, д. 22 корп. 4', 'Описание', '???'),
(1, 'Офис', 0, 'г. Москва, ул. Седьмая, д. 6, к. 2', '...', '???'),
(2, 'Коворкинг', 6, 'г. Санкт-Петербург, ул. Хрустальная, д. 21', '...', '???');

-- --------------------------------------------------------

--
-- Структура таблицы `помещение_тариф`
--

CREATE TABLE `помещение_тариф` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID помещения` int(10) UNSIGNED NOT NULL,
  `ID тарифа` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `помещение_тариф`
--

INSERT INTO `помещение_тариф` (`ID`, `ID помещения`, `ID тарифа`) VALUES
(1, 0, 1),
(2, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `заказ`
--

CREATE TABLE `заказ` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Общая стоимость` int(10) UNSIGNED NOT NULL,
  `ID помещения` int(10) UNSIGNED NOT NULL,
  `ID тарифа` int(10) UNSIGNED NOT NULL,
  `ID клиента` int(10) UNSIGNED NOT NULL,
  `Описание` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `заказ`
--

INSERT INTO `заказ` (`ID`, `Общая стоимость`, `ID помещения`, `ID тарифа`, `ID клиента`, `Описание`) VALUES
(0, 17400, 0, 1, 7, '...');

-- --------------------------------------------------------

--
-- Структура таблицы `услуга`
--

CREATE TABLE `услуга` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Описание` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `услуга`
--

INSERT INTO `услуга` (`ID`, `Описание`) VALUES
(1, 'Услуги Секретаря'),
(2, 'Пользование общей кухней'),
(3, 'Напитки'),
(4, 'Принтер'),
(6, 'Бесплатный Wifi');

-- --------------------------------------------------------

--
-- Структура таблицы `тариф`
--

CREATE TABLE `тариф` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Цена` int(10) UNSIGNED NOT NULL,
  `Место` tinytext NOT NULL,
  `Услуги (???)` int(11) NOT NULL,
  `Время аренды` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `тариф`
--

INSERT INTO `тариф` (`ID`, `Цена`, `Место`, `Услуги (???)`, `Время аренды`) VALUES
(1, 17400, 'Комната (4 рабочих места)', 0, '2021-12-03 00:00:00'),
(3, 599, 'Рабочий стол на день', 0, '2021-12-03 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `тариф_услуга`
--

CREATE TABLE `тариф_услуга` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ID тарифа` int(10) UNSIGNED NOT NULL,
  `ID услуги` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `тариф_услуга`
--

INSERT INTO `тариф_услуга` (`ID`, `ID тарифа`, `ID услуги`) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 3, 6),
(4, 1, 4),
(5, 3, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `детали оплаты`
--
ALTER TABLE `детали оплаты`
  ADD PRIMARY KEY (`ID владельца`);

--
-- Индексы таблицы `клиент`
--
ALTER TABLE `клиент`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `помещение`
--
ALTER TABLE `помещение`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID владельца` (`ID владельца`);

--
-- Индексы таблицы `помещение_тариф`
--
ALTER TABLE `помещение_тариф`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID помещения` (`ID помещения`),
  ADD KEY `ID тарифа` (`ID тарифа`);

--
-- Индексы таблицы `заказ`
--
ALTER TABLE `заказ`
  ADD KEY `ID клиента` (`ID клиента`),
  ADD KEY `ID помещения` (`ID помещения`),
  ADD KEY `ID тарифа` (`ID тарифа`);

--
-- Индексы таблицы `услуга`
--
ALTER TABLE `услуга`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `тариф`
--
ALTER TABLE `тариф`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Услуги (???)` (`Услуги (???)`);

--
-- Индексы таблицы `тариф_услуга`
--
ALTER TABLE `тариф_услуга`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID тарифа` (`ID тарифа`),
  ADD KEY `ID услуги` (`ID услуги`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `помещение_тариф`
--
ALTER TABLE `помещение_тариф`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `услуга`
--
ALTER TABLE `услуга`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `тариф`
--
ALTER TABLE `тариф`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `тариф_услуга`
--
ALTER TABLE `тариф_услуга`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `детали оплаты`
--
ALTER TABLE `детали оплаты`
  ADD CONSTRAINT `детали оплаты_ibfk_1` FOREIGN KEY (`ID владельца`) REFERENCES `клиент` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `помещение`
--
ALTER TABLE `помещение`
  ADD CONSTRAINT `помещение_ibfk_1` FOREIGN KEY (`ID владельца`) REFERENCES `клиент` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `помещение_тариф`
--
ALTER TABLE `помещение_тариф`
  ADD CONSTRAINT `помещение_тариф_ibfk_1` FOREIGN KEY (`ID помещения`) REFERENCES `помещение` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `помещение_тариф_ibfk_2` FOREIGN KEY (`ID тарифа`) REFERENCES `тариф` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `заказ`
--
ALTER TABLE `заказ`
  ADD CONSTRAINT `заказ_ibfk_1` FOREIGN KEY (`ID клиента`) REFERENCES `клиент` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `заказ_ibfk_2` FOREIGN KEY (`ID помещения`) REFERENCES `помещение` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `заказ_ibfk_3` FOREIGN KEY (`ID тарифа`) REFERENCES `тариф` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `тариф_услуга`
--
ALTER TABLE `тариф_услуга`
  ADD CONSTRAINT `тариф_услуга_ibfk_1` FOREIGN KEY (`ID тарифа`) REFERENCES `тариф` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `тариф_услуга_ibfk_2` FOREIGN KEY (`ID услуги`) REFERENCES `услуга` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
