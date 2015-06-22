<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Редактировать отзыв: ' . $model->name;

$this->breadcrumbs[] = array('route' => array('index'), 'title' => 'Отзывы');
$this->breadcrumbs[] = array('route' => false, 'title' => 'Редактировать отзыв: '. $model->name);

$this->menu = array(
    array(
        'label' => 'Список отзывов',
        'icon' => 'list',
        'url' => array('index')
    ),
    array(
        'label' => 'Создать отзыв',
        'icon' => 'plus',
        'url' => array('create')
    ),
    array(
        'label' => ($model->active == 1) ? 'Выключить отзыв' : 'Включить отзыв',
        'icon' => ($model->active == 1) ? 'icon-off' : 'icon-ok',
        'url' => ($model->active == 1) ? array('turnOff', 'id' => $model->id) : array('turnOn', 'id' => $model->id)
    ),

    array(
        'label' => 'Удалить отзыв',
        'icon' => 'remove',
        'url' => array('delete', 'id' => $model->id),
        'htmlOptions' => array(
            'confirm' => 'Вы действительно хотите удалить этот отзыв (' . $model->name . ')?'
        ),
    ),
);

?>

<h1>Редактировать отзыв: <?php echo $model->name; ?></h1>

<?php echo $this->renderPartial('_form', array('model' => $model)); ?>
