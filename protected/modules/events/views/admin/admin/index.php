<?php
/* @var $this PageController */
/* @var $model Page */

$this->pageTitle = Yii::app()->name . ' - ' . 'Список событий';

$this->breadcrumbs[] = array('route' => false, 'title' => 'События');

$this->menu = array(
    array(
        'label' => 'Добавить событие',
        'icon' => 'plus',
        'url' => array('create')
    ),
);

?>

<h1>События</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id' => 'events-grid',
    'dataProvider' => $model->search(),
    'itemsCssClass' => 'table',
    'selectableRows' => 0,
    'rowCssClassExpression' => '($data->active == 1) ? "row-on" : "row-off"',
    'columns' => array(
        array(
            'class' => 'DataColumn',
            'evaluateHtmlOptions' => true,
            'type' => 'html',
            'htmlOptions' => array(
                'class' => '($data->active == 1) ? "td-active" : "td-inactive"',
                'title' => '($data->active == 1) ? "Выключить" : "Включить"',
            ),
            'value' => 'CHtml::link(($data->active == 1) ? "<span class=\'glyphicon glyphicon-off\'></span>" : "<span class=\'glyphicon glyphicon-play\'></span>", array(($data->active == 1) ? "turnOff" : "turnOn", "id" => $data->id))',
        ),
        array(
            'name' => 'title',
            'htmlOptions' => array('class' => 'event-title'),
            'type' => 'html',
            'value' => 'CHtml::link(CHtml::encode($data->title), array("update", "id" => $data->id))'
        ),
        'author',
        'datetime',
        array(
            'class' => 'CButtonColumn',
            'template' => '{delete}',
            'deleteConfirmation' => "js:'Вы действительно хотите удалить событие ' + $(this).parents('tr').children('.event-title').text() + '?'",
            'buttons' => array(
                'delete' => array(
                    'label' => 'Удалить',
                    'icon' => 'remove',
                    'url' => 'Yii::app()->createUrl("events/admin/admin/delete", array("id" => $data->id))',
                ),
            ),
        ),
    ),
)); ?>
