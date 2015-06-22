-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 22 2015 г., 16:55
-- Версия сервера: 5.5.36-34.0-632.precise
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cl60348_puzzle`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
`id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blocks`
--

INSERT INTO `blocks` (`id`, `alias`, `title`, `body`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
(1, 'header', 'Шапка', '<header class="header">            <div class="main-menu">                <div class="container">                    <div class="row">                        <div class="col-xs-3">                            <div class="logo">                                <a href="/"><img class="" src="/img/logo5.png"></a>                            </div>                        </div>                        <div class="col-xs-4">                            <div class="social-menu">                                <a href="http://vk.com/"><img class="icon" src="/img/vk-blue3.png" alt=""></a>                                <a href="http://facebook.com/"><img class="icon" src="/img/facebook26-blue3.png" alt=""></a>                                <a href="http://instagram.com/"><img class="icon" src="/img/instagram3-blue3.png" alt=""></a>                                <a href="http://twitter.com/"><img class="icon" src="/img/twitter16-blue3.png" alt=""></a>                            </div>                        </div>                        <div class="col-xs-5">                            <div class="contacts">                                <div class="phone-cta">Звоните!</div>                                <div class="phone">8 (8352) 36 04 36</div>                                <div class="address">г. Чебоксары ул. Ленинского Комсомола, 9</div>                                <div class="time">Режим работы: с 10:00 до 22:00</div>                            </div>                        </div>                    </div>                </div>            </div>            <div class="navigation-menu">                <div class="navigation">                    <nav class="navbar navbar-default" id="mainNavbar">                        <div class="container">                            <ul class="nav navbar-nav">                                <li><a href="/#about">О нас</a></li>                                <li><a href="/#tarifs">Тарифы</a></li>                                <li><a href="/#events">Мероприятия</a></li>                                <li><a href="/#rent1">Аренда пространства</a></li>                                <li><a href="/#rent2">Аренда переговорной</a></li>                                <li><a href="/#reviews">Отзывы</a></li>                            </ul>                        </div>                    </nav>                </div>            </div>        </header>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:14', 1, 'zzeraw', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', '2015-02-25 09:20:27', 2, 'manager', 1),
(2, 'footer', 'Подвал', '<footer class="footer">            <div class="container">                <div class="col-xs-2">                    <div class="copyright">                        &copy; 2015                    </div>                </div>                <div class="col-xs-4">                    <div class="social-menu">                        <a href="http://vk.com/"><img class="icon" src="/img/vk-white.png" alt=""></a>                        <a href="http://facebook.com/"><img class="icon" src="/img/facebook26-white.png" alt=""></a>                        <a href="http://instagram.com/"><img class="icon" src="/img/instagram3-white.png" alt=""></a>                        <a href="http://twitter.com/"><img class="icon" src="/img/twitter16-white.png" alt=""></a>                    </div>                </div>                <div class="col-xs-6">                    <div class="contacts">                        <div class="phone-cta">                            Звоните!                        </div>                        <div class="phone">8 (8352) 36 04 36</div>                        <div class="address">г. Чебоксары, ул. Ленинского Комсомола, 9</div>                        <br>                        <div class="cta">[*FormWidget|template_name=callback_form;form_caption=Заказ обратного звонка;button_text=Заказать обратный звонок;button_class=btn btn-danger;form_button_text=Заказать;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "textarea","name": "comment","label": "В какое время вам перезвонить?","value": "","validation": [],"html": {"placeholder": "Укажите время для обратного звонка или любые другие пожелания"}}];email_subject=Поступила заявка на обратный звонок*]                        </div>                    </div>                </div>            </div>        </footer>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:27', 1, 'zzeraw', '94.232.60.14 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.94 Safari/537.36', '2015-02-25 09:20:27', 2, 'manager', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
`id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `author`, `datetime`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
(1, 'Лекция по астрономии: «Почему параллельна природа гамма-всплексов?»', 'Шаляпин Федор', '2015-04-12 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(2, 'Лекция по геологии: «Юрский биотит: методология и особенности»', 'Никулин Юрий', '2015-04-13 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(3, 'Лекция по гироскопии: «Прецизионный ротор: основные моменты»', 'Шульженко Клавдия', '2015-06-14 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(4, 'Лекция по литературоведению: «Глубокий композиционный анализ в XXI веке»', 'Бондарчук Сергей', '2015-04-15 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(5, 'Лекция по математике: «Равновероятный ряд Тейлора: предпосылки и развитие»', 'Михалков Сергей', '2015-04-16 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(6, 'Лекция по почвоведению: «Почему когерентна гумусированность?»', 'Лещенко Лев', '2015-06-17 16:09:59', NULL, NULL, NULL, NULL, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `form_requests`
--

DROP TABLE IF EXISTS `form_requests`;
CREATE TABLE IF NOT EXISTS `form_requests` (
`id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `custom` mediumtext,
  `utm` mediumtext,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
`id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `alias`, `begin_body`, `end_body`, `show_in_menu`, `show_title`, `module`, `template`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
(1, 'Главная', '', '<main>    <div class="banners-block block">        <div class="top-menu"></div>        <div class="banners">            <div id="carousel-generic" class="carousel slide" data-ride="carousel">                <!-- <ol class="carousel-indicators">                <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>                <li data-target="#carousel-generic" data-slide-to="1"></li>                <li data-target="#carousel-generic" data-slide-to="2"></li>            </ol>            -->            <div class="carousel-inner" role="listbox">                <!-- <div class="item active" style="background-image: url(http://placehold.it/2000x400&text=+)">                -->                <div class="item active">                    <div class="container">                        <div class="row">                            <div class="col-xs-6">                                <div class="description">                                    <p>                                        Аренда недорогих комфортных и полностью оснащенных рабочих мест в Чебоксарах.                                    </p>                                    <p>                                        Пространство для проведения мероприятий, удобный конференц-зал и переговорная комната вместимостью до 20 человек.                                    </p>                                </div>                            </div>                            <div class="col-xs-6">                                [*FormWidget|template_name=clear_form;form_button_text=Получить бесплатный день;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];email_subject=Поступила заявка на бесплатный день*]                            </div>                        </div>                    </div>                </div>            </div>            <!-- <a class="left carousel-control" href="#carousel-generic" role="button" data-slide="prev">            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>            <span class="sr-only">Previous</span>        </a>        <a class="right carousel-control" href="#carousel-generic" role="button" data-slide="next">            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>            <span class="sr-only">Next</span>        </a>        -->    </div></div><div class="bottom-menu"></div></div><div class="icons-block block"><div class="container">    <table class="icons">        <tr>            <td>                <div class="icon">                    <img src="/img/comfort_img_02.png" alt=""></div>                <div class="text">Интернет</div>            </td>            <td>                <div class="icon">                    <img src="/img/comfort_img_03.png" alt=""></div>                <div class="text">Оргтехника</div>            </td>            <td>                <div class="icon">                    <img src="/img/comfort_img_04.png" alt=""></div>                <div class="text">Напитки</div>            </td>            <td>                <div class="icon">                    <img src="/img/comfort_img_05.png" alt=""></div>                <div class="text">Администратор</div>            </td>            <td>                <div class="icon">                    <img src="/img/comfort_img_06.png" alt=""></div>                <div class="text">Переговорная комната</div>            </td>            <td>                <div class="icon">                    <img src="/img/comfort_img_07.png" alt=""></div>                <div class="text">Библиотека</div>            </td>            <td>                <div class="icon">                    <img src="/img/comfort_img_08.png" alt=""></div>                <div class="text">Досуг</div>            </td>        </tr>    </table></div></div><div class="about-block block" id="about"><div class="container">    <h2 class="throw-line">        <span>Что такое &laquo;Пазл&raquo;?</span>    </h2>    <div class="row">        <div class="col-xs-8">            <p>                &laquo;Пазл&raquo;&nbsp;&mdash; это рабочее пространство в&nbsp;Чебоксарах, с&nbsp;возможностью почасовой, посуточной и&nbsp;месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.            </p>            <p>                Здесь работают над своими проектами предприниматели, дизайнеры, архитекторы, IT-специалисты, профессионалы и&nbsp;фрилансеры всех мастей.            </p>            <p>У&nbsp;нас вы&nbsp;можете:</p>            <ul>                <li>Комфортно работать;</li>                <li>                    Воспользоваться переговорной комнатой для встречи с&nbsp;клиентом;                </li>                <li>Познакомиться с&nbsp;людьми разных профессий;</li>                <li>Заявить о&nbsp;своем проекте и&nbsp;собрать команду;</li>                <li>Получить рекомендацию профи на&nbsp;открытых семинарах;</li>                <li>Приятно провести время за&nbsp;бизнес-игрой, общением.</li>            </ul>        </div>        <div class="col-xs-4">            <img class="preview-foto" src="http://placehold.it/300x300"></div>    </div></div></div><div class="free-day-block block" id="tarifs"><div class="container">    <h2 class="throw-line">        <span>Получи бесплатное занятие</span>    </h2>    <div class="row">        <div class="col-xs-9">            <div class="text">                <p>                    Проще всего прийти и увидеть все своими глазами, познакомиться, выпить чашку кофе. Выбирайте дату, берите ноутбук и оставайтесь работать целый день.                </p>            </div>        </div>        <div class="col-xs-3">            <div class="buton">                [*FormWidget|template_name=modal_default_form;button_text=Получить бесплатный день;button_class=btn btn-primary;form_caption=Получи бесплатный день в коворкинге ПАЗЛ;form_button_text=Получить бесплатный день;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];email_subject=Поступила заявка на бесплатный день*]            </div>        </div>    </div></div></div><div class="numbers-block block"><div class="container">    <h2 class="throw-line">        <span>Рабочее пространство &laquo;Пазл&raquo; в цифрах</span>    </h2>    <table class="numbers">        <tr>            <td>                <div class="number">                    150 м <sup>2</sup>                </div>                <div class="text">Рабочее пространство</div>            </td>            <td>                <div class="number">26</div>                <div class="text">Рабочих мест</div>            </td>            <td>                <div class="number">                    50 м <sup>2</sup>                </div>                <div class="text">Переговорная комната</div>            </td>        </tr>    </table></div></div><div class="prices-block block"><div class="container">    <h2 class="throw-line">        <span>Тарифы</span>    </h2>    <div class="row">        <div class="col col-xs-4">            <div class="tariff tariff-1">                <h3 class="title">Свободный</h3>                <div class="properties">                    <ul>                        <li>Рабочее место</li>                        <li>Интернет, wi-fi</li>                        <li>Принтер, сканер, копир</li>                        <li>Кофе, чай, вода</li>                        <li>Личная ячейка для хранения</li>                        <li>Зона отдыха, диваны, пуфики</li>                        <li>Доски и&nbsp;флипчарты</li>                    </ul>                </div>                <div class="ribbon">Скидка на первый месяц!</div>                <br>                <br>                <div class="prices">                    <div>                        <span class="sum old">250</span>                        <span class="sum">200</span>                        <span class="rouble-sign">Р</span>                        <span class="text">день</span>                    </div>                    <div>                        <span class="sum">1 200</span>                        <span class="rouble-sign">Р</span>                        <span class="text">неделя</span>                    </div>                    <div>                        <span class="sum">4 000</span>                        <span class="rouble-sign">Р</span>                        <span class="text">месяц</span>                    </div>                </div>                <div class="order">                    [*FormWidget|template_name=modal_default_form;button_text=Оставить заявку;button_class=btn btn-primary;form_caption=Заявка на посещение коворкинга ПАЗЛ (тариф Свободный);form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на тариф Свободный;email_subject=Поступила заявка на тариф Свободный*]                </div>            </div>        </div>        <div class="col col-xs-4">            <div class="tariff tariff-2">                <h3 class="title">Бизнес</h3>                <div class="properties">                    <ul>                        <li>Рабочее место в&nbsp;комфортном, тихом офисе</li>                        <li>Интернет wi-fi</li>                        <li>Принтер, сканер копир</li>                        <li>Кофе, чай, вода</li>                        <li>Парковка</li>                        <li>Личная ячейка для хранения</li>                        <li>Зона отдыха, диваны, пуфики</li>                        <li>Доски и&nbsp;флипчарты</li>                        <li>Закрепленное рабочее место</li>                        <li>Бизнес библиотека</li>                    </ul>                </div>                <div class="prices">                    <div>                        <span class="sum">350</span>                        <span class="rouble-sign">Р</span>                        <span class="text">день</span>                    </div>                    <div>                        <span class="sum">2 000</span>                        <span class="rouble-sign">Р</span>                        <span class="text">неделя</span>                    </div>                    <div>                        <span class="sum">6 500</span>                        <span class="rouble-sign">Р</span>                        <span class="text">месяц</span>                    </div>                </div>                <div class="order">                    [*FormWidget|template_name=modal_default_form;button_text=Оставить заявку;button_class=btn btn-primary;form_caption=Заявка на посещение коворкинга ПАЗЛ (тариф Бизнес);form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на тариф Бизнес;email_subject=Поступила заявка на тариф Бизнес*]                </div>            </div>        </div>        <div class="col col-xs-4">            <div class="tariff tariff-3">                <h3 class="title">Вечерний</h3>                <br>                <div class="properties">                    <p>                        По&nbsp;выходным и&nbsp;в&nbsp;будни после 19:00 &laquo;Пазл&raquo; превращается в&nbsp;место, где проходят лекции, конференции, вечеринки, мастер-классы и&nbsp;многое другое.                    </p>                </div>                <div class="prices">                    <div>                        <span class="sum">2</span>                        <span class="rouble-sign">Р</span>                        <span class="text">минута</span>                    </div>                </div>                <br>                <br>                <br>                <div class="order">                    [*FormWidget|template_name=modal_default_form;button_text=Оставить заявку;button_class=btn btn-primary;form_caption=Заявка на посещение коворкинга ПАЗЛ (тариф Вечерний);form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на тариф Вечерний;email_subject=Поступила заявка на тариф Вечерний*]                </div>            </div>        </div>    </div></div></div><div class="compare-block block"><div class="container">    <h2 class="throw-line">        <span>Офис или коворкинг?</span>    </h2>    <div class="row">        <div class="col-xs-6 col col-minuses">            <!-- <div class="text-center">            <span class="minus-sign glyphicon glyphicon-minus-sign"></span>        </div>        -->        <div class="text-center">            <img class="minus-sign" src="/img/puzzle-minus.png" alt=""></div>        <h3 class="title text-center">Минусы аренды офиса</h3>        <ul>            <li>Высокая арендная плата</li>            <li>Вложения в&nbsp;ремонт, мебель</li>            <li>Затраты на&nbsp;покупку оргтехники</li>            <li>Плата за&nbsp;интернет</li>            <li>Затраты на&nbsp;уборщицу</li>        </ul>    </div>    <div class="col-xs-6 col col-pluses">        <!-- <div class="text-center">        <span class="plus-sign glyphicon glyphicon-plus-sign"></span>    </div>    -->    <div class="text-center">        <img class="plus-sign" src="/img/puzzle-plus.png" alt=""></div>    <h3 class="title text-center">Преимущества коворкинга</h3>    <ul>        <li>Удобное рабочее место</li>        <li>            Переговорная комната для встречи с&nbsp;клиентами или партнерами        </li>        <li>Бесплатный wi-fi</li>        <li>Бесплатная оргтехника</li>        <li>Бесплатный чай, кофе</li>        <li>Комфортная зона отдыха (диваны, пуфики, игры, книги)</li>        <li>Личный охраняемый ящик для хранения</li>        <li>Регулярные обучающие семинары</li>        <li>            Возможность завязать полезные знакомства, найти партнера по&nbsp;бизнесу        </li>        <li>Нет ощущения что ты&nbsp;идешь на&nbsp;РА-БО-ТУ</li>    </ul></div></div></div></div><div class="rent-for-events-block block" id="rent1"><div class="container"><h2 class="throw-line"><span>Аренда пространства на мероприятия</span></h2><h3 class="text-center">&laquo;Пазл&raquo; &mdash; это универсальное пространство для проведения мероприятий разного масштаба.</h3><p class="text-center">Высокоскоростной Wi-Fi, проекционное оборудование, флипчарты, полностью мобильное пространство.</p><br><div class="row"><div class="col-xs-6">    <img class="preview-foto" src="/uploads/space_01.jpg" style="width: 450px"></div><div class="col-xs-6">    <img class="preview-foto" src="/uploads/space_02.jpg" style="width: 450px"></div></div><br><div class="row"><div class="col-xs-6">    <ul>        <li>деловые встречи;</li>        <li>презентации;</li>        <li>конференции;</li>        <li>семинары;</li>    </ul></div><div class="col-xs-6">    <ul>        <li>мастер-классы;</li>        <li>бизнес-игры;</li>        <li>многое другое.</li>    </ul></div></div><h3 class="text-center">Аренда от 800 рублей в час</h3><div class="text-center">[*FormWidget|template_name=modal_default_form;button_text=Арендовать;button_class=btn btn-lg btn-primary;form_caption=Арендовать пространство на мероприятие;form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на аренду пространства на мероприятие;email_subject=Поступила заявка на аренду пространства на мероприятие*]<br><br><p class="text-center">    <a href="/rent">Cхема аренды залов</a></p></div></div></div><div class="rent-room-block block" id="rent2"><div class="container"><h2 class="throw-line"><span>Аренда переговорной комнаты</span></h2><p>Переговорная комната на&nbsp;час&nbsp;&mdash; это удобное место встречи, экономия расходов на&nbsp;содержание офиса, современное оборудование!</p><p>Назначьте деловую встречу в&nbsp;современном и&nbsp;стильном офисе.Пригласите партнеров и&nbsp;будьте уверены, что переговоры сразу пойдут в&nbsp;нужной вам тональности.</p><p>В&nbsp;офисном центре &laquo;Пазл&raquo; переговорная комната полностью соответствует современным требованиям и&nbsp;стандартам организации помещений для проведения деловых встреч и&nbsp;собраний. Переговорная оснащена компьютером, проектором, плазменным&nbsp;ТВ, доступом к&nbsp;сети интернет, информационной доской, позволяющей наглядно демонстрировать основные мысли и&nbsp;идеи лектора. Также возможна организация видеоконференций, и&nbsp;кофе-брейков.</p><div class="row"><div class="col-xs-6">    <img class="preview-foto" src="/uploads/speak_01.jpg" style="width: 450px"></div><div class="col-xs-6">    <img class="preview-foto" src="/uploads/speak_02.jpg" style="width: 450px"></div></div><br><br><div class="text-center">[*FormWidget|template_name=modal_default_form;button_text=Арендовать;button_class=btn btn-lg btn-primary;form_caption=Арендовать переговорную комнату;form_button_text=Оставить заявку;form_button_class=btn btn-primary;fields=[{"type": "text","name": "phone","label": "Контактный телефон","value": "","validation": ["required","min:3","max:20"],"html": {"placeholder": "+7"}},{"type": "text","name": "name","label": "Ваше имя","value": "","validation": ["required","min:3","max:300"],"html": {"placeholder": ""}},{"type": "text","name": "date","label": "Дата","value": "","validation": ["required","min:3","max:100"],"html": {"placeholder": "дд.мм.гггг"}}];form_item=Заявка на аренду переговорной комнаты;email_subject=Поступила заявка на аренду переговорной комнаты*]</div></div></div><div class="events-block block" id="events"><div class="container"><h2 class="throw-line"><span>Наши мероприятия</span></h2>[*InlineEventsWidget*]<div class="text-right"><small>    <a href="/events/">Все мероприятия</a></small></div></div></div><div class="reviews-block block" id="reviews"><div class="container"><h2 class="throw-line"><span>Отзывы резидентов</span></h2>[*InlineReviewsWidget*]<div class="text-right"><small>    <a href="/reviews/">Все отзывы</a></small></div></div></div></main>', '', 1, 0, NULL, 'homepage', 1, 'Коворкинг «Пазл» — твое место для работы и отдыха', '«Пазл» — это рабочее пространство в Чебоксарах, с возможностью почасовой, посуточной и месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.', 'коворкинг, рабочее место, аренда, пространство, офис', NULL, '2015-01-26 15:51:30', NULL, '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', '2015-05-13 12:01:02', 0, 'Guest', 1),
(2, 'Схема аренды залов', 'rent', '<main><div class="container"><br><br><p>Организация и&nbsp;проведение мероприятий в&nbsp;коворкинг-центре &laquo;Пазл&raquo; возможна по&nbsp;трем основным схемам:</p><ol><li>Самостоятельно без аренды зала.</li><li>Закрытое мероприятие с&nbsp;арендой зала.</li><li>Открытое мероприятие с&nbsp;арендой зала.</li></ol><h3>1. Мероприятие проводимое без аренды зала.</h3><p>Вы&nbsp;готовы провести какое-либо мероприятие или тематическую встречу (к&nbsp;примеру для совместной игры в&nbsp;&laquo;Мафию&raquo;) в&nbsp;коворкинг-центре &laquo;Пазл&raquo;, но&nbsp;не&nbsp;хотите бронировать отдельный зал, например, из-за того, что не&nbsp;знаете точно, сколько человек составит вашу аудиторию. В&nbsp;этом случае не&nbsp;обязательно бронировать отдельный зал, вы&nbsp;просто приходите и&nbsp;занимаете свободные места.</p><h4>Анонсирование мероприятия.</h4><p>Вы&nbsp;можете обратиться к&nbsp;администрации коворкинг-центра с&nbsp;целью привлечения дополнительных участников мероприятия из&nbsp;числа постоянных посетителей коворкинг-центра путем размещения анонса события на&nbsp;странице сайта, и&nbsp;в&nbsp;социальных сетях vkontakte, facebook, instagram.</p><p><b>Для этого организатору мероприятия необходимо:</b></p><ol><li>Проверить мероприятие на&nbsp;соответствие формату мероприятий коворкинг-центра &laquo;Пазл&raquo;.</li><li>Отправить заявку на&nbsp;размещение анонса на&nbsp;адрес <a href="mailto:puzzle.office@mail.ru">puzzle.office@mail.ru</a> ( не&nbsp;менее чем за&nbsp;3&nbsp;дня), где коротко и&nbsp;ясно описать:<ul><li>Название мероприятия.</li><li>Суть мероприятия.</li><li>Дату проведения мероприятия.</li><li>Контакты организатора (телефон, адрес электронной почты). Контактные данные необходимы для прямого обращения потенциальных участников к&nbsp;организатору.</li><li>Прикрепить к&nbsp;письму иллюстрацию, которую можно использовать при публикации анонса.</li></ul></li></ol><p>Условия:</p><ul><li>Администрация коворкинг-центра &laquo;Пазл&raquo; оставляет за&nbsp;собой прова отказать в&nbsp;проведении мероприятия без объяснения причин.</li><li>Администрация коворкинг-центра &laquo;Пазл&raquo; оставляет за&nbsp;собой право отказать в&nbsp;публикации анонса без объяснения причин.</li><li>Отказ в&nbsp;публикации анонса не&nbsp;означает запрет на&nbsp;проведение мероприятия, в&nbsp;случае отказа в&nbsp;публикации анонса вы&nbsp;по&nbsp;прежнему можете организовать мероприятие, если администрация не&nbsp;уведомила вас об&nbsp;обратном.</li><li>Арендовать зал для проведения мероприятия не&nbsp;обезательно, вы&nbsp;можете приходить и&nbsp;занимать любые свободные места, однако коворкинг-центр не&nbsp;гарантирует наличие свободных мест в&nbsp;момент посещения.</li><li>Всю ответственность за&nbsp;проведения мероприятия берет на&nbsp;себя организатор.</li></ul><h3>2. Закрытые мероприятия с&nbsp;арендой зала.</h3><p>Вы&nbsp;можете арендовать любой зал коворкинг-центра &laquo;Пазл&raquo; для проведения мероприятий с&nbsp;собственной аудиторией.</p><ul><li>Аренда большого зала 75&nbsp;м2&nbsp;на 50&nbsp;человек&nbsp;&mdash; 700&nbsp;руб/час</li><li>Аренда VIP зала (столы, кожаные кресла) 50&nbsp;м2&nbsp;на 20&nbsp;человек&nbsp;&mdash; 800&nbsp;руб/час</li></ul><p><small>*в&nbsp;стоимость входит интернет, кулер с&nbsp;водой.</small></p><p>Аренда оборудования для проведения презентаций (компьютер, проектор с&nbsp;экраном, микрофоны, колонки, флипчарт) оплачиваются отдельно 1500&nbsp;руб/день.</p><p>Организация кофе-брейков 50&nbsp;руб/чел.</p><h3>3. Открытые мероприятия с&nbsp;арендой зала.</h3><p>Любой зал коворкинг-центра &laquo;Пазл&raquo; можно арендовать для проведения мероприятий с&nbsp;целью коммерческой выгоды, рекламы продукта/услуги и&nbsp;другой.</p><p>Для участия в&nbsp;мероприятии вы&nbsp;можете приглашать собственную сложившуюся аудиторию, а&nbsp;также привлечь дополнительных участников из&nbsp;числа постоянных посетителей коворкинг-центра.</p><p>Для этого организатору мероприятия необходимо:</p><ul><li>Арендовать зал</li><li>Соответствовать формату мероприятий (уточните у&nbsp;администрации).</li></ul><br><br></div></main>', '', 1, 0, NULL, '', 1, 'Схема аренды залов | Коворкинг «Пазл» — твое место для работы и отдыха', '«Пазл» — это рабочее пространство в Чебоксарах, с возможностью почасовой, посуточной и месячной оплаты. Рабочее место оснащено всем необходимым, проведен бесплатный интернет, установлена офисная оргтехника.', 'коворкинг, рабочее место, аренда, пространство, офис', NULL, '2015-01-26 15:51:30', NULL, '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', '2015-05-13 12:01:02', 0, 'Guest', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
`user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`user_id`, `first_name`, `last_name`) VALUES
(1, 'Administrator', 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles_fields`
--

DROP TABLE IF EXISTS `profiles_fields`;
CREATE TABLE IF NOT EXISTS `profiles_fields` (
`id` int(11) NOT NULL,
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
  `visible` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profiles_fields`
--

INSERT INTO `profiles_fields` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`) VALUES
(1, 'first_name', 'First Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect First Name (length between 3 and 50 characters).', '', '', '', '', 1, 3),
(2, 'last_name', 'Last Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect Last Name (length between 3 and 50 characters).', '', '', '', '', 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
`id` int(11) NOT NULL,
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
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `annotation`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `nn`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
(1, 'Владимир Маяковский', 'Советский поэт', '<p>Коворкинг Puzzle вообще решает.</p>', 'reviews-04.jpg', NULL, NULL, 4, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(2, 'Федор Достоевский', 'Один из лучших романистов мирового значения', '<p>Очень жалею, что когда мы с партнерами начинали свой маленький бизнес, не существовало коворкинга! Мы снимали офис и платили непосильную плату. Мы где-то встречались с партнерами и клиентами, где-то ели, где-то отмечали наши маленькие праздники.</p>', 'reviews-03.jpg', NULL, NULL, 3, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(3, 'Николай Некрасов', 'Русский поэт, писатель и публицист', '<p>Я выбрал Puzzle, потому что это обалденная возможность иметь свое представительство в Чебоксарах за более чем умеренную стоимость.</p>', 'reviews-02.jpg', NULL, NULL, 2, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1),
(4, 'Лев Толстой', 'Великий русский писатель XIX века', '<p>Я искал такое место в центре, где бы атмосфера соответствовала моему образу жизни и внутреннему пониманию комфорта, но и давала возможность сосредоточено поработать в удобной обстановке. Коворкинг «Puzzle» стал именно тем заведением , на котором я остановил свой выбор после посещения нескольких других мест.</p>', 'reviews-01.jpg', NULL, NULL, 1, '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', '127.0.0.1', '2015-04-12 16:09:59', 1, 'zzeraw', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activkey`, `superuser`, `status`, `create_at`, `lastvisit_at`) VALUES
(1, 'zzeraw', 'c1fb490f5090d6b51f8ae78f717ebdec1fca7170', 'pekidoch@gmail.com', '6e999d693da221429608671226e0a81d6e5e8d21', 1, 1, '2015-03-10 17:37:21', '2015-04-30 06:29:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blocks`
--
ALTER TABLE `blocks`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `form_requests`
--
ALTER TABLE `form_requests`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
 ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `profiles_fields`
--
ALTER TABLE `profiles_fields`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_username` (`username`), ADD UNIQUE KEY `user_email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blocks`
--
ALTER TABLE `blocks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `form_requests`
--
ALTER TABLE `form_requests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `profiles_fields`
--
ALTER TABLE `profiles_fields`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `profiles`
--
ALTER TABLE `profiles`
ADD CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
