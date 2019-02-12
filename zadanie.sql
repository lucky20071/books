-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2019 г., 16:03
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `zadanie`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`, `description`, `author_id`) VALUES
(1, 'А.С. Пушкин', 'Александр Пушкин родился в обедневшей дворянской семье 6 июня 1799 года. В раннем детстве он был молчаливым и малоподвижным ребенком — старшая сестра Ольга вспоминала, что до шести лет мальчик «был просто увалень». Начальное образование Пушкин получил дома. Воспитание его ничем не отличалось от общепринятой тогда в дворянских семьях системы: родители нанимали ему гувернеров и учителей из Франции, Германии, Англии, России.  Учеба давалась Пушкину тяжело, а преподаватели отмечали, что он не прилежен. Однако вскоре мальчик увлекся чтением. «Проводил бессонные ночи и тайком в кабинете отца пожирал книги одну за другой», — вспоминал позже его младший брат Лев.', 1),
(2, 'Лермонтов', 'Михаил Юрьевич Лермонтов родился ночью со 2 на 3 октября (15 октября по новому стилю) 1814 года в доме напротив площади Красных Ворот — той самой, где сегодня стоит самый известный в России памятник поэту.  Матери Лермонтова на тот момент не было и семнадцати, а отец имел репутацию привлекательного, но легкомысленного человека. Настоящая власть в семье была в руках бабушки поэта — Елизаветы Арсеньевой. Именно она настояла, чтобы мальчика назвали не Петром, как того хотел отец, а Михаилом.', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `author_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `book_name`, `author_name`, `descr`, `author_id`) VALUES
(1, 'Я помню чудное мгновение', 'А.С. Пушкин', 'Короткое произведение является образцом поэтического признания в любви. Всего в нескольких строфах Пушкин разворачивает перед читателем долгую историю взаимоотношений с Керн. Выражение «гений чистой красоты» очень емко характеризует восторженное преклонение перед женщиной. Поэт влюбился с первого взгляда, но Керн во время первой встречи была замужем и не могла ответить на ухаживания поэта. Образ прекрасной женщины преследует автора. Но судьба на несколько лет разлучает Пушкина с Керн. Эти бурные годы стирают из памяти поэта «милые черты».', 1),
(2, 'Я вас любил, любовь еще, быть может', 'А.С. Пушкин', 'Стихотворение является образцом художественного описания неразделенной любви. Пушкин рассказывает о ней в прошедшем времени. Годы не смогли полностью изгладить из памяти восторженное сильное чувство. Оно до сих пор дает о себе знать («любовь… угасла не совсем»). Когда-то она причиняла поэту невыносимые страдания, сменяясь «то робостью, то ревностью». Постепенно пожар в груди угас, остались лишь тлеющие угольки.  Можно предположить, что в свое время ухаживания Пушкина были довольно настойчивыми. В настоящий момент он словно извиняется перед бывшей возлюбленной и уверяет, что теперь она может быть спокойна. В подкрепление своих слов он добавляет, что остатки былого чувства перешли в дружбу. Поэт искренно желает женщине найти свой идеал мужчины, который будет любить ее так же сильно и нежно.', 1),
(3, 'Талисман', 'А.С. Пушкин', 'Пушкин скрывал свою связь с Воронцовой, которая была замужем. Поэтому в стихотворении он аллегорически излагает историю его получения. Автор утверждает, что это – подарок восточной «волшебницы». Упоминаемое море и «пустынные скалы» могли быть намеком для человека, близко знакомого с личной жизнью Пушкина.  Автор не скрывает своих интимных отношений с таинственной волшебницей. Она ласкает его, называет «милым другом». Свой подарок она наделяет волшебной силой. В перечисляемых возможных бедах просматривается связь с судьбой самого поэта. «Грозный ураган» можно сравнить с царской опалой, которая теперь постоянно висела над головой Пушкина. «Печальные чуждые страны» — прямое указание поэта на свою южную ссылку. Волшебница говорит, что от этих несчастий, а также от многого другого, ее талисман уберечь не сможет. Судьба лирического героя в его руках. Главное предназначение подарка – уберечь возлюбленного «от сердечных новых ран» и «от измены». Талисман всегда будет служить напоминанием о той, которая бесконечно любит поэта и всегда ждет его возвращения.', 1),
(4, 'Нет, не тебя так пылко я люблю', 'Лермонтов', 'Стихотворение относится к чистой любовной лирике. Оно проникнуто очень печальным и трагическим настроением. Утверждают, что Е. Быховец была очень похожа на Лопухину, поэтому Лермонтов видел в ней свою возлюбленную и решился на очень откровенный разговор. Признавая невероятную красоту молодой девушки, поэт с сожалением восклицает, что его сердце принадлежит другой. Он считает, что его молодость и мечты давно погибли, но получили временное воскрешение при взгляде на собеседницу.  Разговаривая с Е. Быховец, Лермонтов не может избавиться от воспоминаний о любимой. Внешнее сходство девушек приводит к тому, что поэт занят «таинственным разговором» с мысленным образом Лопухиной.', 2),
(5, 'Я не унижусь пред тобою', 'Лермонтов', 'Стихотворение «К* (Я не унижусь пред тобою…)» посвящено одному из первых любовных разочарований Лермонтова. Современники не догадывались, кому оно было в действительности посвящено. Лишь значительно позднее исследователи установили, что таинственная возлюбленная – Н. Иванова. Молодой поэт познакомился с ней в 1830 г. и быстро влюбился. Неизвестно, как девушка ответила на его чувства, но Лермонтов, вероятно, считал, что может надеяться на взаимность. Встречаясь с Ивановой только на балах, поэт постепенно понял, что был одним из многочисленных поклонников ветреной красавицы. Между молодыми людьми произошел решительный разговор, после чего всякие отношения прекратились. В 1832 г. Лермонтов сумел беспристрастно взглянуть на неудавшийся роман. Свои впечатления он выразил в стихотворении «К* (Я не унижусь пред тобою…)».', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$LpE39mUkRefJhxSUMzVmPuA8CqRcEie5P5o.tFgp1J0H3c/859ol.', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
