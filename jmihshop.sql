-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 19 2020 г., 18:39
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jmihshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`ID`, `Name`, `Category_ID`) VALUES
(1, 'Шея', 'Neck'),
(2, 'Запястье', 'Wrist'),
(3, 'Уши/Нос', 'Ears/Nose');

-- --------------------------------------------------------

--
-- Структура таблицы `lifestyle`
--

CREATE TABLE `lifestyle` (
  `ID` int(100) NOT NULL,
  `Style_Name` text NOT NULL,
  `Style_Text` text NOT NULL,
  `Style_Description` text NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Main_Image` varchar(100) NOT NULL,
  `Description_Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lifestyle`
--

INSERT INTO `lifestyle` (`ID`, `Style_Name`, `Style_Text`, `Style_Description`, `Category`, `Main_Image`, `Description_Image`) VALUES
(1, 'РЕТРО ВОЗВРАЩАЕТСЯ!', 'В этом месяце ПАЖИЛАЯ тенденция на две вещи: гвоздь и смокинг. Особенно хорошо, когда смокинг от Lacoste и Gucci.', 'Тренд на гвоздь, загнутый Гладом, и костюмы от ЛАКОСТЕ и ГУСИ набирают популярность, нравится вам это или нет, но ПАЖИЛОЙ ТЮЛЕНЬ уже вовсю захватывает рынок. ПАНЯТНА? ВАПРОСЫ? М? Элитные костюмы были популярны ещё в 60-х годах прошлого столетия. С гвоздями ситуация иная. После 16 века они исчезли с пика популярности. До нынешнего момента! Именно поэтому элитный костюм и ЗАГНУТЫЙ ГВОЗДЬ ОТ ГЛАДА идеально вписывается в образ ДАВОЛЬНО СОСТАЯТЕЛЬНОГО ПАЖИЛОГО ЧЕЛАВЕКА. Если вы будете звонить по-своему телефону, то ИМЕННО ПАЖИЛОЙ ГВОЗДЬ будет сверкать, а НЕ ЭТИ ВАШИ ЧАСЫ ПАНЯТНА!? Ты будешь выглядеть ЛАКШЕРИ, если сочетать обе тендеции друг с другом. Если вы не большой поклонник элитной одежды от Lacoste и ГУСИ, то ВЫ ПРОСТО САШЕНЬКА ПАТУМА ШТА ТОКА ПАЖИЛАЯ ЭЛИТА может позволить себе эти костюмы. Важно соблюдать правило моды: ЛАКОСТЕ/ГУСИ + ПАЖИЛОЙ ГВОЗДЬ = ТРЕНД!', 'Wrist', 'Jake.jpg', 'Jake1.jpg'),
(2, 'Атакующий стиль', 'Когда папа олигарх, то его деньги нужно тратить.', 'У тебя есть всё: деньги, машины, дома, личная охрана, брендовые шмотки. Но чего-то не хватает? Хочется светить брюлликами у всех на виду? Кажется это коллекция для тебя! Прямо сейчас отведи свою охрану от экрана и выбери себе подходящий лук из данной коллекции \"Атакующий стиль\". Покажи этим модникам, кто тут настоящий папочка лакшери стайла. Только в этом сезоне ты сможешь носить даже то, что другие увидят только через год. Дерзай!', 'Neck', 'Mike.jpg', 'Mike1.jpg'),
(3, 'Светящиеся глаза', 'В ночное время суток не хватает только ультрафиолета.', 'Новая тенденция на ультрафиолетовый стайл в ночное время набирает популярность. Именно сегодня вы сможете выглядеть изящно, если последуете нашему совету! Хватит гоняться за подсветками, лампочками и диодами. Сама природа уже наделила вас ЭЛИТНЫМ качеством - СИЯТЬ!!! И мы подобрали для вас аксессуары, которые пропитаны, ВНИМАНИЕ, Sayonara boy, ФОС-ФО-РОМ!!! Новый эдишен в мире - ФОСФОР. Он полностью радиоактивен, но когда и кого это останавливало? Даже сам мороз не может остановить модников и модниц использовать подвороты в -40*С!!! Вы обязательно должны попробовать аксессуары на ФОСФОРЕ, чтобы сиять в темноте. Только на этой недели мы предлагаем такую коллекцию для вас. Спешите! Мазаль Тов!', 'Ears/Nose', 'Sayonaraboy.jpg', 'Sayonaraboy1.jpg'),
(4, 'Скромная личность', 'Скромный аксессуары для тех, кто не привык выделяться, и кто хочет оставаться модным - ЕСТЬ!', 'Мы подобрали для вас лакшери коллекцию, чтобы оставаться в комфорте с самим собой. Играете ли вы в Доту, смотрите Ютуб или пошли выбросить мусор? Вы обязательно будете рады, когда на вас будет эта коллекция. Взгляните на мир вокруг, он полностью серый, но именно вы придадите ему красок! Представьте, как удивятся люди, когда увидят вас в тапках и цепях от Жмых Shop? Только вы и ваша скромность заставляют делать для вас наши лакшери аксессуары. Ну, или шо ещё написать, м? ВАПЩЕ ЗАЧЕМ ТИ ЭТА ЧИТАЕШЬ ТА? Я ПАШЕЛ ПИСАТЬ РЭП ЯСНА АЛЬБОМ В КОНЦЕ ФЕВРАЛЯ. УДАЧИ.', 'Ears/Nose', 'HardPlay.jpg', 'HardPlay1.jpg'),
(5, 'Стиль двоечка', 'Чичас я покажу двоечку и ты ИЗВИНИШЬСЯ', 'МАЗОХА ОСТАНЬ!! МАЗОХА НЕ ЛЕЗЬ! ЭТА МОЯ КОЛЛЕКЦИЯ. Сейчас я покажу вам как быть лакшери. Сначала удар правой, потом удар левой и на вас уже Картье от ... Мазоха, ну, че ты снова лезешь, уйди, Мазоха!!!! Так вот, уважаешь ОЗОНА?! М?! ОЗОН 671 ГЕЙМС ЗДЕСЬ И Я РЕКОМЕНДУЮ ТЕБЕ БЫТЬ ТАКИМ ЖЕ УСПЕШНЫМ КАК Я, ОЗОН. МОДА НА ГВОЗДИ В ПРОШЛОМ. ПОКУПАЙ ЦЕПОЧКУ БЫКА В НОС ЯСНА И ВСЕ МАЗОХИ СРАЗУ ЖЕ ЗАУВАЖАЮТ ТЕБЯ. МАЗОХА ИДИ СЮДА! ... ВОТ ЧЕ ТЫ СНОВА НАЧИНАЕШЬ МАЗОХ. НОРМАЛЬНО ЖЕ ОБЩАЛИСЬ. ОТСТАНЬ!', 'Wrist', 'Ozon671games.jpg', 'Ozon671games1.jpg'),
(6, 'Пицца для масконосца', 'Я СЪЕЛ ДЕДА И ПИЦЦУ', 'ХОЧУ ПИЦЦУ, ПИЦЦА СЪЕЛА ДЕДА, ДЕД СЪЕЛ ПИЦЦУ. АСУЖДАЮ. ГДЕ МАЯ МАСКА, МАСКА? А ВОТ ОНА. И ТАК УВАЖАЕМЫЕ ДАМЫ И ГОСПОДА, РАД ВАС ВСЕХ ПРИВЕТСТВОВАТЬ, ПОЗВОЛЬТЕ ПРЕДСТАВИТЬ ДЕДОВУ КОЛЛЕКЦИЮ ПАЖИЛЫХ КАРТЬЕ. КТО НЕ КУПИТ - ТОТ ГЛЭК. КАВО? ДАБ ДАБ ДА. Я ЧИЧАС КАТАЛСЯ НА СВАЕЙ НИВЕ ДА И УВИДЕЛ КАК СЕРЁГА ПРОЕХАЛ НА СВОЁМ УАЗИКЕ ПАТРИОТЕ. ТАК Я КАК ГАЗАНУЛ ЗА НИМ И ОБОГНАЛ ПРЕДСТАВЛЯЕТЕ, М?! Я ВОТ ЧИЧАС СИЖУ В УАЗИКЕ И ЖДУ СНОВА СЕРЁГУ, ЧТОБЫ СНОВА ЕГО ОБОГНАТЬ. ВОПРОСЫ? ЗЯБЛС СТРИМ ЗАВТРА В ШЕСТЬ ВЕЧЕРА. БУДЕМ ИГРАТЬ В СТРАШИЛКУ. ПАНЯТНА. КОГО НЕ БУДЕТ - ТОТ ЧОВТ. НУ ЯК ГАВАРИЦА НИЧЕГО СТРАШНОГО ПРАВИЛЬНА? НУ ДАВАЙ.', 'Ears/Nose', 'Detrov.jpg', 'Detrov1.jpg'),
(7, 'По-пацански скрытно', 'Мы асуждаем все эти новомодные треды за стиль', 'Если бы я был модником и мне бы такое сказали, то мне было бы обидно. Но я бы не модником. Потому что именно коллекция \"по-пацански скрытно\" идеально подходит для всех латентных людей. Именно со вчерашнего дня эта тенденция вошла в моду, и уже сегодня мы подготовили для вас подборку из нашего магазина. Встречайте! Коллекция \"по-пацански скрытно\" подчеркнет ваши мужские стороны. Вы научитесь правильно сидеть, правильно выглядеть, правильно, как это сказать правильно, говорить. Да. Вам больше не придётся открыто оскорблять модников, ведь ваши аккаунты недавно удалили. А вот в Курске за модные шмотки наказывают. Их там нет. Но хочется выглядеть стильно, верно? Поэтому скорее покупай нашу коллекцию, и езжай в Москву на съёмки, пока ребята с района не видят.', 'Neck', 'XXL.jpg', 'XXL1.jpg'),
(8, 'Хасл Хард Флейва', 'Хасл Хард Флейва - это не стиль, это жизнь, но не такая, как у русского репера.', 'А-йоу, нищеброд. Дарова, бомжара. Обидно? Мне нет. Поэтому, если не будешь обижаться, то мы с Пимпом расскажем тебе за Хасл Хард. Понятно, тапок деда? Значит запоминай, каблук. Все эти цепи от Гуччи и Прада - старый век. Настоящие модники закупаются в ...*тихо* Пим, а нам заплатят? Да? Всё, тогда всё ровно. Погнали... Так вот, настоящие модники закупаются в Jmih Shop, ясно? Даже я, Большой Босс, приобрел себе скрепки. Отправил Богомолу в Алькатрас кольцо быка, чтобы он всех там шугал. А Пимп закупил себе парочку хардье. Даже Пимп? Это стиль, хоуми. Вот! И Большой Босс подготовил для вас не реп русский, как всякие там реперы, а подборку Хасл Хард. Зацени, брат. Прикоснись, так сказать, к стилю Босса и Пимпа. Конечно, если у тебя есть деньги. Ха-ха-ха.', 'Neck', 'BigBoss.jpg', 'BigBoss1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `Product` varchar(100) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Quantity` varchar(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `S_Name` varchar(100) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `Post_Index` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Price` decimal(12,2) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Description_FULL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `Title`, `Description`, `Price`, `Image`, `Category`, `Description_FULL`) VALUES
(5, 'Гладье', 'Пажилое гладье от деда, которое тот сделал на заводе в Самаре.', '820000.00', '1.jpg', 'Neck', 'Пажилое гладье от Деда, которое тот сделал на заводе в Самаре. Современные дизайнеры, такие, как Гоша Рубчинский, Dolce&Gabbana, Versace и Prada оценивают стоимость этой вещи в миллионы долларов.'),
(6, 'Хардье', 'Харьде Дяди Лёши, которое было выковано в Зелоногорске.', '1020000.00', '2.jpg', 'Neck', 'Данное Хардье отлично подходит для успешных стримеров. Абсолютно такое же Хардье носят такие стримеры, как Братишкин, Jesus AVGN, Силиконовая Зина.'),
(7, 'Пажилой гвоздь', 'Этот гвоздь загинал лично Дед, кста', '560000.00', '3.jpg', 'Wrist', 'Наверное одна из самых волшебных вещей. \"Загнутый и не разгибаемый\" - так говорят о нём зяблы. Словно ДЕДОВА НИВА этот гвоздь пресекает любые преграды и никогда не подведёт вас. Ваша рука навсегда под защитой ДЕДА.'),
(8, 'Хард Гвоздь', 'Гвоздь дяди Лёши, который тот нашёл под колесом своей ласточки.', '490000.00', '4.jpg', 'Wrist', 'Только хейтеры могут подсунуть гвоздь под колесо твоей ласточки. Но это не беда! Используй их оружие против них. Хард Гвоздь поможет оттолкнуть хейтеров от твоей ласточки. Как говорится: \"Пауки боятся своих жал больше всего другого\".'),
(11, 'Цепочка Быка', 'Ля какая цепь, ты словно Бык, ПАНЯТНО?', '399000.00', '5.jpg', 'Ears/Nose', 'На тебя БЫКАНУЛИ? Чувствуешь себя неуверенно? Решение есть! Цепочка Быка позволит тебе БЫКОВАТЬ где угодно, когда угодно и на кого угодно. Пусть теперь ПОБЫКУЮТ, ВОУ ВОУ ВОУ, ОСУЖДАЮ, админ уйди, игровой контент идёт, хейтеры.'),
(12, 'Кольцо Хейтера', 'Данное кольцо отпугивает Хейтеров от обладателя.', '389000.00', '6.jpg', 'Ears/Nose', 'Липнут хейтеры из-за вашей популярности? Только кольцо Хейтера поможет оттолкнуть их от вас! Наденьте и скройтесь среди Хейтеров. Либо так, либо никак.'),
(13, 'Чокер для Жрицы', 'Чокер настоящей СамОЧКИ', '427000.00', '7.jpg', 'Neck', 'Данный чокер точно покажет чья вы самочка. ЛЯ КАКАЯ. Только Амазонки в древности носили такие чокеры, потому что они защищали их от сглаза. Купите этот чокер у нас и получите удовольствие от ношения раритетной вещи.'),
(14, 'Скрепки от Харда', 'Оставались скрепки - я их собрал', '1550000.00', '8.jpg', 'Neck', '\"Оставались скрепки - я их собрал\" - Дядя Лёша. Ведь действительно, зачем нужны лишние скрепки? Мы нашли зачем! Данная модель нашей коллекции подчеркнет ваш лакшери стиль по сравнению с дорогими вещами от Итальянцев. ПАНЯТНО? Кому нужны эти камешки, когда есть вещи, куда изысканней, чем алмазы?');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `lifestyle`
--
ALTER TABLE `lifestyle`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `lifestyle`
--
ALTER TABLE `lifestyle`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
