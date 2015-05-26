<?php

class DefaultController extends FrontEndController
{
    public $layout = 'events.views.templates.default';

    public function init()
    {
        parent::init();

        $this->getPage();
    }

    public function actionIndex()
    {
        $this->breadcrumbs[] = array(
            'route' => false,
            'title' => 'Мероприятия в коворкинге &laquo;ПАЗЛ&raquo;',
        );

        $actual_models = Event::model()->active()->actual()->desc()->findAll();
        $closed_models = Event::model()->active()->closed()->desc()->findAll();

        $this->render('index',
            array(
                'actual_models' => $actual_models,
                'closed_models' => $closed_models,
            )
        );
    }

    public function actionView($id)
    {
        $model = Event::model()->active()->findByPk($id);

        if (!isset($model->id)) {
            throw new CHttpException(404, 'Запрашиваемая страница не найдена.');
        }

        $this->breadcrumbs[] = array(
            'route' => Yii::app()->createUrl('events/default/index'),
            'title' => 'Мероприятия в коворкинге &laquo;ПАЗЛ&raquo;',
        );

        $this->breadcrumbs[] = array(
            'route' => false,
            'title' => $model->title,
        );

        $this->render('view',
            array(
                'model' => $model,
            )
        );
    }
}