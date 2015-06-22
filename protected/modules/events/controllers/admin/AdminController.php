<?php

class AdminController extends BackEndController
{
    private $_model_name = 'Event';
    private $_e_404_message = 'Запрашиваемое событие не найдено.';

    public function actions()
    {
        return array(
            'delete' => array(
                'class' => 'DeleteAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Событие удалено!',
                'error_message' => 'Событие не удалено!',
                'e_404_message' => $this->_e_404_message,
            ),
            'create' => array(
                'class' => 'CreateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Событие успешно создано!',
                'error_message' => 'Не удалось создать событие!',
            ),
            'update' => array(
                'class' => 'UpdateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Событие успешно изменено!',
                'error_message' => 'Не удалось изменить событие!',
                'e_404_message' => $this->_e_404_message,
            ),
            'index' => array(
                'class' => 'IndexAction',
                'model_name' => $this->_model_name,
            ),
            'turnOn' => array(
                'class' => 'TurnOnAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Событие успешно включено!',
                'error_message' => 'Не удалось включить событие!',
                'e_404_message' => $this->_e_404_message,
            ),
            'turnOff' => array(
                'class' => 'TurnOffAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Событие успешно выключено!',
                'error_message' => 'Не удалось выключить событие!',
                'e_404_message' => $this->_e_404_message,
            ),
        );
    }
}