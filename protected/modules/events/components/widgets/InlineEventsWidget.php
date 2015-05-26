<?php

class InlineEventsWidget extends CWidget
{
    public function run()
    {
        $models = Event::model()->active()->nn()->actual()->limit()->findAll();

        $this->render('inlineEventsWidget', array('models' => $models));
    }
}