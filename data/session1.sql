-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 16 2022 г., 20:35
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `session1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `agent`
--

CREATE TABLE `agent` (
  `ID` int(11) NOT NULL,
  `Title` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `AgentTypeID` int(11) NOT NULL,
  `Address` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `INN` varchar(12) NOT NULL,
  `KPP` varchar(9) DEFAULT NULL,
  `DirectorName` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Logo` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `agentpriorityhistory`
--

CREATE TABLE `agentpriorityhistory` (
  `ID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL,
  `ChangeDate` datetime(6) NOT NULL,
  `PriorityValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `agenttype`
--

CREATE TABLE `agenttype` (
  `ID` int(11) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dolshnosts`
--

CREATE TABLE `dolshnosts` (
  `idDolshnost` int(11) NOT NULL,
  `NameDolshnost` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dolshnosts`
--

INSERT INTO `dolshnosts` (`idDolshnost`, `NameDolshnost`) VALUES
(1, 'Продавец'),
(2, 'Администратор'),
(3, 'Старший смены');

-- --------------------------------------------------------

--
-- Структура таблицы `klients`
--

CREATE TABLE `klients` (
  `idKlient` int(11) NOT NULL,
  `FIO` text NOT NULL,
  `Pasport` text NOT NULL,
  `DateBitrth` date NOT NULL,
  `Adress` text NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klients`
--

INSERT INTO `klients` (`idKlient`, `FIO`, `Pasport`, `DateBitrth`, `Adress`, `Email`, `Password`) VALUES
(45462526, 'Фролов Андрей Иванович', 'Серия 1180 Номер 176596', '2001-07-14', '344288, г. Екатеринбург, ул. Чехова, 1, кв. 34', 'gohufreilagrau-3818@yopmail.com', 'cl12345'),
(45462527, 'Николаев Даниил Всеволодович', 'Серия 2280 Номер 223523', '2001-02-10', '614164, г. Екатеринбург, ул. Степная, 30, кв. 75', 'xawugosune-1385@yopmail.com', 'cl12346'),
(45462528, 'Снегирев Макар Иванович', 'Серия 4560 Номер 354155', '1998-05-21', '394242, г. Екатеринбург, ул. Коммунистическая, 43, кв. 57', 'satrahuddusei-4458@yopmail.com', 'cl12347'),
(45462529, 'Иванов Иван Ильич', 'Серия 9120 Номер 554296', '1998-10-01', '660540, г. Екатеринбург, ул. Солнечная, 25, кв. 78', 'boippaxeufrepra-7093@yopmail.com', 'cl12348'),
(45462530, 'Филиппова Анна Глебовна', 'Серия 2367 Номер 558134', '1976-05-31', '125837, г. Екатеринбург, ул. Шоссейная, 40, кв. 92', 'zapramaxesu-7741@yopmail.com', 'cl12349'),
(45462531, 'Иванов Михаил Владимирович', 'Серия 7101 Номер 669343', '1985-11-04', '125703, г. Екатеринбург, ул. Партизанская, 49, кв. 84', 'rouzecroummegre-3899@yopmail.com', 'cl12350'),
(45462532, 'Власов Дмитрий Александрович', 'Серия 3455 Номер 719630', '1998-08-17', '625283, г. Екатеринбург, ул. Победы, 46, кв. 7', 'ziyeuddocrabri-4748@yopmail.com', 'cl12351'),
(45462533, 'Серова Екатерина Львовна', 'Серия 2377 Номер 871623', '1984-10-24', '614611, г. Екатеринбург, ул. Молодежная, 50, кв. 78', 'ketameissoinnei-1951@yopmail.com', 'cl12352'),
(45462534, 'Борисова Ирина Ивановна', 'Серия 8755 Номер 921148', '1976-10-14', '454311, г. Екатеринбург, ул. Новая, 19, кв. 78', 'yipraubaponou-5849@yopmail.com', 'cl12353'),
(45462535, 'Зайцев Никита Артёмович', 'Серия 4355 Номер 104594', '1999-10-14', '660007, г. Екатеринбург, ул. Октябрьская, 19, кв. 42', 'crapedocouca-3572@yopmail.com', 'cl12354'),
(45462536, 'Медведев Святослав Евгеньевич', 'Серия 2791 Номер 114390', '1985-07-13', '603036, г. Екатеринбург, ул. Садовая, 4, кв. 13', 'ceigoixakaunni-9227@yopmail.com', 'cl12355'),
(45462537, 'Коротков Кирилл Алексеевич', 'Серия 5582 Номер 126286', '1976-05-26', '450983, г. Екатеринбург, ул. Комсомольская, 26, кв. 60', 'yeimmeiwauzomo-7054@yopmail.com', 'cl12356'),
(45462538, 'Калашникова Арина Максимовна', 'Серия 2978 Номер 133653', '1999-08-13', '394782, г. Екатеринбург, ул. Чехова, 3, кв. 14', 'poleifenevi-1560@yopmail.com', 'cl12357'),
(45462539, 'Минина Таисия Кирилловна', 'Серия 7512 Номер 141956', '1985-10-13', '603002, г. Екатеринбург, ул. Дзержинского, 28, кв. 56', 'kauprezofautei-6607@yopmail.com', 'cl12358'),
(45462540, 'Наумов Серафим Романович', 'Серия 5046 Номер 158433', '1999-04-15', '450558, г. Екатеринбург, ул. Набережная, 30, кв. 71', 'quaffaullelourei-1667@yopmail.com', 'cl12359'),
(45462541, 'Воробьева Василиса Евгеньевна', 'Серия 2460 Номер 169505', '1999-01-13', '394060, г. Екатеринбург, ул. Фрунзе, 43, кв. 79', 'jsteele@rojas-robinson.net', 'cl12360'),
(45462542, 'Калинин Александр Андреевич', 'Серия 3412 Номер 174593', '1999-01-07', '410661, г. Екатеринбург, ул. Школьная, 50, кв. 53', 'vhopkins@lewis-mullen.com', 'cl12361'),
(45462543, 'Кузнецова Милана Владиславовна', 'Серия 4950 Номер 183034', '1999-01-24', '625590, г. Екатеринбург, ул. Коммунистическая, 20, кв. 34', 'nlewis@yahoo.com', 'cl12362'),
(45462544, 'Фирсов Егор Романович', 'Серия 5829 Номер 219464', '1993-09-02', '625683, г. Екатеринбург, ул. 8 Марта, 20, кв. 21', 'garciadavid@mckinney-mcbride.com', 'cl12363'),
(45462545, 'Зимина Агния Александровна', 'Серия 6443 Номер 208059', '1998-09-03', '400562, г. Екатеринбург, ул. Зеленая, 32, кв. 67', 'cbradley@castro.com', 'cl12364'),
(45462546, 'Титов Андрей Глебович', 'Серия 7079 Номер 213265', '1985-10-23', '614510, г. Екатеринбург, ул. Маяковского, 47, кв. 72', 'cuevascatherine@carlson.biz', 'cl12365'),
(45462547, 'Орлов Николай Егорович', 'Серия 8207 Номер 522702', '1985-07-27', '410542, г. Екатеринбург, ул. Светлая, 46, кв. 82', 'thomasmoore@wilson-singh.net', 'cl12366'),
(45462548, 'Кузнецова Аиша Михайловна', 'Серия 9307 Номер 232158', '1998-10-04', '620839, г. Екатеринбург, ул. Цветочная, 8, кв. 100', 'jessica84@hotmail.com', 'cl12367'),
(45462549, 'Куликов Никита Георгиевич', 'Серия 1357 Номер 242839', '1999-04-23', '443890, г. Екатеринбург, ул. Коммунистическая, 1, кв. 10', 'jessicapark@hotmail.com', 'cl12368'),
(45462550, 'Карпова София Егоровна', 'Серия 1167 Номер 256636', '1993-10-01', '603379, г. Екатеринбург, ул. Спортивная, 46, кв. 95', 'ginaritter@schneider-buchanan.com', 'cl12369'),
(45462551, 'Смирнова Дарья Макаровна', 'Серия 1768 Номер 266986', '1976-03-22', '603721, г. Екатеринбург, ул. Гоголя, 41, кв. 57', 'stephen99@yahoo.com', 'cl12370'),
(45462552, 'Абрамова Александра Мироновна', 'Серия 1710 Номер 427875', '1999-03-26', '410172, г. Екатеринбург, ул. Северная, 13, кв. 86', 'lopezlisa@hotmail.com', 'cl12371'),
(45462553, 'Наумов Руслан Михайлович', 'Серия 1806 Номер 289145', '1999-10-11', '420151, г. Екатеринбург, ул. Вишневая, 32, кв. 81', 'lori17@hotmail.com', 'cl12372'),
(45462554, 'Бочаров Никита Матвеевич', 'Серия 1587 Номер 291249', '1997-06-29', '125061, г. Екатеринбург, ул. Подгорная, 8, кв. 74', 'campbellkevin@gardner.com', 'cl12373'),
(45462555, 'Соловьев Давид Ильич', 'Серия 1647 Номер 306372', '1984-03-06', '630370, г. Екатеринбург, ул. Шоссейная, 24, кв. 81', 'morganhoward@clark.com', 'cl12374'),
(45462556, 'Васильева Валерия Дмитриевна', 'Серия 1742 Номер 316556', '1999-09-30', '614753, г. Екатеринбург, ул. Полевая, 35, кв. 39', 'carsontamara@gmail.com', 'cl12375'),
(45462557, 'Макарова Василиса Андреевна', 'Серия 1474 Номер 326347', '1999-04-08', '426030, г. Екатеринбург, ул. Маяковского, 44, кв. 93', 'kevinpatel@gmail.com', 'cl12376'),
(45462558, 'Алексеев Матвей Викторович', 'Серия 1452 Номер 339539', '1998-08-02', '450375, г. Екатеринбург, ул. Клубная, 44, кв. 80', 'sethbishop@yahoo.com', 'cl12377'),
(45462559, 'Никитина Полина Александровна', 'Серия 2077 Номер 443480', '1976-09-19', '625560, г. Екатеринбург, ул. Некрасова, 12, кв. 66', 'drollins@schultz-soto.net', 'cl12378'),
(45462560, 'Окулова Олеся Алексеевна', 'Серия 2147 Номер 357518', '1999-04-03', '630201, г. Екатеринбург, ул. Комсомольская, 17, кв. 25', 'pblack@copeland-winters.org', 'cl12379'),
(45462561, 'Захарова Полина Яновна', 'Серия 2687 Номер 363884', '1976-04-21', '190949, г. Екатеринбург, ул. Мичурина, 26, кв. 93', 'johnathon.oberbrunner@yahoo.com', 'cl12380'),
(45462562, 'Зайцев Владимир Давидович', 'Серия 2376 Номер 443711', '1998-01-26', '350501, г. Екатеринбург, ул. Парковая, 2, кв. 7', 'bradly29@gmail.com', 'cl12381'),
(45462563, 'Иванов Виталий Даниилович', 'Серия 2568 Номер 386237', '1976-08-11', '450048, г. Екатеринбург, ул. Коммунистическая, 21, кв. 3', 'stark.cristina@hilpert.biz', 'cl12382'),
(45462564, 'Захаров Матвей Романович', 'Серия 2556 Номер 439376', '1993-07-12', '644921, г. Екатеринбург, ул. Школьная, 46, кв. 37', 'bruen.eleanore@yahoo.com', 'cl12383'),
(45462565, 'Иванов Степан Степанович', 'Серия 2737 Номер 407501', '1998-09-19', '614228, г. Екатеринбург, ул. Дорожная, 36, кв. 54', 'percival.halvorson@yahoo.com', 'cl12384'),
(45462566, 'Ткачева Милана Тимуровна', 'Серия 2581 Номер 441645', '1998-05-24', '350940, г. Екатеринбург, ул. Первомайская, 23, кв. 2', 'javonte71@kuhlman.biz', 'cl12385'),
(45462567, 'Семенов Даниил Иванович', 'Серия 2675 Номер 427933', '1976-01-04', '344990, г. Екатеринбург, ул. Красноармейская, 19, кв. 92', 'vconnelly@kautzer.com', 'cl12386'),
(45462568, 'Виноградов Вячеслав Дмитриевич', 'Серия 2967 Номер 434531', '1976-07-12', '410248, г. Екатеринбург, ул. Чкалова, 11, кв. 75', 'anabelle07@schultz.info', 'cl12387'),
(45462569, 'Соболева Николь Фёдоровна', 'Серия 3070 Номер 449655', '1976-05-02', '400839, г. Екатеринбург, ул. 8 Марта, 46, кв. 44', 'nitzsche.katlynn@yahoo.com', 'cl12388'),
(45462570, 'Тихонова Анна Львовна', 'Серия 3108 Номер 451174', '1985-03-23', '450539, г. Екатеринбург, ул. Заводская, 3, кв. 81', 'corine16@von.com', 'cl12389'),
(45462571, 'Кузнецова Ульяна Савельевна', 'Серия 3250 Номер 464705', '1999-06-03', '614591, г. Екатеринбург, ул. Цветочная, 20, кв. 40', 'otha.wisozk@lubowitz.org', 'cl12390'),
(45462572, 'Смирнова Анна Германовна', 'Серия 3392 Номер 471644', '1997-07-18', '400260, г. Екатеринбург, ул. Больничная, 30, кв. 53', 'may.kirlin@hotmail.com', 'cl12391'),
(45462573, 'Черепанова Анна Давидовна', 'Серия 3497 Номер 487819', '1985-11-06', '660924, г. Екатеринбург, ул. Молодежная, 32, кв. 59', 'bryana.kautzer@yahoo.com', 'cl12392'),
(45462574, 'Григорьев Максим Кириллович', 'Серия 3560 Номер 491260', '1999-05-26', '644133, г. Екатеринбург, ул. Гагарина, 28, кв. 69', 'deborah.christiansen@quigley.biz', 'cl12393'),
(45462575, 'Голубев Даниэль Александрович', 'Серия 3620 Номер 506034', '1999-06-14', '450698, г. Екатеринбург, ул. Вокзальная, 14, кв. 37', 'connelly.makayla@yahoo.com', 'cl12394'),
(45462576, 'Миронов Юрий Денисович', 'Серия 3774 Номер 511438', '1985-01-26', '620653, г. Екатеринбург, ул. Западная, 15, кв. 25', 'tatum.collins@fay.org', 'cl12395'),
(45462577, 'Терехов Михаил Андреевич', 'Серия 3862 Номер 521377', '1976-07-06', '644321, г. Екатеринбург, ул. Клубная, 32, кв. 10', 'itzel73@anderson.com', 'cl12396'),
(45462578, 'Орлова Алиса Михайловна', 'Серия 3084 Номер 535966', '1997-02-24', '603653, г. Екатеринбург, ул. Молодежная, 2, кв. 45', 'arjun39@hotmail.com', 'cl12397'),
(45462579, 'Кулаков Константин Даниилович', 'Серия 4021 Номер 541528', '1993-06-20', '410181, г. Екатеринбург, ул. Механизаторов, 16, кв. 74', 'ohara.rebeka@yahoo.com', 'cl12398'),
(45462580, 'Кудрявцев Максим Романович', 'Серия 4109 Номер 554053', '1998-05-10', '394207, г. Екатеринбург, ул. Свердлова, 31, кв. 28', 'danika58@rath.com', 'cl12399'),
(45462581, 'Соболева Кира Фёдоровна', 'Серия 4537 Номер 564868', '1998-03-14', '420633, г. Екатеринбург, ул. Матросова, 18, кв. 41', 'janae.bogan@gmail.com', 'cl12400'),
(45462582, 'Коновалов Арсений Максимович', 'Серия 4914 Номер 572471', '1985-02-18', '445720, г. Екатеринбург, ул. Матросова, 50, кв. 67', 'vern91@yahoo.com', 'cl12401'),
(45462583, 'Гусев Михаил Дмитриевич', 'Серия 4445 Номер 581302', '1999-11-23', '400646, г. Екатеринбург, ул. Октябрьская, 47, кв. 65', 'mariana.leannon@larkin.net', 'cl12402'),
(45462584, 'Суханова Варвара Матвеевна', 'Серия 4743 Номер 598180', '1993-09-13', '644410, г. Екатеринбург, ул. Красная, 17, кв. 69', 'vmoore@gmail.com', 'cl12403'),
(45462585, 'Орлова Ясмина Васильевна', 'Серия 4741 Номер 601821', '1984-06-24', '400750, г. Екатеринбург, ул. Школьная, 36, кв. 71', 'damon.mcclure@mills.com', 'cl12404'),
(45462586, 'Васильева Ксения Константиновна', 'Серия 4783 Номер 612567', '1999-08-01', '660590, г. Екатеринбург, ул. Дачная, 37, кв. 70', 'grady.reilly@block.com', 'cl12405'),
(45462587, 'Борисова Тамара Данииловна', 'Серия 4658 Номер 621200', '1993-05-29', '426083, г. Екатеринбург, ул. Механизаторов, 41, кв. 26', 'boyd.koss@yahoo.com', 'cl12406'),
(45462588, 'Дмитриев Мирон Ильич', 'Серия 4908 Номер 634613', '1985-04-13', '410569, г. Екатеринбург, ул. Парковая, 36, кв. 17', 'obartell@franecki.info', 'cl12407'),
(45462589, 'Лебедева Анна Александровна', 'Серия 5092 Номер 642468', '1985-03-30', '443375, г. Екатеринбург, ул. Дзержинского, 50, кв. 95', 'reina75@ferry.net', 'cl12408'),
(45462590, 'Пономарев Артём Маркович', 'Серия 5155 Номер 465274', '1984-06-02', '614316, г. Екатеринбург, ул. Первомайская, 48, кв. 31', 'karson28@hotmail.com', 'cl12409'),
(45462591, 'Борисова Елена Михайловна', 'Серия 5086 Номер 666893', '1976-05-23', '445685, г. Екатеринбург, ул. Зеленая, 7, кв. 47', 'damaris61@okon.com', 'cl12410'),
(45462592, 'Моисеев Камиль Максимович', 'Серия 5333 Номер 675375', '1999-06-17', '614505, г. Екатеринбург, ул. Нагорная, 37, кв. 31', 'carroll.jerod@hotmail.com', 'cl12411'),
(45462593, 'Герасимова Дарья Константиновна', 'Серия 5493 Номер 684572', '1984-10-13', '426629, г. Екатеринбург, ул. Весенняя, 32, кв. 46', 'ron.treutel@quitzon.com', 'cl12412'),
(45462594, 'Михайлова Мария Марковна', 'Серия 5150 Номер 696226', '1976-12-02', '603743, г. Екатеринбург, ул. Матросова, 19, кв. 20', 'olen79@yahoo.com', 'cl12413'),
(45462595, 'Коршунов Кирилл Максимович', 'Серия 1308 Номер 703305', '1985-05-22', '450750, г. Екатеринбург, ул. Клубная, 23, кв. 90', 'pacocha.robbie@yahoo.com', 'cl12414');

-- --------------------------------------------------------

--
-- Структура таблицы `material`
--

CREATE TABLE `material` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `CountInPack` int(11) NOT NULL,
  `Unit` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `CountInStock` double DEFAULT NULL,
  `MinCount` double NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Cost` decimal(10,2) NOT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `MaterialTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `materialcounthistory`
--

CREATE TABLE `materialcounthistory` (
  `ID` int(11) NOT NULL,
  `MaterialID` int(11) NOT NULL,
  `ChangeDate` datetime(6) NOT NULL,
  `CountValue` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `materialsupplier`
--

CREATE TABLE `materialsupplier` (
  `MaterialID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `materialtype`
--

CREATE TABLE `materialtype` (
  `ID` int(11) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `DefectedPercent` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `ProductTypeID` int(11) DEFAULT NULL,
  `ArticleNumber` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ProductionPersonCount` int(11) DEFAULT NULL,
  `ProductionWorkshopNumber` int(11) DEFAULT NULL,
  `MinCostForAgent` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `productcosthistory`
--

CREATE TABLE `productcosthistory` (
  `ID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ChangeDate` datetime(6) NOT NULL,
  `CostValue` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `productmaterial`
--

CREATE TABLE `productmaterial` (
  `ProductID` int(11) NOT NULL,
  `MaterialID` int(11) NOT NULL,
  `Count` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `productsale`
--

CREATE TABLE `productsale` (
  `ID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `SaleDate` date NOT NULL,
  `ProductCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `producttype`
--

CREATE TABLE `producttype` (
  `ID` int(11) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `DefectedPercent` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE `shop` (
  `ID` int(11) NOT NULL,
  `Title` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `Address` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `AgentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sotrudnics`
--

CREATE TABLE `sotrudnics` (
  `idSotrudnic` int(11) NOT NULL,
  `FIO` text NOT NULL,
  `Login` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Vxod_idVxod` int(11) NOT NULL,
  `Dolshnosts_idDolshnost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sotrudnics`
--

INSERT INTO `sotrudnics` (`idSotrudnic`, `FIO`, `Login`, `Password`, `Vxod_idVxod`, `Dolshnosts_idDolshnost`) VALUES
(101, 'Иванов Иван Иванович', 'Ivanov@namecomp.ru', '2L6KZG', 1, 1),
(102, 'Петров Петр Петрович', 'petrov@namecomp.ru', 'uzWC67', 2, 1),
(103, 'Федоров Федор Федорович', 'fedorov@namecomp.ru', '8ntwUp', 3, 2),
(104, 'Миронов Вениамин Куприянович', 'mironov@namecomp.ru', 'YOyhfR', 4, 3),
(105, 'Ширяев Ермолай Вениаминович', 'shiryev@namecomp.ru', 'RSbvHv', 5, 3),
(106, 'Игнатов Кассиан Васильевич', 'ignatov@namecomp.ru', 'rwVDh9', 6, 3),
(107, 'Хохлов Владимир Мэлсович', 'hohlov@namecomp.ru', 'LdNyos', 7, 1),
(108, 'Стрелков Мстислав Георгьевич', 'strelkov@namecomp.ru', 'gynQMT', 8, 1),
(109, 'Беляева Лилия Наумовна', 'belyeva@@namecomp.ru', 'AtnDjr', 9, 1),
(110, 'Смирнова Ульяна Гордеевна', 'smirnova@@namecomp.ru', 'JlFRCZ', 10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `stasuszacaza`
--

CREATE TABLE `stasuszacaza` (
  `idStasusZacaza` int(11) NOT NULL,
  `StatusName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stasuszacaza`
--

INSERT INTO `stasuszacaza` (`idStasusZacaza`, `StatusName`) VALUES
(1, 'В прокате'),
(2, 'Новая'),
(3, 'Закрыта');

-- --------------------------------------------------------

--
-- Структура таблицы `supplier`
--

CREATE TABLE `supplier` (
  `ID` int(11) NOT NULL,
  `Title` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `INN` varchar(12) NOT NULL,
  `StartDate` date NOT NULL,
  `QualityRating` int(11) DEFAULT NULL,
  `SupplierType` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uslugs`
--

CREATE TABLE `uslugs` (
  `idUslugi` int(11) NOT NULL,
  `Name` text NOT NULL,
  `CodeUslugi` varchar(45) NOT NULL,
  `Cena` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uslugs`
--

INSERT INTO `uslugs` (`idUslugi`, `Name`, `CodeUslugi`, `Cena`) VALUES
(31, 'Прокат опорного оборудования для катка', 'JUR8R', '500'),
(34, 'Обучение катанию на коньках', 'JKFBJ09', '1000'),
(44, 'Прокат салазок', 'DHBGFY563', '450'),
(45, 'Прокат набора защитного оборудования', 'JFH7382', '800'),
(57, 'Прокат ледянки', 'JHVSJF6', '300'),
(88, 'Катание на  катке', 'DJHGBS982', '400'),
(89, 'Прокат детских коньков', 'OIJNB12', '800'),
(92, 'Прокат санок', 'HJBUJE21J', '300'),
(98, 'Прокат шлема', '63748HF', '300'),
(99, 'Прокат вартушки', 'BSFBHV63', '100'),
(123, 'Катание на горках', '638VVNQ3', '500'),
(336, 'Прокат коньков', '8HFJHG443', '1200'),
(353, 'Заточка коньков', '87FDJKHJ', '500');

-- --------------------------------------------------------

--
-- Структура таблицы `vxod`
--

CREATE TABLE `vxod` (
  `idVxod` int(11) NOT NULL,
  `DateTime` datetime NOT NULL,
  `TypeVxod` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vxod`
--

INSERT INTO `vxod` (`idVxod`, `DateTime`, `TypeVxod`) VALUES
(1, '2022-05-15 13:13:00', 1),
(2, '2022-05-15 13:13:00', 1),
(3, '2022-05-15 13:13:00', 1),
(4, '2022-05-15 13:13:00', 1),
(5, '2022-05-15 13:13:00', 0),
(6, '2022-05-15 13:13:00', 1),
(7, '2022-05-15 13:13:00', 1),
(8, '2022-05-15 13:13:00', 0),
(9, '2022-05-15 13:13:00', 1),
(10, '2022-05-15 13:13:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `zacazs`
--

CREATE TABLE `zacazs` (
  `idZacaz` int(11) NOT NULL,
  `CodeZacaza` varchar(45) NOT NULL,
  `DateCreate` date NOT NULL,
  `TimeZacaz` time NOT NULL,
  `DateClose` date DEFAULT NULL,
  `TimeProcat` time DEFAULT NULL,
  `Klients_idKlient` int(11) NOT NULL,
  `StasusZacaza_idStasusZacaza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `zacazs`
--

INSERT INTO `zacazs` (`idZacaz`, `CodeZacaza`, `DateCreate`, `TimeZacaz`, `DateClose`, `TimeProcat`, `Klients_idKlient`, `StasusZacaza_idStasusZacaza`) VALUES
(1, '45462526/12.03.2022', '2022-03-12', '09:10:00', '0000-00-00', '02:00:00', 45462526, 2),
(2, '45462527/13.03.2022', '2022-03-13', '10:10:00', '0000-00-00', '10:00:00', 45462527, 1),
(3, '45462528/14.03.2022', '2022-03-14', '11:10:00', '0000-00-00', '02:00:00', 45462528, 1),
(4, '45462529/15.03.2022', '2022-03-15', '12:10:00', '0000-00-00', '10:00:00', 45462529, 2),
(5, '45462530/16.03.2022', '2022-03-16', '13:10:00', '2022-04-16', '05:20:00', 45462530, 3),
(6, '45462531/17.03.2022', '2022-03-17', '14:10:00', '0000-00-00', '08:00:00', 45462531, 2),
(7, '45462532/18.03.2022', '2022-03-18', '15:10:00', '0000-00-00', '04:00:00', 45462532, 2),
(8, '45462533/19.03.2022', '2022-03-19', '16:10:00', '0000-00-00', '06:00:00', 45462533, 1),
(9, '45462534/20.03.2022', '2022-03-20', '10:00:00', '0000-00-00', '12:00:00', 45462534, 1),
(10, '45462535/21.03.2022', '2022-03-21', '11:00:00', '0000-00-00', '02:00:00', 45462535, 2),
(11, '45462536/22.03.2022', '2022-03-22', '12:00:00', '2022-03-22', '10:00:00', 45462536, 3),
(12, '45462537/23.03.2022', '2022-03-23', '13:00:00', '0000-00-00', '02:00:00', 45462537, 1),
(13, '45462538/24.03.2022', '2022-03-24', '14:00:00', '0000-00-00', '10:00:00', 45462538, 1),
(14, '45462539/25.03.2022', '2022-03-25', '15:00:00', '0000-00-00', '05:20:00', 45462539, 1),
(15, '45462540/26.03.2022', '2022-03-26', '16:00:00', '2022-04-26', '08:00:00', 45462540, 3),
(16, '45462541/27.03.2022', '2022-03-27', '17:00:00', '0000-00-00', '04:00:00', 45462541, 2),
(17, '45462542/28.03.2022', '2022-03-28', '18:00:00', '0000-00-00', '06:00:00', 45462542, 1),
(18, '45462543/29.03.2022', '2022-03-29', '19:00:00', '0000-00-00', '12:00:00', 45462543, 1),
(19, '45462544/30.03.2022', '2022-03-30', '12:30:00', '0000-00-00', '02:00:00', 45462544, 2),
(20, '45462545/31.03.2022', '2022-03-31', '13:30:00', '0000-00-00', '10:00:00', 45462545, 2),
(21, '45462546/01.04.2022', '2022-04-01', '14:30:00', '2022-04-01', '02:00:00', 45462546, 3),
(22, '45462547/02.04.2022', '2022-04-02', '15:30:00', '0000-00-00', '10:00:00', 45462547, 2),
(23, '45462548/03.04.2022', '2022-04-03', '16:30:00', '0000-00-00', '05:20:00', 45462548, 2),
(24, '45462549/04.04.2022', '2022-04-04', '17:30:00', '0000-00-00', '08:00:00', 45462549, 1),
(25, '45462550/05.04.2022', '2022-04-05', '18:30:00', '0000-00-00', '04:00:00', 45462550, 1),
(26, '45462551/06.04.2022', '2022-04-06', '15:30:00', '0000-00-00', '06:00:00', 45462551, 1),
(27, '45462552/07.04.2022', '2022-04-07', '16:30:00', '0000-00-00', '12:00:00', 45462552, 1),
(28, '45462553/08.04.2022', '2022-04-08', '17:30:00', '2022-04-08', '02:00:00', 45462553, 3),
(29, '45462554/09.04.2022', '2022-04-09', '18:30:00', '0000-00-00', '10:00:00', 45462554, 2),
(30, '45462555/10.04.2022', '2022-04-10', '19:30:00', '0000-00-00', '02:00:00', 45462555, 1),
(31, '45462556/11.04.2022', '2022-04-11', '10:30:00', '0000-00-00', '10:00:00', 45462556, 1),
(32, '45462557/12.04.2022', '2022-04-12', '11:30:00', '0000-00-00', '05:20:00', 45462557, 2),
(33, '45462558/13.04.2022', '2022-04-13', '12:30:00', '0000-00-00', '08:00:00', 45462558, 2),
(34, '45462559/14.04.2022', '2022-04-14', '13:30:00', '0000-00-00', '04:00:00', 45462559, 2),
(35, '45462560/15.04.2022', '2022-04-15', '14:30:00', '0000-00-00', '06:00:00', 45462560, 1),
(36, '45462561/02.04.2022', '2022-04-02', '15:30:00', '0000-00-00', '12:00:00', 45462561, 1),
(37, '45462562/03.04.2022', '2022-04-03', '16:30:00', '0000-00-00', '02:00:00', 45462562, 1),
(38, '45462563/04.04.2022', '2022-04-04', '17:30:00', '2022-04-04', '10:00:00', 45462563, 3),
(39, '45462564/05.04.2022', '2022-04-05', '10:15:00', '0000-00-00', '02:00:00', 45462564, 1),
(40, '45462565/06.04.2022', '2022-04-06', '11:15:00', '0000-00-00', '10:00:00', 45462565, 2),
(41, '45462566/07.04.2022', '2022-04-07', '12:15:00', '2022-04-07', '05:20:00', 45462566, 3),
(42, '45462567/08.04.2022', '2022-04-08', '13:15:00', '0000-00-00', '08:00:00', 45462567, 1),
(43, '45462568/09.04.2022', '2022-04-09', '14:15:00', '0000-00-00', '04:00:00', 45462568, 1),
(44, '45462569/01.04.2022', '2022-04-01', '15:15:00', '0000-00-00', '06:00:00', 45462569, 1),
(45, '45462570/02.04.2022', '2022-04-02', '16:15:00', '0000-00-00', '12:00:00', 45462570, 1),
(46, '45462571/03.04.2022', '2022-04-03', '10:45:00', '0000-00-00', '08:00:00', 45462571, 1),
(47, '45462572/04.04.2022', '2022-04-04', '11:45:00', '2022-04-04', '05:20:00', 45462572, 3),
(48, '45462573/05.04.2022', '2022-04-05', '12:45:00', '0000-00-00', '08:00:00', 45462573, 2),
(49, '45462574/06.04.2022', '2022-04-06', '13:45:00', '0000-00-00', '04:00:00', 45462574, 2),
(50, '45462575/07.04.2022', '2022-04-07', '14:45:00', '0000-00-00', '06:00:00', 45462575, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `zacazs_has_uslugs`
--

CREATE TABLE `zacazs_has_uslugs` (
  `Zacazs_idZacaz` int(11) NOT NULL,
  `Uslugs_idUslugi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `zacazs_has_uslugs`
--

INSERT INTO `zacazs_has_uslugs` (`Zacazs_idZacaz`, `Uslugs_idUslugi`) VALUES
(1, 31),
(1, 34),
(1, 336),
(1, 353),
(2, 45),
(2, 89),
(2, 98),
(2, 99),
(2, 123),
(3, 45),
(3, 57),
(3, 88),
(3, 92),
(4, 44),
(4, 45),
(4, 57),
(4, 88),
(4, 92),
(5, 34),
(5, 45),
(5, 89),
(5, 98),
(5, 336),
(5, 353),
(6, 31),
(6, 34),
(6, 353),
(7, 45),
(7, 89),
(7, 98),
(7, 99),
(8, 45),
(8, 57),
(8, 89),
(8, 92),
(9, 45),
(9, 57),
(9, 88),
(9, 92),
(10, 45),
(10, 89),
(10, 98),
(10, 336),
(10, 353),
(11, 31),
(11, 34),
(11, 353),
(12, 45),
(12, 89),
(12, 98),
(12, 99),
(13, 45),
(13, 57),
(13, 92),
(14, 45),
(14, 57),
(14, 88),
(14, 92),
(15, 45),
(15, 89),
(15, 98),
(15, 336),
(15, 353),
(16, 31),
(16, 34),
(16, 353),
(17, 45),
(17, 89),
(17, 98),
(17, 99),
(18, 45),
(18, 57),
(18, 92),
(19, 45),
(19, 57),
(19, 88),
(19, 92),
(20, 45),
(20, 89),
(20, 98),
(20, 336),
(20, 353),
(21, 31),
(21, 34),
(21, 353),
(22, 45),
(22, 89),
(22, 98),
(22, 99),
(23, 45),
(23, 57),
(23, 92),
(24, 45),
(24, 57),
(24, 88),
(24, 92),
(25, 45),
(25, 89),
(25, 98),
(25, 336),
(25, 353),
(26, 31),
(26, 34),
(26, 353),
(27, 45),
(27, 89),
(27, 98),
(27, 99),
(28, 45),
(28, 57),
(28, 92),
(29, 45),
(29, 57),
(29, 88),
(29, 92),
(30, 45),
(30, 89),
(30, 98),
(30, 336),
(30, 353),
(31, 31),
(31, 34),
(31, 353),
(32, 45),
(32, 89),
(32, 98),
(32, 99),
(33, 45),
(33, 57),
(33, 92),
(34, 45),
(34, 57),
(34, 88),
(34, 92),
(35, 45),
(35, 89),
(35, 98),
(35, 336),
(35, 353),
(36, 31),
(36, 34),
(36, 353),
(37, 45),
(37, 89),
(37, 98),
(37, 99),
(38, 45),
(38, 57),
(38, 92),
(39, 45),
(39, 57),
(39, 88),
(39, 92),
(40, 45),
(40, 89),
(40, 98),
(40, 336),
(40, 353),
(41, 31),
(41, 34),
(41, 353),
(42, 45),
(42, 89),
(42, 98),
(42, 99),
(43, 45),
(43, 57),
(43, 92),
(44, 45),
(44, 57),
(44, 88),
(44, 92),
(45, 45),
(45, 89),
(45, 98),
(45, 336),
(45, 353),
(46, 31),
(46, 34),
(46, 353),
(47, 45),
(47, 89),
(47, 98),
(47, 99),
(48, 45),
(48, 57),
(48, 92),
(49, 45),
(49, 57),
(49, 88),
(49, 92),
(50, 45),
(50, 89),
(50, 98),
(50, 336),
(50, 353);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Agent_AgentType` (`AgentTypeID`);

--
-- Индексы таблицы `agentpriorityhistory`
--
ALTER TABLE `agentpriorityhistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_AgentPriorityHistory_Agent` (`AgentID`);

--
-- Индексы таблицы `agenttype`
--
ALTER TABLE `agenttype`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `dolshnosts`
--
ALTER TABLE `dolshnosts`
  ADD PRIMARY KEY (`idDolshnost`);

--
-- Индексы таблицы `klients`
--
ALTER TABLE `klients`
  ADD PRIMARY KEY (`idKlient`);

--
-- Индексы таблицы `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Material_MaterialType` (`MaterialTypeID`);

--
-- Индексы таблицы `materialcounthistory`
--
ALTER TABLE `materialcounthistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_MaterialCountHistory_Material` (`MaterialID`);

--
-- Индексы таблицы `materialsupplier`
--
ALTER TABLE `materialsupplier`
  ADD PRIMARY KEY (`MaterialID`,`SupplierID`),
  ADD KEY `FK_MaterialSupplier_Supplier` (`SupplierID`);

--
-- Индексы таблицы `materialtype`
--
ALTER TABLE `materialtype`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Product_ProductType` (`ProductTypeID`);

--
-- Индексы таблицы `productcosthistory`
--
ALTER TABLE `productcosthistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ProductCostHistory_Product` (`ProductID`);

--
-- Индексы таблицы `productmaterial`
--
ALTER TABLE `productmaterial`
  ADD PRIMARY KEY (`ProductID`,`MaterialID`),
  ADD KEY `FK_ProductMaterial_Material` (`MaterialID`);

--
-- Индексы таблицы `productsale`
--
ALTER TABLE `productsale`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ProductSale_Agent` (`AgentID`),
  ADD KEY `FK_ProductSale_Product` (`ProductID`);

--
-- Индексы таблицы `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Shop_Agent` (`AgentID`);

--
-- Индексы таблицы `sotrudnics`
--
ALTER TABLE `sotrudnics`
  ADD PRIMARY KEY (`idSotrudnic`),
  ADD KEY `fk_Sotrudnics_Vxod1_idx` (`Vxod_idVxod`),
  ADD KEY `fk_Sotrudnics_Dolshnosts1_idx` (`Dolshnosts_idDolshnost`);

--
-- Индексы таблицы `stasuszacaza`
--
ALTER TABLE `stasuszacaza`
  ADD PRIMARY KEY (`idStasusZacaza`);

--
-- Индексы таблицы `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `uslugs`
--
ALTER TABLE `uslugs`
  ADD PRIMARY KEY (`idUslugi`);

--
-- Индексы таблицы `vxod`
--
ALTER TABLE `vxod`
  ADD PRIMARY KEY (`idVxod`);

--
-- Индексы таблицы `zacazs`
--
ALTER TABLE `zacazs`
  ADD PRIMARY KEY (`idZacaz`),
  ADD KEY `fk_Zacazs_Klients1_idx` (`Klients_idKlient`),
  ADD KEY `fk_Zacazs_StasusZacaza1_idx` (`StasusZacaza_idStasusZacaza`);

--
-- Индексы таблицы `zacazs_has_uslugs`
--
ALTER TABLE `zacazs_has_uslugs`
  ADD PRIMARY KEY (`Zacazs_idZacaz`,`Uslugs_idUslugi`),
  ADD KEY `fk_Zacazs_has_Uslugs_Uslugs1_idx` (`Uslugs_idUslugi`),
  ADD KEY `fk_Zacazs_has_Uslugs_Zacazs_idx` (`Zacazs_idZacaz`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `agent`
--
ALTER TABLE `agent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `agentpriorityhistory`
--
ALTER TABLE `agentpriorityhistory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `agenttype`
--
ALTER TABLE `agenttype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dolshnosts`
--
ALTER TABLE `dolshnosts`
  MODIFY `idDolshnost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `klients`
--
ALTER TABLE `klients`
  MODIFY `idKlient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45462596;

--
-- AUTO_INCREMENT для таблицы `material`
--
ALTER TABLE `material`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `materialcounthistory`
--
ALTER TABLE `materialcounthistory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `materialtype`
--
ALTER TABLE `materialtype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `productcosthistory`
--
ALTER TABLE `productcosthistory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `productsale`
--
ALTER TABLE `productsale`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `producttype`
--
ALTER TABLE `producttype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop`
--
ALTER TABLE `shop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sotrudnics`
--
ALTER TABLE `sotrudnics`
  MODIFY `idSotrudnic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT для таблицы `stasuszacaza`
--
ALTER TABLE `stasuszacaza`
  MODIFY `idStasusZacaza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `supplier`
--
ALTER TABLE `supplier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `uslugs`
--
ALTER TABLE `uslugs`
  MODIFY `idUslugi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT для таблицы `vxod`
--
ALTER TABLE `vxod`
  MODIFY `idVxod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `zacazs`
--
ALTER TABLE `zacazs`
  MODIFY `idZacaz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `FK_Agent_AgentType` FOREIGN KEY (`AgentTypeID`) REFERENCES `agenttype` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `agentpriorityhistory`
--
ALTER TABLE `agentpriorityhistory`
  ADD CONSTRAINT `FK_AgentPriorityHistory_Agent` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `FK_Material_MaterialType` FOREIGN KEY (`MaterialTypeID`) REFERENCES `materialtype` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `materialcounthistory`
--
ALTER TABLE `materialcounthistory`
  ADD CONSTRAINT `FK_MaterialCountHistory_Material` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `materialsupplier`
--
ALTER TABLE `materialsupplier`
  ADD CONSTRAINT `FK_MaterialSupplier_Material` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MaterialSupplier_Supplier` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_ProductType` FOREIGN KEY (`ProductTypeID`) REFERENCES `producttype` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `productcosthistory`
--
ALTER TABLE `productcosthistory`
  ADD CONSTRAINT `FK_ProductCostHistory_Product` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `productmaterial`
--
ALTER TABLE `productmaterial`
  ADD CONSTRAINT `FK_ProductMaterial_Material` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductMaterial_Product` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `productsale`
--
ALTER TABLE `productsale`
  ADD CONSTRAINT `FK_ProductSale_Agent` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ProductSale_Product` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `FK_Shop_Agent` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `sotrudnics`
--
ALTER TABLE `sotrudnics`
  ADD CONSTRAINT `fk_Sotrudnics_Dolshnosts1` FOREIGN KEY (`Dolshnosts_idDolshnost`) REFERENCES `dolshnosts` (`idDolshnost`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sotrudnics_Vxod1` FOREIGN KEY (`Vxod_idVxod`) REFERENCES `vxod` (`idVxod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `zacazs`
--
ALTER TABLE `zacazs`
  ADD CONSTRAINT `fk_Zacazs_Klients1` FOREIGN KEY (`Klients_idKlient`) REFERENCES `klients` (`idKlient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Zacazs_StasusZacaza1` FOREIGN KEY (`StasusZacaza_idStasusZacaza`) REFERENCES `stasuszacaza` (`idStasusZacaza`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `zacazs_has_uslugs`
--
ALTER TABLE `zacazs_has_uslugs`
  ADD CONSTRAINT `fk_Zacazs_has_Uslugs_Uslugs1` FOREIGN KEY (`Uslugs_idUslugi`) REFERENCES `uslugs` (`idUslugi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Zacazs_has_Uslugs_Zacazs` FOREIGN KEY (`Zacazs_idZacaz`) REFERENCES `zacazs` (`idZacaz`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
