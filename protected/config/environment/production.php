<?php

return CMap::mergeArray(
    require(dirname(__FILE__) . '/../main.php'),
    array(
        'components'=>array(
            'db' => array(
                'connectionString' => 'mysql:host=localhost;dbname=######',
                'emulatePrepare' => true,
                'username' => '######',
                'password' => '######',
                'charset' => 'utf8',
                'tablePrefix' => '',
            ),
            'log' => array(
                'class'=>'CLogRouter',
                'routes'=>array(
                    array(
                        'class' => 'CEmailLogRoute',
//                        'categories' => 'errors',
                        'levels' => CLogger::LEVEL_ERROR,
                        'emails' => array('pv.danilov.dev@yandex.ru'),
                        'sentFrom' => 'log@puzzle21.ru',
                        'subject' => 'Критическая ошибка на puzzle21.ru',
                    ),
                    array(
                        'class' => 'CEmailLogRoute',
//                        'categories' => 'warnings',
                        'levels' => CLogger::LEVEL_WARNING,
                        'emails' => array('pv.danilov.dev@yandex.ru'),
                        'sentFrom' => 'log@puzzle21.ru',
                        'subject' => 'Ошибка на puzzle21.ru',
                    ),
                ),
            ),
        ),
        'modules' => array(
            // uncomment the following to enable the Gii tool
            'gii' => array(),
        ),
    )
);

?>