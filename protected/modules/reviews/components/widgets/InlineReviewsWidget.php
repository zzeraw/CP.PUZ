<?php

class InlineReviewsWidget extends CWidget
{
    public function run()
    {
        $models = Review::model()->active()->nn()->limit()->findAll();

        $this->render('inlineReviewsWidget', array('models' => $models));
    }
}