<?php

$_routes = array(
    array('sitemap/default/xml', 'pattern' => 'sitemap.xml', 'urlSuffix' => ''),
    array('sitemap/default/index', 'pattern' => 'sitemap', 'urlSuffix' => ''),

    '<module:(forms)>/<controller:(ajax)>/<action:\w+>' => '<module>/<controller>/<action>',

    'events' => 'events/default/index',
    'events/<id:\d+>' => 'events/default/view',

    'reviews' => 'reviews/default/index',

    '<alias:[\w\-]+>' => array('pages/default/view/', 'alias'=>'<alias>'),
    '/' => array('pages/default/view/'),
);