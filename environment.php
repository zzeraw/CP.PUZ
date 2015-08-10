<?php

$environment = 'development';

switch (dirname(__FILE__)) {
    case '/Users/paveldanilov/Sites/sites.dev/puzzle':
    case 'd:\OpenServer\domains\sites.dev\puzzle':
    case 'D:\OpenServer\domains\sites.dev\puzzle':
        $protected = '/protected';
        break;
    default:
        $environment = 'production';
        $protected = '/../app/protected';
        break;
}

if ($environment == 'development') {
    $yii = dirname(__FILE__) . '/_framework/1.1.16/yii.php';
} else {
    $yii = dirname(__FILE__) . '/../../frameworks/Yii/1.1.16/yiilite.php';
}

if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
    define('YII_OS', 'WIN');
} else {
    define('YII_OS', PHP_OS);
}

if (($environment == 'development') || ($environment == 'test')) {
//    define('YII_DEBUG', false);
//    error_reporting(0);
    error_reporting(E_ALL);
    defined('YII_DEBUG') or define('YII_DEBUG', true);
    defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
} else {
    // error_reporting(E_ALL);
    // defined('YII_DEBUG') or define('YII_DEBUG', true);
    // defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
    define('YII_DEBUG', false);
    error_reporting(0);
}
?>