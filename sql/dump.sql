-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица puzzle.blocks
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(200) NOT NULL,
  `title` varchar(300) NOT NULL,
  `body` mediumtext,
  `created_ip` varchar(256) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(256) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы puzzle.blocks: ~2 rows (приблизительно)
DELETE FROM `blocks`;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` (`id`, `alias`, `title`, `body`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'header', 'Шапка', '<header class="header">\r\n            <div class="main-menu">\r\n                <div class="container">\r\n                    <div class="row">\r\n                        <div class="col-xs-3">\r\n                            <div class="logo">\r\n                                <a href="/"><img class="" src="/img/logo5.png"></a>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-xs-4">\r\n                            <div class="social-menu">\r\n                                <a href="http://vk.com/"><img class="icon" src="/img/vk-blue3.png" alt=""></a>\r\n                                <a href="http://facebook.com/"><img class="icon" src="/img/facebook26-blue3.png" alt=""></a>\r\n                                <a href="http://instagram.com/"><img class="icon" src="/img/instagram3-blue3.png" alt=""></a>\r\n                                <a href="http://twitter.com/"><img class="icon" src="/img/twitter16-blue3.png" alt=""></a>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-xs-5">\r\n                            <div class="contacts">\r\n                                <div class="phone-cta">Звоните!</div>\r\n                                <div class="phone">8 (8352) 12-34-56</div>\r\n                                <div class="address">г. Чебоксары ул. Ленинского Комсомола, 12&nbsp;А</div>\r\n                                <div class="time">Режим работы: с 10:00 до 22:00</div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class="navigation-menu">\r\n                <div class="navigation">\r\n                    <nav class="navbar navbar-default" id="mainNavbar">\r\n                        <div class="container">\r\n                            <ul class="nav navbar-nav">\r\n                                <li><a href="/#about">О нас</a></li>\r\n                                <li><a href="/#tarifs">Тарифы</a></li>\r\n                                <li><a href="/#events">Мероприятия</a></li>\r\n                                <li><a href="/#rent1">Аренда пространства</a></li>\r\n                                <li><a href="/#rent2">Аренда переговорной</a></li>\r\n                                <li><a href="/#reviews">Отзывы</a></li>\r\n                            </ul>\r\n                        </div>\r\n                    </nav>\r\n                </div>\r\n            </div>\r\n        </header>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:14', 1, 'zzeraw', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-02-25 09:20:27', 2, 'manager', 1),
	(2, 'footer', 'Подвал', '<footer class="footer">\n            <div class="container">\n                <div class="col-xs-2">\n                    <div class="copyright">\n                        &copy; 2015\n                    </div>\n                </div>\n                <div class="col-xs-4">\n                    <div class="social-menu">\n                        <a href="http://vk.com/"><img class="icon" src="/img/vk-white.png" alt=""></a>\n                        <a href="http://facebook.com/"><img class="icon" src="/img/facebook26-white.png" alt=""></a>\n                        <a href="http://instagram.com/"><img class="icon" src="/img/instagram3-white.png" alt=""></a>\n                        <a href="http://twitter.com/"><img class="icon" src="/img/twitter16-white.png" alt=""></a>\n                    </div>\n                </div>\n                <div class="col-xs-6">\n                    <div class="contacts">\n                        <div class="phone-cta">\n                            Звоните!\n                        </div>\n                        <div class="phone">8 (8352) 12-34-56</div>\n                        <div class="address">г. Чебоксары, ул. Ленинского Комсомола, 12&nbsp;А</div>\n                        <br>\n                        <div class="cta">\n[*FormWidget|template_name=callback_form;form_caption=Заказ обратного звонка;button_text=Заказать обратный звонок;button_class=btn btn-danger;form_button_text=Заказать;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "textarea","name": "comment","label": "В какое время вам перезвонить?","value": "","validation": [],"html": {"placeholder": "Укажите время для обратного звонка или любые другие пожелания"}}];email_subject=Поступила заявка на обратный звонок*]\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </footer>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:27', 1, 'zzeraw', '94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.94 Safari/537.36', '2015-02-25 09:20:27', 2, 'manager', 1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;


-- Дамп структуры для таблица puzzle.events
DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `author` varchar(300) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `body` mediumtext,
  `image` varchar(300) DEFAULT NULL,
  `image_attr_title` varchar(300) DEFAULT NULL,
  `image_attr_alt` varchar(300) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы puzzle.events: ~6 rows (приблизительно)
DELETE FROM `events`;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `title`, `author`, `datetime`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Лекция по астрономии: «Почему параллельна природа гамма-всплексов?»', 'Шаляпин Федор', '2015-04-12 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(2, 'Лекция по геологии: «Юрский биотит: методология и особенности»', 'Никулин Юрий', '2015-04-13 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(3, 'Лекция по гироскопии: «Прецизионный ротор: основные моменты»', 'Шульженко Клавдия', '2015-06-14 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(4, 'Лекция по литературоведению: «Глубокий композиционный анализ в XXI веке»', 'Бондарчук Сергей', '2015-04-15 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(5, 'Лекция по математике: «Равновероятный ряд Тейлора: предпосылки и развитие»', 'Михалков Сергей', '2015-04-16 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(6, 'Лекция по почвоведению: «Почему когерентна гумусированность?»', 'Лещенко Лев', '2015-06-17 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;


-- Дамп структуры для таблица puzzle.form_requests
DROP TABLE IF EXISTS `form_requests`;
CREATE TABLE IF NOT EXISTS `form_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `custom` mediumtext,
  `utm` mediumtext,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы puzzle.form_requests: ~0 rows (приблизительно)
