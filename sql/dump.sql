# ************************************************************
# Sequel Pro SQL dump
# Версия 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Адрес: 127.0.0.1 (MySQL 5.5.42)
# Схема: puzzle
# Время создания: 2015-06-22 16:05:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы blocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blocks`;

CREATE TABLE `blocks` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;

INSERT INTO `blocks` (`id`, `alias`, `title`, `body`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'header','Шапка','<header class=\"header\">\r\n<div class=\"main-menu\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-3\">\r\n<div class=\"logo\"><a href=\"/\"><img class=\"\" src=\"/img/logo5.png\" /></a></div>\r\n</div>\r\n<div class=\"col-xs-4\">\r\n<div class=\"social-menu\"><a href=\"http://vk.com/\"><img class=\"icon\" src=\"/img/vk-blue3.png\" alt=\"\" /></a> <a href=\"http://facebook.com/\"><img class=\"icon\" src=\"/img/facebook26-blue3.png\" alt=\"\" /></a> <a href=\"http://instagram.com/\"><img class=\"icon\" src=\"/img/instagram3-blue3.png\" alt=\"\" /></a> <a href=\"http://twitter.com/\"><img class=\"icon\" src=\"/img/twitter16-blue3.png\" alt=\"\" /></a></div>\r\n</div>\r\n<div class=\"col-xs-5\">\r\n<div class=\"contacts\">\r\n<div class=\"phone-cta\">Звоните</div>\r\n<div class=\"phone\">8 (8352) 36 04 36</div>\r\n<div class=\"time\">Режим работы: с <b>10:00</b> до <b>22:00</b></div>\r\n<div class=\"address\">г. Чебоксары ул. Ленинского Комсомола, 9</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"navigation-menu\">\r\n<div class=\"navigation\"><nav class=\"navbar navbar-default\" id=\"mainNavbar\">\r\n<div class=\"container\">\r\n<ul class=\"nav navbar-nav\">\r\n<li><a href=\"/#about\">О нас</a></li>\r\n<li><a href=\"/#tarifs\">Тарифы</a></li>\r\n<li><a href=\"/#events\">Мероприятия</a></li>\r\n<li><a href=\"/#rent1\">Аренда пространства</a></li>\r\n<li><a href=\"/#rent2\">Аренда переговорной</a></li>\r\n<li><a href=\"/#reviews\">Отзывы</a></li>\r\n</ul>\r\n</div>\r\n</nav></div>\r\n</div>\r\n</header>','127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36','2014-12-03 14:49:14',1,'zzeraw','::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36','2015-06-22 19:25:47',2,'manager',1),
	(2,'footer','Подвал','<footer class=\"footer\">            <div class=\"container\">                <div class=\"col-xs-2\">                    <div class=\"copyright\">                        &copy; 2015                    </div>                </div>                <div class=\"col-xs-4\">                    <div class=\"social-menu\">                        <a href=\"http://vk.com/\"><img class=\"icon\" src=\"/img/vk-white.png\" alt=\"\"></a>                        <a href=\"http://facebook.com/\"><img class=\"icon\" src=\"/img/facebook26-white.png\" alt=\"\"></a>                        <a href=\"http://instagram.com/\"><img class=\"icon\" src=\"/img/instagram3-white.png\" alt=\"\"></a>                        <a href=\"http://twitter.com/\"><img class=\"icon\" src=\"/img/twitter16-white.png\" alt=\"\"></a>                    </div>                </div>                <div class=\"col-xs-6\">                    <div class=\"contacts\">                        <div class=\"phone-cta\">                            Звоните!                        </div>                        <div class=\"phone\">8 (8352) 36 04 36</div>                        <div class=\"address\">г. Чебоксары, ул. Ленинского Комсомола, 9</div>                        <br>                        <div class=\"cta\">[*FormWidget|template_name=callback_form;form_caption=Заказ обратного звонка;button_text=Заказать обратный звонок;button_class=btn btn-danger;form_button_text=Заказать;form_button_class=btn btn-primary;fields=[{\"type\": \"text\",\"name\": \"phone\",\"label\": \"Контактный телефон\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:20\"],\"html\": {\"placeholder\": \"+7\"}},{\"type\": \"text\",\"name\": \"name\",\"label\": \"Ваше имя\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:300\"],\"html\": {\"placeholder\": \"\"}},{\"type\": \"textarea\",\"name\": \"comment\",\"label\": \"В какое время вам перезвонить?\",\"value\": \"\",\"validation\": [],\"html\": {\"placeholder\": \"Укажите время для обратного звонка или любые другие пожелания\"}}];email_subject=Поступила заявка на обратный звонок*]                        </div>                    </div>                </div>            </div>        </footer>','127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36','2014-12-03 14:49:27',1,'zzeraw','94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.94 Safari/537.36','2015-02-25 09:20:27',2,'manager',1);

