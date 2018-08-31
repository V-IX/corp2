-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 31 2018 г., 15:12
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vix_corp_tpl_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` int(11) DEFAULT '1'
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`idItem`, `title`, `alias`, `brief`, `text`, `img`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`, `num`) VALUES
(17, 'Что такое продвижение сайта и зачем оно нужно?', 'chto-takoe-prodvizhenie-sajta-i-zachem-ono-nuzhno', 'В интернет-пространстве миллиардное количество сайтов. Чтобы найти информацию или услуги, сейчас пользуются специальными поисковыми машинами (Яндекс, Гугл и др.).', '<p>Вводя вопрос в поисковик, Вы запускаете очень сложный процесс подбора источников, которые, по мнению машины, должны наиболее точно ответить на Ваш вопрос. После этого машина выдает Вам список ресурсов. </p>\r\n\r\n<p>Многие исследования показывают, что обычный пользователь просматривает 2–4 первых сайта в листе поиска, реже – до 10 штук. Поэтому под продвижением ресурса понимают попадание сайта, по определенным запросам, в первые 10 строк поиска. </p>\r\n\r\n<p>Что нужно понимать при заказе продвижения сайта? </p>\r\n\r\n<p>Прежде всего, Вы должны сами для себя понять, что Вы хотите. Невозможно продвинуть сайт, можно продвинуть страницы Вашего ресурса с определенной информацией. </p>\r\n\r\n<p>Когда-то давно, продвижение делалось очень просто: на белом фоне, белым цветом писалось много-много раз нужное слово, и Вы становились первыми. </p>\r\n\r\n<p>Такие времена ушли безвозвратно. Все поисковики борются с таким или похожим продвижением. </p>\r\n\r\n<p>Основная идея, которую они продвигают сегодня, такова – Вы будете первыми, если на ресурсе, который сделан так, чтобы человеку было удобно, есть нужная человеку информация. Причем написанная человеком, правильным языком и без SEOшных заморочек. </p>\r\n\r\n<p>Это конечно замечательно, но мы должны понимать, что все люди, которые занимаются сайто-строительством, далеко не дураки, и поэтому война сайтов велась и будет вестись пока существует Интернет. </p>\r\n\r\n<p>Что должен предложить Вам SEO-специалист?</p>\r\n\r\n<ol>\r\n <li>Прежде всего, конечно, Вам предложат аудит Вашего сайта. После него Вам придется многое переделать в своем сайте, чтобы оптимизировать его под запросы и внутренние ссылки. </li>\r\n <li>Вы должны объяснить, в общих чертах, что Вы хотите продвинуть, а специалист должен предложить Вам семантическое ядро сайта, на основе которого он будет предлагать Вам список запросов, по которому будут продвигаться страницы Вашего ресурса. </li>\r\n <li>Предложить дописать или переработать страницы ресурса, сделав их «приземляющими», под выбранные запросы. </li>\r\n <li>Подготовить ссылочную базу, чтобы улучшить видимость сайта в Интернете. </li>\r\n <li>Предложить стратегию по проведению директ-рекламы Вашего сайта.</li>\r\n</ol>', 'eafbfd0217c5fad4bce711355a7edf45.jpg', 1, 'Что такое продвижение сайта и зачем оно нужно?', 'Что такое продвижение сайта и зачем оно нужно?', 'Что такое продвижение сайта и зачем оно нужно?', '2016-02-07 00:06:22', 1),
(18, 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'umenie-nahodit-obshij-yazyk-s-konkurentami-zalog-prochnyh-pozicij-na-rynke', 'Начиная свой бизнес или продвигая компанию работодателя, важно заручиться не только надежными партнерами, но и грамотно выстроить отношения с конкурентами.', '<p>Кто-то может сказать, что занимаясь делом, не стоит вообще на кого-либо обращать внимание. Вы выбрали эту стратегию, а Ваш конкурент другую. Вы любите большие скидки и распродажи, а он делает упор на качество и сопутствующие услуги. Разногласий с конкурентами может возникнуть множество. Еще бы! Вы же подвинули их и уменьшили их долю рынка. Как поступить? Развязать войну, отвоевывая себе место, или вести мирные переговоры?</p>\r\n\r\n<p>Недаром говорят, лучше самой тихой войны худой мир. Подумайте сами, сколько сил, средств и времени может отнять эта никому не нужная война. Демпинговать ценами, рассказывать везде и всюду, какие они плохие, указывать потенциальным потребителям на недостатки конкурентов? Но ведь все это может обернуться против Вас.</p>\r\n\r\n<p>Лучше подумать над тем, чем вы можете быть друг другу полезны. Возможно, заключив соглашение о приблизительно равных ценах и регламентировании ассортимента, Вы только больше выиграете, сделав ставку на качество обслуживание, оформление интерьера торгового зала, внедрение дополнительных услуг, которых нет у Вашего конкурента. Выгодное сотрудничество – хороший способ противостоять более сильным и матерым коммерсантам. Периодически кризис реализации проявляется во всех отраслях – сезонность, политические и экономические коллизии дают себя знать регулярно. Грамотное поведение и дружба с конкурентами может помочь выжить в не простых экономических условиях, а потом, это лучший способ знать о положении их дел, свободно посещая офис, торговый зал, производство и т.д. Выискивать и вынюхивать Вас никто не заставляет, а поддержание приятельских отношений значительно облегчит ваше существование на рынке.</p>\r\n\r\n<p>Хороший способ заручиться дружбой конкурента – приобретать у него на постоянной основе, какую-нибудь мелочевку. Такое положение выведет Вас из ранга конкурентов. Не будет же Ваш поставщик строить козни против своего постоянного покупателя! А Вам это даст возможность ориентироваться в размере наценок, отношении к покупателям, уровне сервиса Вашего конкурента. Правильно сделанные выводы помогут избежать многих ошибок, модернизировать Ваш бизнес, внести что-то новое и ликвидировать не рентабельные направления. Насколько это выгодно Вашему конкуренту? А, собственно, какая Вам разница, выгодно ему это или нет?</p>\r\n\r\n<p>Не найдете компромисс во взаимоотношениях с конкурентами – они Вас просто выживут с рынка. Закон джунглей превратился в самый действенный стимул поведения на рынке. Превратить конкурента в коллегу – Ваша прямая задача!</p>', '1e28c609f797643f55950ef391abc5bc.jpg', 1, 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', '2016-02-07 00:09:29', 1),
(19, 'Брендинг – заставь имя работать на себя!', 'brending-zastav-imya-rabotat-na-sebya', 'Брендинг являет собой высшую ступень развития маркетинговой деятельности. Брендинг – гарантия пожизненного успеха компании, ее обладателей и сотрудников.', '<p>Именно бренд заставляет людей купить продукт или услугу. Однако для того чтобы стать профи в данном деле, чтобы действительно заставить имя работать на компанию, необходимо приложить немалые усилия, провести колоссальные объемы работ и исследований. Начать, пожалуй, стоит непосредственно с понятия.</p>\r\n\r\n<p>Бренд – уникальное, неповторимое, единственное и продающее имя фирмы, компании, предприятия, которое укоренилось в сознании людей, имеет отличную репутацию и заставляет покупателя выбирать именно данный продукт. Наличие бренда гарантирует продавцу, производителю, что товар, даже обладая примерно равными или даже более низкими показателями в сравнении с конкурентами, будет куплен в несколько раз чаще конкурентов.</p>\r\n\r\n<p>Брендинг сегодня – не просто способ продвижения товара, но философия, которая создает и распространяет, укрепляет и сохраняет определенный образ в сознании потребителей. В настоящее время брендинг в Беларуси еще не до конца изучен, применяется только в качестве креативного, ультрасовременного метода в маркетинге.</p>\r\n\r\n<p>Проблема брендинга в Беларуси заключается в том, что, во-первых, компании редко существуют более десяти лет, во-вторых, не каждый маркетолог с точки зрения своего экономического образования способен творчески подойти к вопросу о рекламе, продвижении, формировании образа товара. PR-службы компаний же, в свою очередь, неадекватно понимают суть брендинга.</p>\r\n\r\n<p>Главными отличиями западного процесса брендинга от белорусского являются средства, выделяемые на эти процессы, а также время, отведенное на реализацию проекта. С уверенностью можно говорить о том, что именно специфика белорусского рынка должна стать первоочередным фактором, учитывающимся при создании бренда. Бездумное, бездушное перенимание западного опыта не приведет к успеху.</p>\r\n\r\n<p>Все возможные и известные методы маркетинга, авторские разработки и креативное мышление – вот что должно стать помощником в создании бренда. Для брендинга характерно взаимодействие специалистов разного уровня и направлений, это необходимо учитывать.</p>\r\n\r\n<p>Наличие полной, четкой, хорошо разработанной концепции, которая определяет частные и общие черты программы по созданию брендинга, является необходимым условием и залогом успеха на всех этапах. Качественный брендинг значительно повысит эффективность деятельности.</p>', '4b5c20dd4cf8d75a8aa609f2e05cf36d.jpg', 1, 'Брендинг – заставь имя работать на себя!', 'Брендинг – заставь имя работать на себя!', 'Брендинг – заставь имя работать на себя!', '2016-02-07 00:10:33', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `faq`
--

CREATE TABLE `faq` (
  `idItem` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `title` text,
  `text` text,
  `img` text,
  `isRead` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '0',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `faq`
--

INSERT INTO `faq` (`idItem`, `name`, `email`, `phone`, `title`, `text`, `img`, `isRead`, `num`, `visibility`, `addDate`) VALUES
(11, NULL, NULL, NULL, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae?', '<p>Phasellus id mi vel leo placerat elementum. Etiam efficitur sagittis commodo. Quisque eu sem aliquam, molestie felis quis, rutrum est. Integer gravida gravida turpis, eget finibus odio interdum sit amet. Etiam maximus est vitae lobortis dignissim. Quisque eget justo posuere, egestas felis ac, interdum velit. In hac habitasse platea dictumst. Fusce vehicula aliquet risus elementum finibus. In vitae fringilla diam.</p>\r\n\r\n<p>Nam eleifend tortor risus, eleifend scelerisque nisi mattis non. Integer feugiat magna sed ipsum bibendum, eget finibus sapien pharetra. Sed lectus metus, sollicitudin vel fermentum laoreet, suscipit in sapien. Proin et scelerisque mi, at elementum tortor. Donec non ultricies leo, non semper erat. Vivamus mollis sollicitudin massa, vel lacinia risus tincidunt quis.</p>', NULL, 1, 1, 1, '2016-03-09 12:07:45'),
(12, NULL, NULL, NULL, 'Maecenas lectus leo, eleifend ut congue non, maximus a augue.', '<p>Sed viverra sit amet metus rhoncus tristique. Quisque id augue sem. Nullam elementum urna sit amet risus varius efficitur. Nulla interdum elit quis orci scelerisque scelerisque. Aenean scelerisque porttitor nisl in suscipit. Vivamus ultrices urna sit amet velit consectetur viverra.</p>\r\n\r\n<p>Aliquam sit amet libero nec risus condimentum vulputate. Nunc convallis ex et accumsan placerat. Mauris lacus lacus, porttitor accumsan sagittis at, rhoncus nec mi. Aenean eu mi a ipsum molestie volutpat vitae quis tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin scelerisque sed massa ut mattis. Sed sit amet vehicula enim, ac efficitur dui. Integer porta accumsan velit, eget dignissim purus.</p>', NULL, 1, 10, 1, '2016-03-11 14:23:46'),
(13, 'Руслан', '', '+375 (11) 111-11-11', 'Sed lectus metus, sollicitudin vel fermentum laoreet, suscipit in sapien.', '', NULL, 1, 1, 0, '2016-03-11 14:48:34');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`idItem`, `title`, `name`, `phone`, `email`, `text`, `addDate`, `isRead`) VALUES
(1, 'Заказать звонок - контакы', 'Владислав Запорожец', '+375 (11) 111-11-11', NULL, 'Maecenas lectus leo, eleifend ut congue non, maximus a augue. Sed viverra sit amet metus rhoncus tristique. Quisque id augue sem. Nullam elementum urna sit amet risus varius efficitur', '2016-03-11 15:16:48', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `footer`
--

CREATE TABLE `footer` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `link` text,
  `visibility` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `target` varchar(255) DEFAULT '_self',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `footer`
--

INSERT INTO `footer` (`idItem`, `idParent`, `title`, `link`, `visibility`, `num`, `target`, `addDate`) VALUES
(29, 0, 'Раздел 1', '', 1, 10, '_self', '2016-02-07 00:28:14'),
(31, 29, 'Ссылка 1', '/pages/about', 1, 10, '_self', '2016-02-07 00:28:50'),
(32, 29, 'Ссылка 2', '/pages/about', 1, 9, '_self', '2016-02-07 00:29:10'),
(33, 29, 'Ссылка 3', '/pages/about', 1, 8, '_self', '2016-02-07 00:29:22'),
(37, 0, 'Раздел 2', '', 1, 9, '_self', '2016-02-07 22:06:42'),
(38, 37, 'Ссылка 4', '/pages/about', 1, 10, '_self', '2016-02-07 22:06:42'),
(39, 37, 'Ссылка 5', '/pages/about', 1, 9, '_self', '2016-02-07 22:06:42'),
(40, 37, 'Ссылка 6', '/pages/about', 1, 8, '_self', '2016-02-07 22:06:42');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `text` text,
  `num` int(11) DEFAULT '0',
  `img` text,
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`idItem`, `title`, `alias`, `text`, `num`, `img`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`) VALUES
(15, 'Фотоальбом 1', 'fotoalbom-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', 1, '609b08887924b5a7c75020a92b14a41b.jpg', 1, 'Фотоальбом 1', 'Фотоальбом 1', 'Фотоальбом 1', '2016-03-09 09:31:48'),
(16, 'Фотоальбом 2', 'fotoalbom-2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>', 1, '2962a842530b57227633755b687d2e27.jpg', 1, 'Фотоальбом 2', 'Фотоальбом 2', 'Фотоальбом 2', '2016-03-11 11:34:11'),
(17, 'Фотоальбом 3', 'fotoalbom-3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>', 1, '1d1b19804f9a5d2d8ec42b56a5e6a7aa.jpg', 1, 'Фотоальбом 3', 'Фотоальбом 3', 'Фотоальбом 3', '2016-04-20 08:14:14');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_imgs`
--

CREATE TABLE `gallery_imgs` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=910 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_imgs`
--

INSERT INTO `gallery_imgs` (`idItem`, `idParent`, `title`, `img`, `addDate`) VALUES
(189, 15, NULL, '10750bee658d08582b6a2a30a45ae899.jpg', '2016-03-09 09:39:32'),
(192, 15, NULL, '6d9d9b7bcc541f3af66c1740e90fa463.jpg', '2016-03-09 09:39:33'),
(193, 15, NULL, '116efe423fdb076dd2ff9183cde21a47.jpg', '2016-03-09 09:39:33'),
(194, 16, NULL, '18ba6c57b86b1feb069260483b53fd08.jpg', '2016-03-11 11:35:59'),
(195, 16, NULL, '5c7530401307f71051df68514c65a48c.jpg', '2016-03-11 11:35:59'),
(196, 16, NULL, 'e5bf52880067d002dc05d4e8578123b9.jpg', '2016-03-11 11:36:00'),
(197, 16, NULL, '5c43278f8eb7baa0cf338a5d2f92f917.jpg', '2016-03-11 11:36:00'),
(198, 16, NULL, 'baf1123a6f2164dabd9a047fefb50cc8.jpg', '2016-03-11 11:36:00'),
(199, 16, NULL, '9ac107d65301b76a4e526661b2c23d13.jpg', '2016-03-11 11:36:01'),
(200, 17, NULL, '35ee146a51408b0c1740bd28183cbb7b.jpg', '2016-04-20 08:15:29'),
(201, 17, NULL, '0bae5cbef015f594668cf34fd8723c10.jpg', '2016-04-20 08:15:29'),
(202, 17, NULL, 'ad4979d28604282f6d2847b3cfe74799.jpg', '2016-04-20 08:15:30'),
(203, 17, NULL, 'c0ad530fbbcfc5f0fa49d3424d02c1d2.jpg', '2016-04-20 08:15:30'),
(204, 17, NULL, '264b3210f0cfc0e676be1b9fd5353b9c.jpg', '2016-04-20 08:15:30'),
(205, 17, NULL, '761340e809d69743c655f9cc255e196f.jpg', '2016-04-20 08:15:30');

-- --------------------------------------------------------

--
-- Структура таблицы `navigation`
--

CREATE TABLE `navigation` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT '0',
  `position` varchar(255) DEFAULT 'top',
  `title` varchar(255) DEFAULT NULL,
  `link` text,
  `visibility` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `target` varchar(255) DEFAULT '_self',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `navigation`
--

INSERT INTO `navigation` (`idItem`, `idParent`, `position`, `title`, `link`, `visibility`, `num`, `target`, `addDate`) VALUES
(29, 0, 'top', 'Главная', '/', 1, 10, '_self', '2016-02-07 00:31:53'),
(30, 0, 'top', 'Услуги', '/services', 1, 8, '_self', '2016-02-07 00:32:18'),
(31, 0, 'top', 'О компании', '/pages/about', 1, 9, '_self', '2016-02-07 00:32:40'),
(32, 0, 'top', 'Контакты', '/contacts', 1, 1, '_self', '2016-02-07 00:32:52'),
(33, 31, 'top', 'Ссылка 1', '/pages/about', 1, 10, '_self', '2016-02-07 21:30:47'),
(34, 31, 'top', 'Ссылка 2', '/pages/about', 1, 9, '_self', '2016-02-07 21:31:00'),
(35, 31, 'top', 'Ссылка 3', '/pages/about', 1, 8, '_self', '2016-02-07 21:31:10'),
(36, 0, 'top', 'Галерея', '/gallery', 1, 6, '_self', '2016-03-09 14:11:21'),
(37, 0, 'top', 'Отзывы', '/reviews', 1, 5, '_self', '2016-03-09 14:11:45'),
(38, 30, 'top', 'Услуга 1', '/services', 1, 10, '_self', '2016-03-09 14:12:09'),
(39, 30, 'top', 'Услуга 2', '/services', 1, 9, '_self', '2016-03-09 14:12:22'),
(40, 30, 'top', 'Услуга 3', '/services', 1, 8, '_self', '2016-03-09 14:12:38'),
(41, 0, 'top', 'Статьи', '/articles', 1, 7, '_self', '2016-03-09 14:13:04'),
(42, 32, 'top', 'Политика конфиденциальности', '/pages/confidence', 1, 1, '_self', '2016-03-09 14:21:09'),
(43, 0, 'footer', 'Раздел 1', '', 1, 10, '_self', '2016-09-01 09:05:39'),
(44, 43, 'footer', 'Ссылка 1', '/pages/about', 1, 10, '_self', '2016-09-01 09:05:39'),
(45, 43, 'footer', 'Ссылка 2', '/pages/about', 1, 9, '_self', '2016-09-01 09:05:39'),
(46, 43, 'footer', 'Ссылка 3', '/pages/about', 1, 8, '_self', '2016-09-01 09:05:39'),
(47, 0, 'footer', 'Раздел 2', '', 1, 9, '_self', '2016-09-01 09:05:39'),
(48, 47, 'footer', 'Ссылка 4', '/pages/about', 1, 10, '_self', '2016-09-01 09:05:39'),
(49, 47, 'footer', 'Ссылка 5', '/pages/about', 1, 9, '_self', '2016-09-01 09:05:39'),
(50, 47, 'footer', 'Ссылка 6', '/pages/about', 1, 8, '_self', '2016-09-01 09:05:39'),
(57, 0, 'left', 'Раздел 1', '', 1, 10, '_self', '2016-09-01 09:09:54'),
(58, 57, 'left', 'Ссылка 1', '/pages/about', 1, 10, '_self', '2016-09-01 09:09:55'),
(59, 57, 'left', 'Ссылка 2', '/pages/about', 1, 9, '_self', '2016-09-01 09:09:56'),
(60, 57, 'left', 'Ссылка 3', '/pages/about', 1, 8, '_self', '2016-09-01 09:09:57'),
(61, 0, 'left', 'Раздел 2', '', 1, 9, '_self', '2016-09-01 09:09:58'),
(62, 61, 'left', 'Ссылка 4', '/pages/about', 1, 10, '_self', '2016-09-01 09:09:59'),
(63, 61, 'left', 'Ссылка 5', '/pages/about', 1, 9, '_self', '2016-09-01 09:10:01'),
(64, 61, 'left', 'Ссылка 6', '/pages/about', 1, 8, '_self', '2016-09-01 09:10:02');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`idItem`, `title`, `alias`, `brief`, `text`, `img`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`) VALUES
(14, 'Audi представит в Детройте водородный кроссовер', 'audi-predstavit-v-detrojte-vodorodnyj-krossover', 'Компания Audi представит в январе на Детройтском автосалоне концептуальный кроссовер h-tron quattro с водородной силовой установкой. Об этом со ссылкой на собственный источник сообщает издание Autobild.', '<p>Audi e-tron Quattro, коэффициент аэродинамического сопротивления которого равен 0.25, оснащен тремя электромоторами суммарной мощностью 435 лошадиных сил (при резких ускорениях может возрастать до&nbsp;503&nbsp;сил). Разгон до&nbsp;&laquo;сотни&raquo; занимает 4,6&nbsp;секунды, а&nbsp;максимальная скорость ограничена 210 километрами в&nbsp;час.</p>\r\n\r\n<p>Внешне прототип будет практически идентичен электрическому кроссоверу e-tron quattro, показанному в&nbsp;сентябре на&nbsp;моторшоу во&nbsp;Франкфурте. При этом вседорожник укомплектуют новой силовой установкой на&nbsp;топливных элементах, где электричество вырабатывается в&nbsp;результате химической реакции между водородом и&nbsp;кислородом.</p>\r\n\r\n<p>Остальные подробности о&nbsp;новинке пока держатся в&nbsp;секрете. В&nbsp;ноябре 2014 года компания Audi представила экспериментальную версию седана A7&nbsp;с водородной силовой установкой. В&nbsp;ее&nbsp;состав вошел блок с&nbsp;300 отдельными топливными ячейками, комплект литий-ионных аккумуляторов емкостью 8,8 киловатт-часа, два электромотора и&nbsp;четыре баллона, вмещающие около пяти килограммов водорода.</p>\r\n\r\n<p>Двигатели, суммарной мощностью 230 лошадиных сил (540&nbsp;Нм крутящего момента), позволяют седану набирать &laquo;сотню&raquo; за&nbsp;7,9&nbsp;секунды. Максимальная скорость&nbsp;&mdash; 180 километров в&nbsp;час. Запаса водорода хватает примерно на&nbsp;500 километров пути.</p>\r\n\r\n<p>Полную информацию о ценах, комплектациях и дополнительном оборудовании автомобилей Audi&nbsp;смотрите в каталоге.</p>\r\n\r\n<p>В&nbsp;марте 2015 года тогдашний технический директор VW&nbsp;Ульрих Хакенберг заявил, что в&nbsp;будущем у&nbsp;марок&nbsp;Volkswagen,&nbsp;Porsche&nbsp;и&nbsp;Audi появятся серийные водородные модели. Не&nbsp;исключено, что они будут построены на&nbsp;модельной платформе MQB, которая разрабатывалась с&nbsp;учетом совместимости с&nbsp;подобными силовыми установками.</p>', 'ed5f0ffbc104b1313d7544358b4470fe.jpg', 1, 'Audi представит в Детройте водородный кроссовер', 'Компания Audi представит в январе на Детройтском автосалоне концептуальный кроссовер h-tron quattro с водородной силовой установкой. Об этом со ссылкой на собственный источник сообщает издание Autobild.', 'Компания Audi представит в январе на Детройтском автосалоне концептуальный кроссовер h-tron quattro с водородной силовой установкой. Об этом со ссылкой на собственный источник сообщает издание Autobild.', '2015-12-18 12:52:29'),
(15, 'Jaguar XF: приручить хищника', 'jaguar-xf-priruchit-hishnika', 'Создан новый XF на алюминиевой платформе: алюминий в конструкции составляет 75 %, причем 50 % — алюминий вторичного использования, чем очень гордятся в Jaguar.', '<p>Создан новый&nbsp;XF на&nbsp;алюминиевой платформе: алюминий в&nbsp;конструкции составляет 75&nbsp;%, причем 50&nbsp;%&nbsp;&mdash; алюминий вторичного использования, чем очень гордятся в&nbsp;Jaguar. &laquo;Инородными&raquo;, по&nbsp;сути, остались лишь консоль передней панели, изготовленная из&nbsp;магниевого сплава, и&nbsp;стальные двери, пол в&nbsp;задней части кузова, крышка багажника и&nbsp;подрамник (благодаря подобной комбинации материалов развесовка по&nbsp;осям приближается к&nbsp;значению 50/50). По&nbsp;сравнению с&nbsp;предшественником, новый&nbsp;XF стал легче на&nbsp;190&nbsp;кг при увеличении жесткости на&nbsp;кручение на&nbsp;28&nbsp;%. Насколько разработчики нового&nbsp;XF использовали возможности унификации? Вот что говорит директор по&nbsp;развитию модельного ряда Jaguar Крис Маккиннон: &laquo;Для нас было&nbsp;бы проще производить этот автомобиль на&nbsp;общей базе с&nbsp;моделью&nbsp;XE, но&nbsp;новый Jaguar XF&nbsp;имеет 81&nbsp;% индивидуальных деталей&raquo;.</p>\r\n\r\n<p>Кстати, о&nbsp;генетике: внешнее сходство&nbsp;XE и&nbsp;XF отнюдь не&nbsp;говорит о&nbsp;том, что они близняшки по&nbsp;характеру. А&nbsp;рассматривая Jaguar XF&nbsp;анфас, особенно хищный, нет, даже презрительный прищур фар (это первый Jaguar, оснащенный полностью адаптивной системой светодиодных фар) и&nbsp;скрытые под сетчатой решеткой пасти воздухозаборников, я&nbsp;уже был готов к&nbsp;определению &laquo;агрессивный&raquo;. Но&nbsp;тут&nbsp;же вспомнил слова Яна Каллума: &laquo;XF&nbsp;не&nbsp;агрессивный&nbsp;&mdash; он&nbsp;основательный&raquo;. Наверное, по&nbsp;отношению к&nbsp;бизнес-седану это определение куда лучше.</p>', 'eade56916e765cabaa2054c2a0d72b98.jpg', 1, 'Jaguar XF: приручить хищника', 'Создан новый XF на алюминиевой платформе: алюминий в конструкции составляет 75 %, причем 50 % — алюминий вторичного использования, чем очень гордятся в Jaguar.', 'Создан новый XF на алюминиевой платформе: алюминий в конструкции составляет 75 %, причем 50 % — алюминий вторичного использования, чем очень гордятся в Jaguar.', '2015-12-19 09:18:02'),
(16, 'Volkswagen не будет выпускать серийную версию кроссовера Taigun', 'volkswagen-ne-budet-vypuskat-serijnuyu-versiyu-krossovera-taigun', 'Немецкая компания Volkswagen решила не делать серийный кроссовер по мотивам концепта Taigun.', '<p>Немецкая компания&nbsp;Volkswagen&nbsp;решила не делать серийный кроссовер по мотивам концепта Taigun. Представители компании решили, что подобный кроссовер окажется слишком компактным и не будет пользоваться спросом. Напомним, габаритная длинна концептуального кроссовера Taigun, премьера которого состоялась в 2012 году, ровна 3859 мм.</p>\r\n\r\n<p>Стоит отметить, что это не означает, что компания Фольксваген не выпустит компактный кроссовер, автопроизводитель создаст кроссовер, который окажется крупнее Taigun и сможет конкурировать с такими моделями как Mazda CX-3 и Nissan Juke.</p>\r\n\r\n<p>Не исключено, что концептуальную версию будущего кроссовера представят в марте на автосалоне в Женеве. Серийная же версия кроссовера стоит ждать ближе к 2018 году.</p>', '4bb80aba8b5c808ade308d2cff4f2c18.jpg', 1, 'Volkswagen не будет выпускать серийную версию кроссовера Taigun', 'Немецкая компания Volkswagen решила не делать серийный кроссовер по мотивам концепта Taigun.', 'Немецкая компания Volkswagen решила не делать серийный кроссовер по мотивам концепта Taigun.', '2015-12-22 14:00:51');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `idItem` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `text` text,
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `system` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`idItem`, `title`, `alias`, `text`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`, `system`) VALUES
(10, 'Политика конфиденциальности', 'confidence', '<p>Политика конфиденциальности</p>', 1, 'Политика конфиденциальности', 'Политика конфиденциальности', 'Политика конфиденциальности', '2015-12-08 14:32:38', 1),
(11, 'О компании', 'about', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae erat quis nunc lacinia cursus sed sit amet ligula. Pellentesque dictum, mi vitae mattis dictum, eros ex aliquet lorem, lacinia euismod sem arcu id massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed leo ante, ullamcorper vel diam quis, finibus egestas velit. Sed efficitur dignissim bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus suscipit ut mauris quis tempor. Donec dignissim neque quis turpis finibus mollis. Nunc posuere egestas dolor in fermentum. Nam feugiat, nisl non tempus tincidunt, augue ex ullamcorper quam, ac ultrices enim purus rutrum lectus. Aenean cursus ex est, quis fermentum orci viverra at. Curabitur dictum erat at lorem venenatis, ac elementum nulla congue. Donec et porttitor dolor, ac gravida libero. Aenean ac rhoncus velit. Ut felis metus, molestie quis condimentum sit amet, accumsan tincidunt odio. Etiam hendrerit mauris id orci ornare feugiat.</p>\r\n\r\n<p>Proin rhoncus ullamcorper interdum. Cras felis dolor, imperdiet non nulla quis, pharetra efficitur arcu. Vestibulum feugiat feugiat dolor nec cursus. Sed scelerisque a risus at molestie. Etiam vel pharetra ex. Suspendisse placerat nunc condimentum, sagittis enim quis, convallis neque. Aenean volutpat maximus tortor quis euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut eleifend non felis a suscipit. Duis at auctor massa. Nulla nulla mi, commodo non bibendum nec, fringilla vitae diam. Donec ac sagittis est. Etiam auctor leo neque, et elementum odio viverra non.</p>\r\n\r\n<p>Praesent pharetra fringilla condimentum. Donec in dapibus sem, ut efficitur orci. Sed et arcu dolor. Proin aliquet sed felis porttitor gravida. Duis eget tellus ut nibh fermentum malesuada. Nam nec semper arcu. Ut neque tellus, auctor sit amet aliquet at, sodales non lectus. In vitae arcu at nisl maximus dapibus quis eget metus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', 1, 'О компании', 'О компании', 'О компании', '2016-02-07 01:21:03', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages_admin`
--

CREATE TABLE `pages_admin` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT NULL,
  `upline` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `link` text,
  `icon` varchar(255) DEFAULT 'link',
  `num` int(11) DEFAULT '1',
  `access` int(11) DEFAULT '2',
  `create_btn` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_admin`
--

INSERT INTO `pages_admin` (`idItem`, `idParent`, `upline`, `alias`, `name`, `title`, `text`, `link`, `icon`, `num`, `access`, `create_btn`) VALUES
(1, 0, '0.1', 'home', 'Главная', 'Домашняя страница', NULL, 'home', 'home', 1, 2, 0),
(2, 1, '0.1.2', 'navigation', 'Навигация', 'Навигация сайта', NULL, 'navigation', 'sitemap', 2, 2, 1),
(3, 1, '0.1.3', 'slider', 'Слайдер', 'Слайдер', NULL, 'slider', 'clone', 1, 2, 1),
(4, 1, '0.1.4', 'footer', 'Футер', 'Ссылки в футере', NULL, 'footer', 'link', 4, 2, 1),
(5, 0, '0.5', '//sector', 'Обратная связь', 'Обратная связь', NULL, NULL, 'bell', 2, 2, 0),
(7, 5, '0.5.7', 'feedback', 'Обратная связь', 'Обратная связь', NULL, 'feedback', 'envelope-o', 1, 2, 0),
(8, 0, '0.8', '//sector', 'Контент', 'Контент', NULL, NULL, 'bars', 3, 2, 0),
(9, 8, '0.8.9', 'articles', 'Статьи', 'Статьи', NULL, 'articles', 'file-text-o', 2, 2, 1),
(10, 8, '0.8.10', 'pages', 'Страницы', 'Информационные страницы', NULL, 'pages', 'files-o', 10, 2, 1),
(11, 0, '0.11', '//sector', 'Управление сайтом', 'Управление сайтом', NULL, NULL, 'cogs', 10, 2, 0),
(12, 11, '0.11.12', 'users', 'Пользователи', 'Пользователи', NULL, 'users', 'users', 1, 2, 0),
(13, 11, '0.11.13', 'pageinfo', 'Страницы', 'Управление страницами сайта', NULL, 'pageinfo', 'desktop', 1, 2, 0),
(14, 11, '0.11.14', 'settings', 'Настройки', 'Настройки сайта', NULL, 'settings', 'cog', 1, 2, 0),
(15, 0, '0.15', 'files', 'Менеджер файлов', 'Менеджер файлов', NULL, 'files', 'folder-open', 9, 2, 0),
(16, 8, '0.8.16', 'news', 'Новости', 'Новости', NULL, 'news', 'bullhorn', 1, 2, 1),
(17, 8, '0.8.17', 'services', 'Услуги', 'Услуги', NULL, 'services', 'briefcase', 3, 2, 1),
(18, 8, '0.8.18', 'gallery', 'Галлерея', 'Галлерея', NULL, 'gallery', 'picture-o', 4, 2, 1),
(19, 5, '0.5.19', 'reviews', 'Отзывы', 'Отзывы', NULL, 'reviews', 'comment-o', 2, 2, 1),
(20, 5, '0.5.20', 'faq', 'Вопрос-ответ', 'Вопрос-ответ', NULL, 'faq', 'comments-o', 3, 2, 1),
(21, 11, '0.11.16', 'panel', 'Админ-панель', 'Настройки админ-панели', NULL, 'panel', 'compass', 4, 2, 0),
(22, 1, '0.1.22', 'leftmenu', 'Боковое меню', 'Боковое меню', NULL, 'leftmenu', 'list-ul', 2, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages_site`
--

CREATE TABLE `pages_site` (
  `idItem` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL COMMENT 'может быть какой угодно, не как в Pages_admin',
  `name` varchar(255) DEFAULT NULL COMMENT 'название страницы - хлебные крошки',
  `title` varchar(255) DEFAULT NULL COMMENT 'заголовок страницы',
  `brief` text,
  `text` text,
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `thumb_enable` int(11) DEFAULT '0',
  `thumb_x` int(11) DEFAULT '0',
  `thumb_y` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages_site`
--

INSERT INTO `pages_site` (`idItem`, `alias`, `name`, `title`, `brief`, `text`, `mTitle`, `mKeywords`, `mDescription`, `thumb_enable`, `thumb_x`, `thumb_y`) VALUES
(24, 'home', 'Главная', 'Главное о компании', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<p>В основе успеха компании HORAUF в области производства бумажных стаканчиков лежит тот факт, что заказчикам предлагаются проекты и готовые решения для выпуска бумажных стаканчиков по самым высоким в упаковочной промышленности стандартам. К качеству питьевых стаканчиков рынок предъявляет наиболее высокие требования. Такие бумажные стаканчики, как для кофе, требуют высокой производственной скорости и высочайшего качества герметизации боковых швов и донышек. ВМР &ndash; линейка машин для производства бумажных стаканчиков в производственной программе компании HORAUF.</p>\r\n\r\n<p>Оборудование BMP 100 - компактная конструкция станков предлагает эффективное производство бумажных стаканчиков с достаточно высокой скоростью, а отработанная технология гарантирует высокое качество конечного продукта. ВМР 100 Compact предназначена для производства бумажных стаканчиков для напитков, бумажных контейнеров для продуктов быстрого приготовления. BMP 100 Super &ndash; для производства бумажных стаканчиков под мороженое, лапшу, бумажные стаканы с изолированными двойными стенками. Серия BMP 200 является наиболее универсальной моделью для изготовления бумажных стаканов и бумажных контейнеров не круглой формы, работающим на очень высоких скоростях до 240 шт./мин. Имеющиеся опции открывают широкие возможности не только на рынке бумажных стаканчиков, но и на быстро развивающемся рынке пищевой упаковки. Оборудование BMP 200 Universal производит бумажные стаканчики для напитков и бумажные контейнеры для продуктов быстрого приготовления. BMP 200 Speed &ndash; бумажные стаканы под мороженое, лапшу, бумажные стаканы с изолированными двойными стенками. Серия BMP 300/400 является самым быстрым в мире оборудованием для производства бумажных стаканчиков для напитков, работающим на скорости 330 шт./мин. при диапазоне размеров до 907 г.</p>', 'Главная', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(25, 'services', 'Услуги', 'Услуги', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<p>В основе успеха компании HORAUF в области производства бумажных стаканчиков лежит тот факт, что заказчикам предлагаются проекты и готовые решения для выпуска бумажных стаканчиков по самым высоким в упаковочной промышленности стандартам. К качеству питьевых стаканчиков рынок предъявляет наиболее высокие требования. Такие бумажные стаканчики, как для кофе, требуют высокой производственной скорости и высочайшего качества герметизации боковых швов и донышек. ВМР &ndash; линейка машин для производства бумажных стаканчиков в производственной программе компании HORAUF.</p>\r\n\r\n<p>Оборудование BMP 100 - компактная конструкция станков предлагает эффективное производство бумажных стаканчиков с достаточно высокой скоростью, а отработанная технология гарантирует высокое качество конечного продукта. ВМР 100 Compact предназначена для производства бумажных стаканчиков для напитков, бумажных контейнеров для продуктов быстрого приготовления. BMP 100 Super &ndash; для производства бумажных стаканчиков под мороженое, лапшу, бумажные стаканы с изолированными двойными стенками. Серия BMP 200 является наиболее универсальной моделью для изготовления бумажных стаканов и бумажных контейнеров не круглой формы, работающим на очень высоких скоростях до 240 шт./мин. Имеющиеся опции открывают широкие возможности не только на рынке бумажных стаканчиков, но и на быстро развивающемся рынке пищевой упаковки. Оборудование BMP 200 Universal производит бумажные стаканчики для напитков и бумажные контейнеры для продуктов быстрого приготовления. BMP 200 Speed &ndash; бумажные стаканы под мороженое, лапшу, бумажные стаканы с изолированными двойными стенками. Серия BMP 300/400 является самым быстрым в мире оборудованием для производства бумажных стаканчиков для напитков, работающим на скорости 330 шт./мин. при диапазоне размеров до 907 г.</p>', 'Услуги', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 200, 200),
(26, 'news', 'Новости', 'Новости', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Новости', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 300, 200),
(27, 'articles', 'Статьи', 'Статьи', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Статьи', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 300, 200),
(28, 'gallery', 'Галерея', 'Галерея', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Галерея', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 300, 200),
(29, 'reviews', 'Отзывы', 'Отзывы', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Отзывы', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 200, 200),
(30, 'faq', 'Вопрос-ответ', 'Вопрос-ответ', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Вопрос-ответ', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(31, 'contacts', 'Контакты', 'Контакты', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Контакты', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(32, 'errors', 'Ошибка 404', 'Ошибка 404', 'Страница не найдена!', '', 'Ошибка 404', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `idItem` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` text,
  `img` text,
  `text` text,
  `visibility` int(11) DEFAULT '0',
  `isRead` int(11) DEFAULT '0',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`idItem`, `name`, `phone`, `email`, `link`, `img`, `text`, `visibility`, `isRead`, `addDate`) VALUES
(5, 'Владислав Запорожец', NULL, NULL, 'https://vk.com/zaporozhets_vladislav', 'dd8a9e86746e3386c3026690075e8617.jpg', 'Nulla tempor, felis ut molestie feugiat, sem ante sollicitudin leo, sed vestibulum magna nulla eget urna. Vivamus pharetra ligula ac eros venenatis porta. Aliquam egestas vel massa non lobortis. Sed sit amet suscipit lectus. Duis eget erat non quam blandit posuere sed at tellus. Vestibulum lacinia justo at quam interdum, ac ullamcorper augue suscipit. Vestibulum aliquet massa id ipsum aliquet elementum. Curabitur blandit in metus eget tempor. Pellentesque pharetra nibh nisi, quis bibendum velit tincidunt sed. Vestibulum quam diam, blandit et dolor quis, tincidunt rutrum diam. Cras pulvinar urna vel lacus dictum, eu mattis felis cursus.', 1, 1, '2016-03-09 09:50:27'),
(6, 'Руслан', NULL, NULL, 'http://narisuemvse.by', 'ce958b1c6f557ac40c79439423632e8a.jpg', 'Curabitur nibh augue, auctor vel porttitor et, lacinia sit amet metus. Integer non venenatis purus. Maecenas vehicula at ligula pulvinar fermentum. Phasellus nec finibus sem, eget mattis neque. Phasellus tortor eros, faucibus a sem vitae, egestas varius enim. Suspendisse potenti. Curabitur id feugiat justo.', 1, 1, '2016-03-09 09:53:34'),
(8, 'Оля', '+375 (11) 111-11-11', NULL, '', NULL, 'Cras id nunc imperdiet, sagittis purus in, vulputate sapien. Vestibulum bibendum nunc vitae tortor convallis, eu dapibus nulla aliquam. Donec elit libero, cursus vel fringilla non, tempus eget lacus', 0, 0, '2016-03-11 14:13:16');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `idItem` int(11) NOT NULL,
  `idParent` int(11) DEFAULT '0',
  `upline` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `home` int(11) DEFAULT '0',
  `home_num` int(11) DEFAULT '0'
) ENGINE=InnoDB AVG_ROW_LENGTH=512 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`idItem`, `idParent`, `upline`, `title`, `alias`, `text`, `img`, `num`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`, `home`, `home_num`) VALUES
(14, 0, '0.14', 'Картонная посуда', 'kartonnaya-posuda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', NULL, 10, 1, 'Картонная посуда', 'Картонная посуда', 'Картонная посуда', '2016-04-19 12:41:56', 0, 0),
(15, 14, '0.14.15', 'Картонные стаканчики', 'kartonnye-stakanchiki', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', 'aeb932abfac32277473385b8bed7ef31.jpg', 10, 1, 'Картонные стаканчики', 'Картонные стаканчики', 'Картонные стаканчики', '2016-04-19 12:42:35', 1, 10),
(16, 14, '0.14.16', 'Картонные тарелки', 'kartonnye-tarelki', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', 'ccce7e9b65b36a75a2b94dea876283fa.jpg', 9, 1, 'Картонные тарелки', 'Картонные тарелки', 'Картонные тарелки', '2016-04-19 12:42:51', 1, 9),
(17, 0, '0.17', 'Упаковка для фаст-фуда', 'upakovka-dlya-fast-fuda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', NULL, 9, 1, 'Упаковка для фаст-фуда', 'Упаковка для фаст-фуда', 'Упаковка для фаст-фуда', '2016-04-19 12:43:30', 0, 1),
(18, 17, '0.17.18', 'Контейнер для супа', 'kontejner-dlya-supa', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', '99dc75c2997dc6f5d6a4e38a6379b196.jpg', 10, 1, 'Контейнер для супа', 'Контейнер для супа', 'Контейнер для супа', '2016-04-19 12:44:21', 1, 8),
(19, 17, '0.17.19', 'Коробка для лапши', 'korobka-dlya-lapshi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', '88a56dd63399952c04bdc8ea920254f2.jpg', 9, 1, 'Коробка для лапши', 'Коробка для лапши', 'Коробка для лапши', '2016-04-19 12:44:48', 1, 7),
(20, 17, '0.17.20', 'Коробка для пиццы', 'korobka-dlya-piccy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', 'a4d1cc5a1f2d9c475803ec6784d74191.jpg', 7, 1, 'Коробка для пиццы', 'Коробка для пиццы', 'Коробка для пиццы', '2016-04-19 12:45:14', 1, 6),
(21, 0, '0.21', 'Сопутствующие товары', 'soputstvuyushie-tovary', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at bibendum nisl, non luctus dui. Nam erat quam, porttitor quis pellentesque ac, posuere ut felis. Donec in consectetur libero, eget semper leo. Phasellus finibus odio quis odio imperdiet aliquam dapibus sit amet tortor. Nulla vel viverra metus. Integer malesuada enim volutpat facilisis viverra. Aliquam eu sapien in eros imperdiet ultricies. Donec ante nisi, congue at blandit a, suscipit ac libero. Aliquam ornare eu nunc vitae auctor. Quisque posuere rutrum metus id laoreet. Aenean feugiat vulputate sodales. Vivamus nec aliquet leo.</p>\r\n\r\n<p><strong>Mauris in volutpat enim, sit amet maximus leo. Maecenas congue lorem ut purus fringilla elementum. </strong>Aenean non lectus id eros faucibus vulputate. Sed elementum faucibus scelerisque. Morbi gravida erat sit amet erat finibus, sed blandit felis luctus. In facilisis cursus cursus. Suspendisse consectetur dolor ligula, nec pharetra ante porttitor quis. Nunc eu dignissim dui. Aenean egestas, lectus at feugiat suscipit, ante lectus mollis nulla, eu porttitor justo neque id dui. Praesent eget dignissim dolor. In nec ante sed justo pharetra accumsan ac at elit.</p>\r\n\r\n<p><em>Vivamus ultricies lectus at nunc placerat, interdum bibendum turpis facilisis. Aenean finibus dapibus orci in pharetra. Donec eget justo congue, efficitur mauris ut, pellentesque libero. Vivamus posuere risus eu viverra finibus. Vivamus lobortis justo elit, quis pretium turpis mollis non. Nulla facilisi. Curabitur auctor nibh vitae velit dignissim porta. Praesent egestas lobortis velit, eget blandit enim malesuada id.</em></p>\r\n\r\n<p>Pellentesque consectetur nunc nec sem interdum, sit amet blandit risus viverra. Phasellus aliquam ultrices tellus, a condimentum dolor volutpat vel. Phasellus eu orci sollicitudin, faucibus nulla eu, ultricies augue. Suspendisse eu ullamcorper odio.</p>\r\n\r\n<ul>\r\n	<li>Phasellus tristique arcu in nibh fringilla venenatis.</li>\r\n	<li>Phasellus eget luctus neque, in elementum diam.</li>\r\n	<li>Ut quis tellus sed purus lacinia malesuada sed sed nunc.</li>\r\n</ul>\r\n\r\n<p>Maecenas iaculis, purus quis ullamcorper aliquet, nulla arcu ultrices nibh, sed tristique lectus risus sed nulla. Nulla fringilla nisl eget lorem lobortis commodo. Aliquam erat volutpat. Suspendisse id mollis ipsum.</p>\r\n', NULL, 7, 1, 'Сопутствующие товары', 'Сопутствующие товары', 'Сопутствующие товары', '2016-04-19 16:42:16', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `idItem` int(11) NOT NULL,
  `theme` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `img` text,
  `owner` text,
  `details` text,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `phoneCity` varchar(255) DEFAULT NULL,
  `adres` text,
  `map` text,
  `email` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` text,
  `mDescription` text,
  `enable` int(11) DEFAULT '1',
  `capTitle` varchar(255) DEFAULT NULL,
  `capDescr` text,
  `menuTitle` varchar(255) DEFAULT NULL,
  `phoneMask` varchar(255) DEFAULT NULL,
  `phone2Mask` varchar(255) DEFAULT NULL,
  `phoneCityMask` varchar(255) DEFAULT NULL,
  `showImg` int(11) DEFAULT '1'
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`idItem`, `theme`, `title`, `descr`, `img`, `owner`, `details`, `phone`, `phone2`, `phoneCity`, `adres`, `map`, `email`, `skype`, `mTitle`, `mKeywords`, `mDescription`, `enable`, `capTitle`, `capDescr`, `menuTitle`, `phoneMask`, `phone2Mask`, `phoneCityMask`, `showImg`) VALUES
(2, NULL, 'Картон продукт', 'производство и реализация и доставка бумажной посуды', 'logo.png', 'Owner Name', 'Индивидуальный предприниматель Рудь Руслан Викторович\r\n211440, Витебская область, г.п.Боровуха, ул.Армейская, д.28, кв.36', '330000000', '290000000', '0214000000', 'г.Минск, ул.Коммунистическая, 5, офис 415', '&lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2257.940191571558!2d28.646495916064257!3d55.53341101635849!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46c485470fe797a1:0xa7008b17bd5f2a6b!2z0K7QsdC40LvQtdC50L3QsNGPINGD0LsuIDLQsCwg0J3QvtCy0L7Qv9C-0LvQvtGG0Lo!5e0!3m2!1sru!2sby!4v1454916173145\" width=\"100%\" height=\"250\" frameborder=\"0\" style=\"border:0\" allowfullscreen&gt;&lt;/iframe&gt;', 'narisuemvse.testmail@yandex.ru', 'skype_login', 'Картон продукт', 'производство и реализация и доставка бумажной посуды', 'производство и реализация и доставка бумажной посуды', 1, 'Сайт временно закрыт', 'Приносим свои извинения и гарантируем в скором времени наладить работу', 'Услуги и продукция', '+375 (??) ???-??-??', '+375 (??) ???-??-??', '8 (????) ??-??-??', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `idItem` int(11) NOT NULL,
  `title` text,
  `text` text,
  `btnLabel` varchar(255) DEFAULT NULL,
  `btnLink` text,
  `btn2Label` varchar(255) DEFAULT NULL,
  `btn2Link` text,
  `position` varchar(255) DEFAULT 'left',
  `num` int(11) DEFAULT '1',
  `img` text,
  `mob` text,
  `visibility` tinyint(1) DEFAULT '1',
  `showText` tinyint(1) NOT NULL DEFAULT '1',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`idItem`, `title`, `text`, `btnLabel`, `btnLink`, `btn2Label`, `btn2Link`, `position`, `num`, `img`, `mob`, `visibility`, `showText`, `addDate`) VALUES
(13, 'Удобная, стильная и практичная посуда', 'для ваших требовательных\r\nклиентов и посетителей', 'Узнать подробнее', '', '', '', 'left', 10, '39eb30b656157d7323f1318a09f50b8c.jpg', '7209097b4e7b7675022b064a9bc3476f.jpg', 1, 1, '2018-08-31 12:08:42'),
(14, 'Удобная, стильная и практичная посуда', 'для ваших требовательных\r\nклиентов и посетителей', 'Узнать подробнее', '/services', '', '', 'left', 9, 'c5207909f65db0971e12dacd791f127b.jpg', '1b4a9fab0198561e9e5d3faec2db7dbd.jpg', 1, 1, '2018-08-31 12:10:09');

-- --------------------------------------------------------

--
-- Структура таблицы `theme_admin`
--

CREATE TABLE `theme_admin` (
  `idItem` int(11) NOT NULL,
  `current` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `theme_admin`
--

INSERT INTO `theme_admin` (`idItem`, `current`, `title`, `alias`, `brief`) VALUES
(1, 1, 'NarisuemVse Admin Panel', 'narisuemvse', 'Стандартная тема от команды \"Нарисуем все\". Приятный интерфейс и воздушные цвета придутся по вкусу любителям минимализма.'),
(2, 0, 'VIX-CMS Admin Panel', 'vix', NULL),
(3, 0, 'Gradient Admin Panel', 'gradient', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `idItem` int(11) NOT NULL,
  `access` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` text,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`idItem`, `access`, `login`, `password`, `email`, `name`, `sname`, `lname`, `addDate`) VALUES
(1, 'admin', 'admin', '46f94c8de14fb36680850768ff1b7f2a', 'narisuemvse.testmail@yandex.ru', 'Иван', 'Иванов', '', '2015-06-06 12:49:47'),
(8, 'admin', 'moderator', '46f94c8de14fb36680850768ff1b7f2a', 'narisuemvse@mail.ru', 'Петр', 'Петров', NULL, '2015-11-17 12:07:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `gallery_imgs`
--
ALTER TABLE `gallery_imgs`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `pages_admin`
--
ALTER TABLE `pages_admin`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `pages_site`
--
ALTER TABLE `pages_site`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`idItem`),
  ADD UNIQUE KEY `UK_slider_idItem` (`idItem`),
  ADD KEY `IDX_slider_addDate` (`addDate`);

--
-- Индексы таблицы `theme_admin`
--
ALTER TABLE `theme_admin`
  ADD PRIMARY KEY (`idItem`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idItem`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `faq`
--
ALTER TABLE `faq`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `footer`
--
ALTER TABLE `footer`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `gallery_imgs`
--
ALTER TABLE `gallery_imgs`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT для таблицы `navigation`
--
ALTER TABLE `navigation`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `pages_admin`
--
ALTER TABLE `pages_admin`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `pages_site`
--
ALTER TABLE `pages_site`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `theme_admin`
--
ALTER TABLE `theme_admin`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
