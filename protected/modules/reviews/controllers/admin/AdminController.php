<?php

class AdminController extends BackEndController
{
    private $_model_name = 'Review';
    private $_e_404_message = 'Запрашиваемый отзыв не найдено.';

    public function actions()
    {
        return array(
            'delete' => array(
                'class' => 'DeleteAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Отзыв удален!',
                'error_message' => 'Отзыв не удален!',
                'e_404_message' => $this->_e_404_message,
            ),
            'create' => array(
                'class' => 'CreateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Отзыв успешно создан!',
                'error_message' => 'Не удалось создать отзыв!',
            ),
            'update' => array(
                'class' => 'UpdateAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Отзыв успешно изменен!',
                'error_message' => 'Не удалось изменить отзыв!',
                'e_404_message' => $this->_e_404_message,
            ),
            'index' => array(
                'class' => 'IndexAction',
                'model_name' => $this->_model_name,
            ),
            'turnOn' => array(
                'class' => 'TurnOnAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Отзыв успешно включен!',
                'error_message' => 'Не удалось включить отзыв!',
                'e_404_message' => $this->_e_404_message,
            ),
            'turnOff' => array(
                'class' => 'TurnOffAction',
                'model_name' => $this->_model_name,
                'success_message' => 'Отзыв успешно выключен!',
                'error_message' => 'Не удалось выключить отзыв!',
                'e_404_message' => $this->_e_404_message,
            ),
        );
    }
}