DELETE FROM `form_requests`;
/*!40000 ALTER TABLE `form_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_requests` ENABLE KEYS */;


-- Дамп структуры для таблица puzzle.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `begin_body` text,
  `end_body` text,
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '0',
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  `meta_index` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы puzzle.pages: ~1 rows (приблизительно)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `alias`, `begin_body`, `end_body`, `show_in_menu`, `show_title`, `module`, `template`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Главная', '', '<main>\r\n            <div class="banners-block block">\r\n                <div class="top-menu">\r\n\r\n                </div>\r\n\r\n                <div class="banners">\r\n                    <div id="carousel-generic" class="carousel slide" data-ride="carousel">\r\n\r\n                        <!-- <ol class="carousel-indicators">\r\n                            <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>\r\n                            <li data-target="#carousel-generic" data-slide-to="1"></li>\r\n                            <li data-target="#carousel-generic" data-slide-to="2"></li>\r\n                        </ol> -->\r\n\r\n                        <div class="carousel-inner" role="listbox">\r\n                            <!-- <div class="item active" style="background-image: url(http://placehold.it/2000x400&text=+)"> -->\r\n                            <div class="item active">\r\n                                <div class="container">\r\n                                    <div class="row">\r\n                                        <div class="col-xs-6">\r\n                                            <div class="description">\r\n                                                <p>Аренда недорогих комфортных и полностью оснащенных рабочих мест в Чебоксарах.</p>\r\n                                                <p>Пространство для проведения мероприятий, удобный конференц-зал и переговорная комната вместимостью до 20 человек.</p>\r\n                                            </div>\r\n                                        </div>\r\n                                        <div class="col-xs-6">\r\n                                            [*FormWidget|template_name=clear_form;form_button_text=Получить бесплатный день;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];email_subject=Поступила заявка на бесплатный день*]\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n\r\n                        <!-- <a class="left carousel-control" href="#carousel-generic" role="button" data-slide="prev">\r\n                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>\r\n                            <span class="sr-only">Previous</span>\r\n                        </a>\r\n                        <a class="right carousel-control" href="#carousel-generic" role="button" data-slide="next">\r\n                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>\r\n                            <span class="sr-only">Next</span>\r\n                        </a> -->\r\n                    </div>\r\n                </div>\r\n\r\n                <div class="bottom-menu">\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <div class="icons-block block">\r\n                <div class="container">\r\n                    <table class="icons">\r\n                        <tr>\r\n                            <td>\r\n                                <div class="icon">\r\n                                    <img src="/img/comfort_img_02.png" alt="">\r\n                                </div>\r\n                                <div class="text">\r\n                                    Интернет\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="icon">\r\n                                    <img src="/img/comfort_img_03.png" alt="">\r\n                                </div>\r\n                                <div class="text">\r\n                                    Оргтехника\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="icon">\r\n                                    <img src="/img/comfort_img_04.png" alt="">\r\n                                </div>\r\n                                <div class="text">\r\n                                    Напитки\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="icon">\r\n                                    <img src="/img/comfort_img_05.png" alt="">\r\n                                </div>\r\n                                <div class="text">\r\n                                    Администратор\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="icon">\r\n                                    <img src="/img/comfort_img_06.png" alt="">\r\n                                </div>\r\n                                <div class="text">\r\n                                    Переговорная комната\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="icon">\r\n                                    <img src="/img/comfort_img_07.png" alt="">\r\n                                </div>\r\n                                <div class="text">\r\n                                    Библиотека\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="icon">\r\n                                    <img src="/img/comfort_img_08.png" alt="">\r\n                                </div>\r\n                                <div class="text">\r\n                                    Досуг\r\n                                </div>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="about-block block" id="about">\r\n                <div class="container">\r\n\r\n                    <h2 class="throw-line"><span>Что такое &laquo;Пазл&raquo;?</span></h2>\r\n\r\n                    <div class="row">\r\n                        <div class="col-xs-8">\r\n                            <p>&laquo;Пазл&raquo;&nbsp;&mdash; это рабочее пространство в&nbsp;Чебоксарах, с&nbsp;возможностью почасовой, посуточной и&nbsp;месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.</p>\r\n\r\n                            <p>Здесь работают над своими проектами предприниматели, дизайнеры, архитекторы, IT-специалисты, профессионалы и&nbsp;фрилансеры всех мастей.</p>\r\n\r\n                            <p>У&nbsp;нас вы&nbsp;можете:</p>\r\n\r\n                            <ul>\r\n                                <li>Комфортно работать;</li>\r\n                                <li>Воспользоваться переговорной комнатой для встречи с&nbsp;клиентом;</li>\r\n                                <li>Познакомиться с&nbsp;людьми разных профессий;</li>\r\n                                <li>Заявить о&nbsp;своем проекте и&nbsp;собрать команду;</li>\r\n                                <li>Получить рекомендацию профи на&nbsp;открытых семинарах;</li>\r\n                                <li>Приятно провести время за&nbsp;бизнес-игрой, общением.</li>\r\n                            </ul>\r\n\r\n                        </div>\r\n\r\n                        <div class="col-xs-4">\r\n                            <img class="preview-foto" src="http://placehold.it/300x300">\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n\r\n            <div class="free-day-block block" id="tarifs">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Получи бесплатное занятие</span></h2>\r\n\r\n                    <div class="row">\r\n                        <div class="col-xs-9">\r\n                            <div class="text">\r\n                                <p>Проще всего прийти и увидеть все своими глазами, познакомиться, выпить чашку кофе. Выбирайте дату, берите ноутбук и оставайтесь работать целый день.</p>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col-xs-3">\r\n                            <div class="buton">\r\n[*FormWidget|template_name=modal_default_form;button_text=Получить бесплатный день;button_class=btn btn-primary;form_caption=Получи бесплатный день в коворкинге ПАЗЛ;form_button_text=Получить бесплатный день;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];email_subject=Поступила заявка на бесплатный день*]\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="numbers-block block">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Рабочее пространство &laquo;Пазл&raquo; в цифрах</span></h2>\r\n\r\n                    <table class="numbers">\r\n                        <tr>\r\n                            <td>\r\n                                <div class="number">\r\n                                    150 м<sup>2</sup>\r\n                                </div>\r\n                                <div class="text">\r\n                                    Рабочее пространство\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="number">\r\n                                    26\r\n                                </div>\r\n                                <div class="text">\r\n                                    Рабочих мест\r\n                                </div>\r\n                            </td>\r\n                            <td>\r\n                                <div class="number">\r\n                                    50 м<sup>2</sup>\r\n                                </div>\r\n                                <div class="text">\r\n                                    Переговорная комната\r\n                                </div>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="prices-block block">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Тарифы</span></h2>\r\n                    <div class="row">\r\n                        <div class="col col-xs-4">\r\n                            <div class="tariff tariff-1">\r\n\r\n                                <h3 class="title">Свободный</h3>\r\n\r\n                                <div class="properties">\r\n                                    <ul>\r\n                                        <li>Рабочее место</li>\r\n                                        <li>Интернет, wi-fi</li>\r\n                                        <li>Принтер, сканер, копир</li>\r\n                                        <li>Кофе, чай, вода</li>\r\n                                        <li>Личная ячейка для хранения</li>\r\n                                        <li>Зона отдыха, диваны, пуфики</li>\r\n                                        <li>Доски и&nbsp;флипчарты</li>\r\n                                    </ul>\r\n                                </div>\r\n\r\n                                <div class="ribbon">Скидка на первый месяц!</div>\r\n                                <br>\r\n                                <br>\r\n\r\n                                <div class="prices">\r\n                                    <div>\r\n                                        <span class="sum old"> 250 </span> <span class="sum">200</span> <span class="rouble-sign">Р</span>  <span class="text">день</span>\r\n                                    </div>\r\n                                    <div>\r\n                                        <span class="sum">1 200</span> <span class="rouble-sign">Р</span> <span class="text">неделя</span>\r\n                                    </div>\r\n                                    <div>\r\n                                        <span class="sum">4 000</span> <span class="rouble-sign">Р</span> <span class="text">месяц</span>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class="order">\r\n[*FormWidget|template_name=modal_default_form;button_text=Оставить заявку;button_class=btn btn-primary;form_caption=Заявка на посещение коворкинга ПАЗЛ (тариф Свободный);form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на тариф Свободный;email_subject=Поступила заявка на тариф Свободный*]\r\n                                </div>\r\n\r\n                            </div>\r\n                        </div>\r\n                        <div class="col col-xs-4">\r\n                            <div class="tariff tariff-2">\r\n                                <h3 class="title">Бизнес</h3>\r\n\r\n                                <div class="properties">\r\n                                    <ul>\r\n                                        <li>Рабочее место в&nbsp;комфортном, тихом офисе</li>\r\n                                        <li>Интернет wi-fi</li>\r\n                                        <li>Принтер, сканер копир</li>\r\n                                        <li>Кофе, чай, вода</li>\r\n                                        <li>Парковка</li>\r\n                                        <li>Личная ячейка для хранения</li>\r\n                                        <li>Зона отдыха, диваны, пуфики</li>\r\n                                        <li>Доски и&nbsp;флипчарты</li>\r\n                                        <li>Закрепленное рабочее место</li>\r\n                                        <li>Бизнес библиотека</li>\r\n                                    </ul>\r\n                                </div>\r\n\r\n                                <div class="prices">\r\n                                    <div>\r\n                                        <span class="sum">350</span> <span class="rouble-sign">Р</span> <span class="text">день</span>\r\n                                    </div>\r\n                                    <div>\r\n                                        <span class="sum">2 000</span> <span class="rouble-sign">Р</span> <span class="text">неделя</span>\r\n                                    </div>\r\n                                    <div>\r\n                                        <span class="sum">6 500</span> <span class="rouble-sign">Р</span> <span class="text">месяц</span>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class="order">\r\n[*FormWidget|template_name=modal_default_form;button_text=Оставить заявку;button_class=btn btn-primary;form_caption=Заявка на посещение коворкинга ПАЗЛ (тариф Бизнес);form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на тариф Бизнес;email_subject=Поступила заявка на тариф Бизнес*]\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="col col-xs-4">\r\n                            <div class="tariff tariff-3">\r\n                                <h3 class="title">Вечерний</h3>\r\n\r\n                                <br>\r\n\r\n                                <div class="properties">\r\n                                    <p>По&nbsp;выходным и&nbsp;в&nbsp;будни после 19:00 &laquo;Пазл&raquo; превращается в&nbsp;место, где проходят лекции, конференции, вечеринки, мастер-классы и&nbsp;многое другое.</p>\r\n                                </div>\r\n\r\n                                <div class="prices">\r\n                                    <div>\r\n                                        <span class="sum">2</span> <span class="rouble-sign">Р</span> <span class="text">минута</span>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <br>\r\n                                <br>\r\n                                <br>\r\n\r\n                                <div class="order">\r\n[*FormWidget|template_name=modal_default_form;button_text=Оставить заявку;button_class=btn btn-primary;form_caption=Заявка на посещение коворкинга ПАЗЛ (тариф Вечерний);form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на тариф Вечерний;email_subject=Поступила заявка на тариф Вечерний*]\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="compare-block block">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Офис или коворкинг?</span></h2>\r\n\r\n                    <div class="row">\r\n                        <div class="col-xs-6 col col-minuses">\r\n                            <!-- <div class="text-center"><span class="minus-sign glyphicon glyphicon-minus-sign"></span></div> -->\r\n                            <div class="text-center"><img class="minus-sign" src="/img/puzzle-minus.png" alt=""></div>\r\n                            <h3 class="title text-center">Минусы аренды офиса</h3>\r\n                            <ul>\r\n                                <li>Высокая арендная плата</li>\r\n                                <li>Вложения в&nbsp;ремонт, мебель</li>\r\n                                <li>Затраты на&nbsp;покупку оргтехники</li>\r\n                                <li>Плата за&nbsp;интернет</li>\r\n                                <li>Затраты на&nbsp;уборщицу</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class="col-xs-6 col col-pluses">\r\n                            <!-- <div class="text-center"><span class="plus-sign glyphicon glyphicon-plus-sign"></span></div> -->\r\n                            <div class="text-center"><img class="plus-sign" src="/img/puzzle-plus.png" alt=""></div>\r\n                            <h3 class="title text-center">Преимущества коворкинга</h3>\r\n                            <ul>\r\n                                <li>Удобное рабочее место</li>\r\n                                <li>Переговорная комната для встречи с&nbsp;клиентами или партнерами</li>\r\n                                <li>Бесплатный wi-fi</li>\r\n                                <li>Бесплатная оргтехника</li>\r\n                                <li>Бесплатный чай, кофе</li>\r\n                                <li>Комфортная зона отдыха (диваны, пуфики, игры, книги)</li>\r\n                                <li>Личный охраняемый ящик для хранения</li>\r\n                                <li>Регулярные обучающие семинары</li>\r\n                                <li>Возможность завязать полезные знакомства, найти партнера по&nbsp;бизнесу</li>\r\n                                <li>Нет ощущения что ты&nbsp;идешь на&nbsp;РА-БО-ТУ</li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="rent-for-events-block block" id="rent1">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Аренда пространства на мероприятия</span></h2>\r\n\r\n                    <h3 class="text-center">&laquo;Пазл&raquo; &mdash; это универсальное пространство для проведения мероприятий разного масштаба.</h3>\r\n                    <p class="text-center">Высокоскоростной Wi-Fi, проекционное оборудование, флипчарты, полностью мобильное пространство.</p>\r\n\r\n                    <br>\r\n\r\n                    <div class="row">\r\n                        <div class="col-xs-6">\r\n                            <img class="preview-foto" src="http://placehold.it/450x300">\r\n                        </div>\r\n                        <div class="col-xs-6">\r\n                            <img class="preview-foto" src="http://placehold.it/450x300">\r\n                        </div>\r\n                    </div>\r\n\r\n                    <br>\r\n\r\n                    <div class="row">\r\n                        <div class="col-xs-6">\r\n                            <ul>\r\n                                <li>деловые встречи;</li>\r\n                                <li>презентации;</li>\r\n                                <li>конференции;</li>\r\n                                <li>семинары;</li>\r\n                            </ul>\r\n\r\n                        </div>\r\n                        <div class="col-xs-6">\r\n                            <ul>\r\n                                <li>мастер-классы;</li>\r\n                                <li>бизнес-игры;</li>\r\n                                <li>многое другое.</li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <h3 class="text-center">Аренда от 800 рублей в час</h3>\r\n                    <div class="text-center">\r\n[*FormWidget|template_name=modal_default_form;button_text=Арендовать;button_class=btn btn-lg btn-primary;form_caption=Арендовать пространство на мероприятие;form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на аренду пространства на мероприятие;email_subject=Поступила заявка на аренду пространства на мероприятие*]\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <div class="rent-room-block block" id="rent2">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Аренда переговорной комнаты</span></h2>\r\n\r\n                    <p>Переговорная комната на&nbsp;час&nbsp;&mdash; это удобное место встречи, экономия расходов на&nbsp;содержание офиса, современное оборудование!</p>\r\n\r\n                    <p>Назначьте деловую встречу в&nbsp;современном и&nbsp;стильном офисе.Пригласите партнеров и&nbsp;будьте уверены, что переговоры сразу пойдут в&nbsp;нужной вам тональности.</p>\r\n\r\n                    <p>В&nbsp;офисном центре &laquo;Пазл&raquo; переговорная комната полностью соответствует современным требованиям и&nbsp;стандартам организации помещений для проведения деловых встреч и&nbsp;собраний. Переговорная оснащена компьютером, проектором, плазменным&nbsp;ТВ, доступом к&nbsp;сети интернет, информационной доской, позволяющей наглядно демонстрировать основные мысли и&nbsp;идеи лектора. Также возможна организация видеоконференций, и&nbsp;кофе-брейков.</p>\r\n\r\n                    <div class="text-center">\r\n[*FormWidget|template_name=modal_default_form;button_text=Арендовать;button_class=btn btn-lg btn-primary;form_caption=Арендовать переговорную комнату;form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на аренду переговорной комнаты;email_subject=Поступила заявка на аренду переговорной комнаты*]\r\n\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="events-block block" id="events">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Наши мероприятия</span></h2>\r\n                    [*InlineEventsWidget*]\r\n                    <div class="text-right"><small><a href="/events/">Все мероприятия</a></small></div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="reviews-block block" id="reviews">\r\n                <div class="container">\r\n                    <h2 class="throw-line"><span>Отзывы резидентов</span></h2>\r\n                    [*InlineReviewsWidget*]\r\n                    <div class="text-right"><small><a href="/reviews/">Все отзывы</a></small></div>\r\n                </div>\r\n            </div>\r\n\r\n        </main>', '', 1, 0, NULL, 'homepage', 1, 'Коворкинг «Пазл» — твое место для работы и отдыха', '«Пазл» — это рабочее пространство в Чебоксарах, с возможностью почасовой, посуточной и месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.', 'коворкинг, рабочее место, аренда, пространство, офис', NULL, '2015-01-26 15:51:30', NULL, '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', '2015-05-13 12:01:02', 0, 'Guest', 1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Дамп структуры для таблица puzzle.profiles
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы puzzle.profiles: ~1 rows (приблизительно)
DELETE FROM `profiles`;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`user_id`, `first_name`, `last_name`) VALUES
	(1, 'Administrator', 'Admin');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;


