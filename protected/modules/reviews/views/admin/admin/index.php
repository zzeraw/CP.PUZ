<?php
/* @var $this PageController */
/* @var $model Page */

$this->pageTitle = Yii::app()->name . ' - ' . 'Список отзывов';

$this->breadcrumbs[] = array('route' => false, 'title' => 'Отзывы');

$this->menu = array(
    array(
        'label' => 'Добавить отзыв',
        'icon' => 'plus',
        'url' => array('create')
    ),
);

?>

<h1>Отзывы</h1>

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
            'name' => 'name',
            'htmlOptions' => array('class' => 'review-name'),
            'type' => 'html',
            'value' => 'CHtml::link(CHtml::encode($data->name), array("update", "id" => $data->id))'
        ),
        'annotation',
        array(
            'class' => 'CButtonColumn',
            'template' => '{delete}',
            'deleteConfirmation' => "js:'Вы действительно хотите удалить отзыв ' + $(this).parents('tr').children('.review-name').text() + '?'",
            'buttons' => array(
                'delete' => array(
                    'label' => 'Удалить',
                    'icon' => 'remove',
                    'url' => 'Yii::app()->createUrl("reviews/admin/admin/delete", array("id" => $data->id))',
                ),
            ),
        ),
    ),
)); ?>
