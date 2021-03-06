<?php

class DefaultController extends FrontEndController
{
    public function actionIndex()
    {
        $this->breadcrumbs[] = array(
            'route' => false,
            'title' => 'Отзывы резидентов о коворкинге &laquo;ПАЗЛ&raquo;',
        );

        $models = Review::model()->active()->nn()->findAll();

        $this->render('index',
            array(
                'models' => $models,
            )
        );
    }

}