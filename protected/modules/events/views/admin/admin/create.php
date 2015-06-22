<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Добавить событие';

$this->breadcrumbs[] = array('route' => array('index'), 'title' => 'Страницы');
$this->breadcrumbs[] = array('route' => false, 'title' => 'Добавить событие');

$this->menu = array(
    array(
        'label' => 'Список событий',
        'icon' => 'list',
        'url' => array('index')
    ),
);
?>

<h1>Добавить событие</h1>

<?php echo $this->renderPartial('_form', array('model' => $model)); ?>