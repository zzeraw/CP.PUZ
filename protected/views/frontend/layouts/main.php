<!doctype html>

<!--[if lt IE 7]>
<html lang="ru" class="no-js lt-ie9 lt-ie8 lt-ie7">
<![endif]-->
<!--[if IE 7]>
<html lang="ru" class="no-js lt-ie9 lt-ie8">
<![endif]-->
<!--[if IE 8]>
<html lang="ru" class="no-js lt-ie9">
<![endif]-->
<!--[if gt IE 8]>
<html lang="ru" class="no-js">
<![endif]-->


<!--[if !IE]><!--><html lang="ru" class="not-ie"><!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="description" content='<?php echo CHtml::encode($this->pageDescription); ?>'>
    <meta name="keywords" content='<?php echo CHtml::encode($this->pageKeywords); ?>'>

    <meta name="google-site-verification" content="E-cr8gZJdvb6DBJUJMkA3dIhpu6i_ZXauEmAwjxNzzEY">
    <meta name='yandex-verification' content='4-2e08940108f30a5'>
    <meta http-equiv="Pragma" content="no-cache">

    <?php if ($this->pageIndex != 1) : ?>
    <meta name="robots" content="none">
    <?php endif; ?>

    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

    <link rel="apple-touch-icon" href="/touch-icon-iphone.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/touch-icon-ipad-retina.png">

    <title><?php echo CHtml::encode($this->pageTitle); ?></title>

    <script src="/js/modernizr.custom.70918.js"></script>

    <?php if (!YII_DEBUG) : ?>
    <link rel="stylesheet" href="//cdn.callbackhunter.com/widget/tracker.css">
    <script type="text/javascript" src="//cdn.callbackhunter.com/widget/tracker.js" charset="UTF-8"></script>
    <script type="text/javascript">var hunter_code="ff939e06f58306857ff4a47f63e4345d";</script>
    <?php endif;?>

    <?php Yii::app()->clientScript->registerPackage('jquery'); ?>
    <?php Yii::app()->clientScript->registerPackage('bootstrap3'); ?>
    <?php Yii::app()->clientScript->registerPackage('fancybox'); ?>
    <?php Yii::app()->clientScript->registerPackage('frontend-css'); ?>
    <?php Yii::app()->clientScript->registerPackage('frontend-js'); ?>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,800,700,300&subset=latin,cyrillic-ext' rel='stylesheet' type='text/css'>

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="/js/html5shiv.min.js"></script>
        <script src="/js/json2.min.js"></script>
        <script src="/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <?php if (!YII_DEBUG) : ?>
    <!-- Yandex.Metrika counter --><script type="text/javascript">(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter30563102 = new Ya.Metrika({id:30563102, webvisor:true, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");</script><noscript><div><img src="//mc.yandex.ru/watch/30563102" style="position:absolute; left:-9999px;" alt="" /></div></noscript><!-- /Yandex.Metrika counter -->
    <?php endif;?>




    <?php echo $content; ?>


    <?php
        foreach ($this->buffer as $buffer) {
            echo $buffer;
        }
    ?>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script type="text/javascript" src="/js/ie10-viewport-bug-workaround.js"></script>

</body>



</html>

