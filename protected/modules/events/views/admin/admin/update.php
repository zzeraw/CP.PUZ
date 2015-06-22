<?php

$this->pageTitle = Yii::app()->name . ' - ' . 'Редактировать событие: ' . $model->title;

$this->breadcrumbs[] = array('route' => array('index'), 'title' => 'Собтия');
$this->breadcrumbs[] = array('route' => false, 'title' => 'Редактировать событие: '. $model->title);

$this->menu = array(
    array(
        'label' => 'Список событий',
        'icon' => 'list',
        'url' => array('index')
    ),
    array(
        'label' => 'Создать событие',
        'icon' => 'plus',
        'url' => array('create')
    ),
    array(
        'label' => ($model->active == 1) ? 'Выключить событие' : 'Включить событие',
        'icon' => ($model->active == 1) ? 'icon-off' : 'icon-ok',
        'url' => ($model->active == 1) ? array('turnOff', 'id' => $model->id) : array('turnOn', 'id' => $model->id)
    ),

    array(
        'label' => 'Удалить событие',
        'icon' => 'remove',
        'url' => array('delete', 'id' => $model->id),
        'htmlOptions' => array(
            'confirm' => 'Вы действительно хотите удалить это событие (' . $model->title . ')?'
        ),
    ),
);

?>

<h1>Редактировать событие: <?php echo $model->title; ?></h1>

<?php echo $this->renderPartial('_form', array('model' => $model)); ?>