-- Дамп структуры для таблица puzzle.profiles_fields
DROP TABLE IF EXISTS `profiles_fields`;
CREATE TABLE IF NOT EXISTS `profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `field_size` int(3) NOT NULL DEFAULT '0',
  `field_size_min` int(3) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` text,
  `default` varchar(255) NOT NULL DEFAULT '',
  `widget` varchar(255) NOT NULL DEFAULT '',
  `widgetparams` text,
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы puzzle.profiles_fields: ~2 rows (приблизительно)
DELETE FROM `profiles_fields`;
/*!40000 ALTER TABLE `profiles_fields` DISABLE KEYS */;
INSERT INTO `profiles_fields` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`) VALUES
	(1, 'first_name', 'First Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect First Name (length between 3 and 50 characters).', '', '', '', '', 1, 3),
	(2, 'last_name', 'Last Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect Last Name (length between 3 and 50 characters).', '', '', '', '', 2, 3);
/*!40000 ALTER TABLE `profiles_fields` ENABLE KEYS */;


-- Дамп структуры для таблица puzzle.reviews
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `annotation` mediumtext,
  `body` mediumtext,
  `image` varchar(300) DEFAULT NULL,
  `image_attr_title` varchar(300) DEFAULT NULL,
  `image_attr_alt` varchar(300) DEFAULT NULL,
  `nn` int(11) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы puzzle.reviews: ~4 rows (приблизительно)
DELETE FROM `reviews`;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` (`id`, `name`, `annotation`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `nn`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Владимир Маяковский', 'Советский поэт', '<p>Коворкинг Puzzle вообще решает.</p>', 'reviews-04.jpg', NULL, NULL, 4, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(2, 'Федор Достоевский', 'Один из лучших романистов мирового значения', '<p>Очень жалею, что когда мы с партнерами начинали свой маленький бизнес, не существовало коворкинга! Мы снимали офис и платили непосильную плату. Мы где-то встречались с партнерами и клиентами, где-то ели, где-то отмечали наши маленькие праздники.</p>', 'reviews-03.jpg', NULL, NULL, 3, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(3, 'Николай Некрасов', 'Русский поэт, писатель и публицист', '<p>Я выбрал Puzzle, потому что это обалденная возможность иметь свое представительство в Чебоксарах за более чем умеренную стоимость.</p>', 'reviews-02.jpg', NULL, NULL, 2, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
	(4, 'Лев Толстой', 'Великий русский писатель XIX века', '<p>Я искал такое место в центре, где бы атмосфера соответствовала моему образу жизни и внутреннему пониманию комфорта, но и давала возможность сосредоточено поработать в удобной обстановке. Коворкинг «Puzzle» стал именно тем заведением , на котором я остановил свой выбор после посещения нескольких других мест.</p>', 'reviews-01.jpg', NULL, NULL, 1, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;


-- Дамп структуры для таблица puzzle.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username` (`username`),
  UNIQUE KEY `user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы puzzle.users: ~1 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `email`, `activkey`, `superuser`, `status`, `create_at`, `lastvisit_at`) VALUES
	(1, 'zzeraw', 'c1fb490f5090d6b51f8ae78f717ebdec1fca7170', 'pekidoch@gmail.com', '6e999d693da221429608671226e0a81d6e5e8d21', 1, 1, '2015-03-10 20:37:21', '2015-04-30 09:29:47');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
