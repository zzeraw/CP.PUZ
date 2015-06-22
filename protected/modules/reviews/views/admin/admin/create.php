<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Добавить отзыв';

$this->breadcrumbs[] = array('route' => array('index'), 'title' => 'Отзывы');
$this->breadcrumbs[] = array('route' => false, 'title' => 'Добавить отзыв');

$this->menu = array(
    array(
        'label' => 'Список отзывов',
        'icon' => 'list',
        'url' => array('index')
    ),
);
?>

<h1>Добавить отзыв</h1>

<?php echo $this->renderPartial('_form', array('model' => $model)); ?>