/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;

INSERT INTO `events` (`id`, `title`, `author`, `datetime`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'Лекция по астрономии: «Почему параллельна природа гамма-всплексов?»','Шаляпин Федор','2015-04-12 16:09:59',NULL,NULL,NULL,NULL,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(2,'Лекция по геологии: «Юрский биотит: методология и особенности»','Никулин Юрий','2015-04-13 16:09:59',NULL,NULL,NULL,NULL,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(3,'Лекция по гироскопии: «Прецизионный ротор: основные моменты»','Шульженко Клавдия','2015-06-14 16:09:59',NULL,NULL,NULL,NULL,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(4,'Лекция по литературоведению: «Глубокий композиционный анализ в XXI веке»','Бондарчук Сергей','2015-04-15 16:09:59',NULL,NULL,NULL,NULL,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(5,'Лекция по математике: «Равновероятный ряд Тейлора: предпосылки и развитие»','Михалков Сергей','2015-04-16 16:09:59',NULL,NULL,NULL,NULL,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(6,'Лекция по почвоведению: «Почему когерентна гумусированность?»','Лещенко Лев','2015-08-17 16:09:59',NULL,NULL,NULL,NULL,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1);

/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы form_requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `form_requests`;

CREATE TABLE `form_requests` (
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



# Дамп таблицы pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `title`, `alias`, `begin_body`, `end_body`, `show_in_menu`, `show_title`, `module`, `template`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'Главная','','<div class=\"banners-block block\">\r\n<div class=\"top-menu\"></div>\r\n<div class=\"banners\">\r\n<div id=\"carousel-generic\" class=\"carousel slide\" data-ride=\"carousel\"><!-- <ol class=\"carousel-indicators\">                <li data-target=\"#carousel-generic\" data-slide-to=\"0\" class=\"active\"></li>                <li data-target=\"#carousel-generic\" data-slide-to=\"1\"></li>                <li data-target=\"#carousel-generic\" data-slide-to=\"2\"></li>            </ol>            -->\r\n<div class=\"carousel-inner\" role=\"listbox\"><!-- <div class=\"item active\" style=\"background-image: url(http://placehold.it/2000x400&text=+)\">                -->\r\n<div class=\"item active\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-8\">\r\n<div class=\"description\">\r\n<p>Аренда недорогих комфортных и полностью оснащенных рабочих мест в Чебоксарах.</p>\r\n<p>Пространство для проведения мероприятий, удобный конференц-зал и переговорная комната вместимостью до 20 человек.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-4\">[*FormWidget|template_name=clear_form;form_button_text=Получить бесплатный день;form_button_class=btn btn-danger;fields=[{\"type\": \"text\",\"name\": \"phone\",\"label\": \"Контактный телефон\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:20\"],\"html\": {\"placeholder\": \"+7\"}},{\"type\": \"text\",\"name\": \"name\",\"label\": \"Ваше имя\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:300\"],\"html\": {\"placeholder\": \"\"}},{\"type\": \"text\",\"name\": \"date\",\"label\": \"Дата\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:100\"],\"html\": {\"placeholder\": \"дд.мм.гггг\"}}];email_subject=Поступила заявка на бесплатный день*]</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- <a class=\"left carousel-control\" href=\"#carousel-generic\" role=\"button\" data-slide=\"prev\">            <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>            <span class=\"sr-only\">Previous</span>        </a>        <a class=\"right carousel-control\" href=\"#carousel-generic\" role=\"button\" data-slide=\"next\">            <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>            <span class=\"sr-only\">Next</span>        </a>        --></div>\r\n</div>\r\n<div class=\"bottom-menu\"></div>\r\n</div>\r\n<div class=\"icons-block block\">\r\n<div class=\"container\">\r\n<table class=\"icons\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"icon\"><img src=\"/img/comfort_img_02.png\" alt=\"\" /></div>\r\n<div class=\"text\">Интернет</div>\r\n</td>\r\n<td>\r\n<div class=\"icon\"><img src=\"/img/comfort_img_03.png\" alt=\"\" /></div>\r\n<div class=\"text\">Оргтехника</div>\r\n</td>\r\n<td>\r\n<div class=\"icon\"><img src=\"/img/comfort_img_04.png\" alt=\"\" /></div>\r\n<div class=\"text\">Напитки</div>\r\n</td>\r\n<td>\r\n<div class=\"icon\"><img src=\"/img/comfort_img_05.png\" alt=\"\" /></div>\r\n<div class=\"text\">Администратор</div>\r\n</td>\r\n<td>\r\n<div class=\"icon\"><img src=\"/img/comfort_img_06.png\" alt=\"\" /></div>\r\n<div class=\"text\">Переговорная комната</div>\r\n</td>\r\n<td>\r\n<div class=\"icon\"><img src=\"/img/comfort_img_07.png\" alt=\"\" /></div>\r\n<div class=\"text\">Библиотека</div>\r\n</td>\r\n<td>\r\n<div class=\"icon\"><img src=\"/img/comfort_img_08.png\" alt=\"\" /></div>\r\n<div class=\"text\">Досуг</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div class=\"about-block block\" id=\"about\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Что такое &laquo;Пазл&raquo;?</span></h2>\r\n<div class=\"row\">\r\n<div class=\"col-xs-8\">\r\n<p>&laquo;Пазл&raquo;&nbsp;&mdash; это рабочее пространство в&nbsp;Чебоксарах, с&nbsp;возможностью почасовой, посуточной и&nbsp;месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.</p>\r\n<p>Здесь работают над своими проектами предприниматели, дизайнеры, архитекторы, IT-специалисты, профессионалы и&nbsp;фрилансеры всех мастей.</p>\r\n<p>У&nbsp;нас вы&nbsp;можете:</p>\r\n<ul>\r\n<li>Комфортно работать;</li>\r\n<li>Воспользоваться переговорной комнатой для встречи с&nbsp;клиентом;</li>\r\n<li>Познакомиться с&nbsp;людьми разных профессий;</li>\r\n<li>Заявить о&nbsp;своем проекте и&nbsp;собрать команду;</li>\r\n<li>Получить рекомендацию профи на&nbsp;открытых семинарах;</li>\r\n<li>Приятно провести время за&nbsp;бизнес-игрой, общением.</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-xs-4\"><img class=\"preview-foto\" width=\"300\" src=\"/uploads/300x300.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"free-day-block block\" id=\"tarifs\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Получи бесплатное занятие</span></h2>\r\n<div class=\"row\">\r\n<div class=\"col-xs-9\">\r\n<div class=\"text\">\r\n<p style=\"font-size: 18px;\">Проще всего прийти и увидеть все своими глазами, познакомиться, выпить чашку кофе. Выбирайте дату, берите ноутбук и оставайтесь работать целый день.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-3\">\r\n<div class=\"button\" style=\"margin-top: 5px;\">[*FormWidget|template_name=modal_default_form;button_text=Получить бесплатный день;button_class=btn btn-danger;form_caption=Получи бесплатный день в коворкинге ПАЗЛ;form_button_text=Получить бесплатный день;form_button_class=btn btn-danger;fields=[{\"type\": \"text\",\"name\": \"phone\",\"label\": \"Контактный телефон\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:20\"],\"html\": {\"placeholder\": \"+7\"}},{\"type\": \"text\",\"name\": \"name\",\"label\": \"Ваше имя\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:300\"],\"html\": {\"placeholder\": \"\"}},{\"type\": \"text\",\"name\": \"date\",\"label\": \"Дата\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:100\"],\"html\": {\"placeholder\": \"дд.мм.гггг\"}}];email_subject=Поступила заявка на бесплатный день*]</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"numbers-block block\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Рабочее пространство &laquo;Пазл&raquo; в цифрах</span></h2>\r\n<table class=\"numbers\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"number\">150 м <sup>2</sup></div>\r\n<div class=\"text\">Рабочее пространство</div>\r\n</td>\r\n<td>\r\n<div class=\"number\">26</div>\r\n<div class=\"text\">Рабочих мест</div>\r\n</td>\r\n<td>\r\n<div class=\"number\">50 м <sup>2</sup></div>\r\n<div class=\"text\">Переговорная комната</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div class=\"prices-block block\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Тарифы</span></h2>\r\n<div class=\"tariff tariff-2\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-4\">\r\n<div class=\"properties\">\r\n<ul>\r\n<li>Рабочее место в&nbsp;комфортном, тихом офисе</li>\r\n<li>Интернет wi-fi</li>\r\n<li>Принтер, сканер копир</li>\r\n<li>Кофе, чай, вода</li>\r\n<li>Парковка</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-4\">\r\n<div class=\"properties\">\r\n<ul>\r\n<li>Личная ячейка для хранения</li>\r\n<li>Зона отдыха, диваны, пуфики</li>\r\n<li>Доски и&nbsp;флипчарты</li>\r\n<li>Закрепленное рабочее место</li>\r\n<li>Бизнес библиотека</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-4\">\r\n<div class=\"prices\">\r\n<div><span class=\"sum\">250</span> <span class=\"rouble-sign\">Р</span> <span class=\"text\">день</span></div>\r\n<div><span class=\"sum\">4 000</span> <span class=\"rouble-sign\">Р</span> <span class=\"text\">месяц</span></div>\r\n</div>\r\n<div class=\"order\">[*FormWidget|template_name=modal_default_form;button_text=Оставить заявку;button_class=btn btn-danger;form_caption=Заявка на посещение коворкинга ПАЗЛ (тариф Бизнес);form_button_text=Оставить заявку;form_button_class=btn btn-danger;fields=[{\"type\": \"text\",\"name\": \"phone\",\"label\": \"Контактный телефон\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:20\"],\"html\": {\"placeholder\": \"+7\"}},{\"type\": \"text\",\"name\": \"name\",\"label\": \"Ваше имя\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:300\"],\"html\": {\"placeholder\": \"\"}},{\"type\": \"text\",\"name\": \"date\",\"label\": \"Дата\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:100\"],\"html\": {\"placeholder\": \"дд.мм.гггг\"}}];form_item=Заявка на тариф Бизнес;email_subject=Поступила заявка на тариф Бизнес*]</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"compare-block block\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Офис или коворкинг?</span></h2>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col col-minuses\"><!-- <div class=\"text-center\">            <span class=\"minus-sign glyphicon glyphicon-minus-sign\"></span>        </div>        -->\r\n<div class=\"text-center\"><img class=\"minus-sign\" src=\"/img/puzzle-minus.png\" alt=\"\" /></div>\r\n<h3 class=\"title text-center\">Минусы аренды офиса</h3>\r\n<ul>\r\n<li>Высокая арендная плата</li>\r\n<li>Вложения в&nbsp;ремонт, мебель</li>\r\n<li>Затраты на&nbsp;покупку оргтехники</li>\r\n<li>Плата за&nbsp;интернет</li>\r\n<li>Затраты на&nbsp;уборщицу</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-xs-6 col col-pluses\"><!-- <div class=\"text-center\">        <span class=\"plus-sign glyphicon glyphicon-plus-sign\"></span>    </div>    -->\r\n<div class=\"text-center\"><img class=\"plus-sign\" src=\"/img/puzzle-plus.png\" alt=\"\" /></div>\r\n<h3 class=\"title text-center\">Преимущества коворкинга</h3>\r\n<ul>\r\n<li>Удобное рабочее место</li>\r\n<li>Переговорная комната для встречи с&nbsp;клиентами или партнерами</li>\r\n<li>Бесплатный wi-fi</li>\r\n<li>Бесплатная оргтехника</li>\r\n<li>Бесплатный чай, кофе</li>\r\n<li>Комфортная зона отдыха (диваны, пуфики, игры, книги)</li>\r\n<li>Личный охраняемый ящик для хранения</li>\r\n<li>Регулярные обучающие семинары</li>\r\n<li>Возможность завязать полезные знакомства, найти партнера по&nbsp;бизнесу</li>\r\n<li>Нет ощущения что ты&nbsp;идешь на&nbsp;РА-БО-ТУ</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"rent-for-events-block block\" id=\"rent1\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Аренда пространства на мероприятия</span></h2>\r\n<h3 class=\"text-center\">&laquo;Пазл&raquo; &mdash; это универсальное пространство для проведения мероприятий разного масштаба.</h3>\r\n<p class=\"text-center\">Высокоскоростной Wi-Fi, проекционное оборудование, флипчарты, полностью мобильное пространство.</p>\r\n<br />\r\n<div class=\"row\">\r\n<div class=\"col-xs-6\"><img class=\"preview-foto\" src=\"/uploads/space_01.jpg\" style=\"width: 450px;\" /></div>\r\n<div class=\"col-xs-6\"><img class=\"preview-foto\" src=\"/uploads/space_02.jpg\" style=\"width: 450px;\" /></div>\r\n</div>\r\n<br />\r\n<div class=\"row\">\r\n<div class=\"col-xs-6\">\r\n<ul>\r\n<li>деловые встречи;</li>\r\n<li>презентации;</li>\r\n<li>конференции;</li>\r\n<li>семинары;</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-xs-6\">\r\n<ul>\r\n<li>мастер-классы;</li>\r\n<li>бизнес-игры;</li>\r\n<li>многое другое.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<h3 class=\"text-center\">Аренда 1000 рублей в час</h3>\r\n<div class=\"text-center\">[*FormWidget|template_name=modal_default_form;button_text=Арендовать;button_class=btn btn-lg btn-danger;form_caption=Арендовать пространство на мероприятие;form_button_text=Оставить заявку;form_button_class=btn btn-danger;fields=[{\"type\": \"text\",\"name\": \"phone\",\"label\": \"Контактный телефон\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:20\"],\"html\": {\"placeholder\": \"+7\"}},{\"type\": \"text\",\"name\": \"name\",\"label\": \"Ваше имя\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:300\"],\"html\": {\"placeholder\": \"\"}},{\"type\": \"text\",\"name\": \"date\",\"label\": \"Дата\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:100\"],\"html\": {\"placeholder\": \"дд.мм.гггг\"}}];form_item=Заявка на аренду пространства на мероприятие;email_subject=Поступила заявка на аренду пространства на мероприятие*]<br /><br />\r\n<p class=\"text-center\"><a href=\"/rent\">Cхема аренды залов</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"rent-room-block block\" id=\"rent2\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Аренда переговорной комнаты</span></h2>\r\n<p>Переговорная комната на&nbsp;час&nbsp;&mdash; это удобное место встречи, экономия расходов на&nbsp;содержание офиса, современное оборудование!</p>\r\n<p>Назначьте деловую встречу в&nbsp;современном и&nbsp;стильном офисе.Пригласите партнеров и&nbsp;будьте уверены, что переговоры сразу пойдут в&nbsp;нужной вам тональности.</p>\r\n<p>В&nbsp;офисном центре &laquo;Пазл&raquo; переговорная комната полностью соответствует современным требованиям и&nbsp;стандартам организации помещений для проведения деловых встреч и&nbsp;собраний. Переговорная оснащена компьютером, проектором, плазменным&nbsp;ТВ, доступом к&nbsp;сети интернет, информационной доской, позволяющей наглядно демонстрировать основные мысли и&nbsp;идеи лектора. Также возможна организация видеоконференций, и&nbsp;кофе-брейков.</p>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6\"><img class=\"preview-foto\" src=\"/uploads/speak_01.jpg\" style=\"width: 450px;\" /></div>\r\n<div class=\"col-xs-6\"><img class=\"preview-foto\" src=\"/uploads/speak_02.jpg\" style=\"width: 450px;\" /></div>\r\n</div>\r\n<br /><br />\r\n<div class=\"text-center\">[*FormWidget|template_name=modal_default_form;button_text=Арендовать;button_class=btn btn-lg btn-danger;form_caption=Арендовать переговорную комнату;form_button_text=Оставить заявку;form_button_class=btn btn-danger;fields=[{\"type\": \"text\",\"name\": \"phone\",\"label\": \"Контактный телефон\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:20\"],\"html\": {\"placeholder\": \"+7\"}},{\"type\": \"text\",\"name\": \"name\",\"label\": \"Ваше имя\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:300\"],\"html\": {\"placeholder\": \"\"}},{\"type\": \"text\",\"name\": \"date\",\"label\": \"Дата\",\"value\": \"\",\"validation\": [\"required\",\"min:3\",\"max:100\"],\"html\": {\"placeholder\": \"дд.мм.гггг\"}}];form_item=Заявка на аренду переговорной комнаты;email_subject=Поступила заявка на аренду переговорной комнаты*]</div>\r\n</div>\r\n</div>\r\n<div class=\"events-block block\" id=\"events\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Наши мероприятия</span></h2>\r\n[*InlineEventsWidget*]\r\n<div class=\"text-right\"><small> <a href=\"/events/\">Все мероприятия</a></small></div>\r\n</div>\r\n</div>\r\n<div class=\"reviews-block block\" id=\"reviews\">\r\n<div class=\"container\">\r\n<h2 class=\"throw-line\"><span>Отзывы резидентов</span></h2>\r\n[*InlineReviewsWidget*]\r\n<div class=\"text-right\"><small> <a href=\"/reviews/\">Все отзывы</a></small></div>\r\n</div>\r\n</div>','',1,0,NULL,'homepage',1,'Коворкинг «Пазл» — твое место для работы и отдыха','«Пазл» — это рабочее пространство в Чебоксарах, с возможностью почасовой, посуточной и месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.','коворкинг, рабочее место, аренда, пространство, офис',NULL,'2015-01-26 15:51:30',NULL,'','::1 Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36','2015-06-22 20:02:53',2,'manager',1),
	(2,'Схема аренды залов','rent','<br><br><p>Организация и&nbsp;проведение мероприятий в&nbsp;коворкинг-центре &laquo;Пазл&raquo; возможна по&nbsp;трем основным схемам:</p><ol><li>Самостоятельно без аренды зала.</li><li>Закрытое мероприятие с&nbsp;арендой зала.</li><li>Открытое мероприятие с&nbsp;арендой зала.</li></ol><h3>1. Мероприятие проводимое без аренды зала.</h3><p>Вы&nbsp;готовы провести какое-либо мероприятие или тематическую встречу (к&nbsp;примеру для совместной игры в&nbsp;&laquo;Мафию&raquo;) в&nbsp;коворкинг-центре &laquo;Пазл&raquo;, но&nbsp;не&nbsp;хотите бронировать отдельный зал, например, из-за того, что не&nbsp;знаете точно, сколько человек составит вашу аудиторию. В&nbsp;этом случае не&nbsp;обязательно бронировать отдельный зал, вы&nbsp;просто приходите и&nbsp;занимаете свободные места.</p><h4>Анонсирование мероприятия.</h4><p>Вы&nbsp;можете обратиться к&nbsp;администрации коворкинг-центра с&nbsp;целью привлечения дополнительных участников мероприятия из&nbsp;числа постоянных посетителей коворкинг-центра путем размещения анонса события на&nbsp;странице сайта, и&nbsp;в&nbsp;социальных сетях vkontakte, facebook, instagram.</p><p><b>Для этого организатору мероприятия необходимо:</b></p><ol><li>Проверить мероприятие на&nbsp;соответствие формату мероприятий коворкинг-центра &laquo;Пазл&raquo;.</li><li>Отправить заявку на&nbsp;размещение анонса на&nbsp;адрес <a href=\"mailto:puzzle.office@mail.ru\">puzzle.office@mail.ru</a> ( не&nbsp;менее чем за&nbsp;3&nbsp;дня), где коротко и&nbsp;ясно описать:<ul><li>Название мероприятия.</li><li>Суть мероприятия.</li><li>Дату проведения мероприятия.</li><li>Контакты организатора (телефон, адрес электронной почты). Контактные данные необходимы для прямого обращения потенциальных участников к&nbsp;организатору.</li><li>Прикрепить к&nbsp;письму иллюстрацию, которую можно использовать при публикации анонса.</li></ul></li></ol><p>Условия:</p><ul><li>Администрация коворкинг-центра &laquo;Пазл&raquo; оставляет за&nbsp;собой прова отказать в&nbsp;проведении мероприятия без объяснения причин.</li><li>Администрация коворкинг-центра &laquo;Пазл&raquo; оставляет за&nbsp;собой право отказать в&nbsp;публикации анонса без объяснения причин.</li><li>Отказ в&nbsp;публикации анонса не&nbsp;означает запрет на&nbsp;проведение мероприятия, в&nbsp;случае отказа в&nbsp;публикации анонса вы&nbsp;по&nbsp;прежнему можете организовать мероприятие, если администрация не&nbsp;уведомила вас об&nbsp;обратном.</li><li>Арендовать зал для проведения мероприятия не&nbsp;обезательно, вы&nbsp;можете приходить и&nbsp;занимать любые свободные места, однако коворкинг-центр не&nbsp;гарантирует наличие свободных мест в&nbsp;момент посещения.</li><li>Всю ответственность за&nbsp;проведения мероприятия берет на&nbsp;себя организатор.</li></ul><h3>2. Закрытые мероприятия с&nbsp;арендой зала.</h3><p>Вы&nbsp;можете арендовать любой зал коворкинг-центра &laquo;Пазл&raquo; для проведения мероприятий с&nbsp;собственной аудиторией.</p><ul><li>Аренда большого зала 75&nbsp;м2&nbsp;на 50&nbsp;человек&nbsp;&mdash; 700&nbsp;руб/час</li><li>Аренда VIP зала (столы, кожаные кресла) 50&nbsp;м2&nbsp;на 20&nbsp;человек&nbsp;&mdash; 800&nbsp;руб/час</li></ul><p><small>*в&nbsp;стоимость входит интернет, кулер с&nbsp;водой.</small></p><p>Аренда оборудования для проведения презентаций (компьютер, проектор с&nbsp;экраном, микрофоны, колонки, флипчарт) оплачиваются отдельно 1500&nbsp;руб/день.</p><p>Организация кофе-брейков 50&nbsp;руб/чел.</p><h3>3. Открытые мероприятия с&nbsp;арендой зала.</h3><p>Любой зал коворкинг-центра &laquo;Пазл&raquo; можно арендовать для проведения мероприятий с&nbsp;целью коммерческой выгоды, рекламы продукта/услуги и&nbsp;другой.</p><p>Для участия в&nbsp;мероприятии вы&nbsp;можете приглашать собственную сложившуюся аудиторию, а&nbsp;также привлечь дополнительных участников из&nbsp;числа постоянных посетителей коворкинг-центра.</p><p>Для этого организатору мероприятия необходимо:</p><ul><li>Арендовать зал</li><li>Соответствовать формату мероприятий (уточните у&nbsp;администрации).</li></ul><br><br>','',1,0,NULL,'',1,'Схема аренды залов | Коворкинг «Пазл» — твое место для работы и отдыха','«Пазл» — это рабочее пространство в Чебоксарах, с возможностью почасовой, посуточной и месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.','коворкинг, рабочее место, аренда, пространство, офис',NULL,'2015-01-26 15:51:30',NULL,'','127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36','2015-05-13 12:01:02',0,'Guest',1);

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;

INSERT INTO `profiles` (`user_id`, `first_name`, `last_name`)
VALUES
	(1,'Administrator','Admin'),
	(2,'','');

/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы profiles_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profiles_fields`;

CREATE TABLE `profiles_fields` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `profiles_fields` WRITE;
/*!40000 ALTER TABLE `profiles_fields` DISABLE KEYS */;

INSERT INTO `profiles_fields` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`)
VALUES
	(1,'first_name','First Name','VARCHAR',255,3,2,'','','Incorrect First Name (length between 3 and 50 characters).','','','','',1,3),
	(2,'last_name','Last Name','VARCHAR',255,3,2,'','','Incorrect Last Name (length between 3 and 50 characters).','','','','',2,3);

/*!40000 ALTER TABLE `profiles_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы reviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;

INSERT INTO `reviews` (`id`, `name`, `annotation`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `nn`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`)
VALUES
	(1,'Владимир Маяковский','Советский поэт','<p>Коворкинг Puzzle вообще решает.</p>','reviews-04.jpg',NULL,NULL,4,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(2,'Федор Достоевский','Один из лучших романистов мирового значения','<p>Очень жалею, что когда мы с партнерами начинали свой маленький бизнес, не существовало коворкинга! Мы снимали офис и платили непосильную плату. Мы где-то встречались с партнерами и клиентами, где-то ели, где-то отмечали наши маленькие праздники.</p>','reviews-03.jpg',NULL,NULL,3,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(3,'Николай Некрасов','Русский поэт, писатель и публицист','<p>Я выбрал Puzzle, потому что это обалденная возможность иметь свое представительство в Чебоксарах за более чем умеренную стоимость.</p>','reviews-02.jpg',NULL,NULL,2,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1),
	(4,'Лев Толстой','Великий русский писатель XIX века','<p>Я искал такое место в центре, где бы атмосфера соответствовала моему образу жизни и внутреннему пониманию комфорта, но и давала возможность сосредоточено поработать в удобной обстановке. Коворкинг «Puzzle» стал именно тем заведением , на котором я остановил свой выбор после посещения нескольких других мест.</p>','reviews-01.jpg',NULL,NULL,1,'127.0.0.1','2015-04-12 16:09:59',1,'zzeraw','127.0.0.1','2015-04-12 16:09:59',1,'zzeraw',1);

/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activkey`, `superuser`, `status`, `create_at`, `lastvisit_at`)
VALUES
	(1,'zzeraw','c1fb490f5090d6b51f8ae78f717ebdec1fca7170','pekidoch@gmail.com','6e999d693da221429608671226e0a81d6e5e8d21',1,1,'2015-03-10 17:37:21','2015-04-30 06:29:47'),
	(2,'manager','4f57181dcaade980555f2ce6755ca425f00658be','pv.danilov.dev@yandex.ru','d4ecf20e0a46d6fad9e97cf3390b8251072a756c',1,1,'2015-06-10 17:37:32','2015-06-22 15:13:01');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
