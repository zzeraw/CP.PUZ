<div class="form">

<?php $form = $this->beginWidget('CActiveForm', array(
	'id' => 'event-form',
	'enableAjaxValidation' => false,
	'clientOptions' => array(
    	'validateOnSubmit' => true,
    ),
)); ?>

	<p class="note">Поля, отмеченные <span class="required">*</span>, обязательны для заполнения.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'author'); ?>
		<?php echo $form->textField($model,'author', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'author'); ?>
	</div>

	<div class="form-group">
        <?=$form->labelEx(
            $model,
            'datetime'
        );?>
        <?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
            'name' => 'datetime',
            'model' => $model,
            'attribute' => 'datetime',
            'language' => 'ru',
            'options' => array(
                'showAnim' => 'fold',
            ),
            'htmlOptions' => array(
                'class' => 'form-control',
            ),
        ));?>
        <?=$form->error($model, 'datetime');?>
    </div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'body'); ?>
		<?php echo $form->textArea(
			$model,
			'body',
			array(
				'rows' => 6,
				'cols' => 50,
				'class' => 'tinymce',
			)
		); ?>
		<?php echo $form->error($model,'body'); ?>
	</div>

	<?php if (!empty($model->image)) : ?>
        <div class="form-group">
            <img width=100 src="/uploads/catalog/<?=$model->image?>" alt="">
        </div>
    <?php endif; ?>

    <div class="form-group">
        <?php echo $form->labelEx($model,'image'); ?>
        <?php echo $form->fileField($model,'image', array('class' => 'form-control input-large')); ?>
        <?php echo $form->error($model,'image'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model,'image_attr_title'); ?>
        <?php echo $form->textArea($model,'image_attr_title', array('class' => 'form-control input-large')); ?>
        <?php echo $form->error($model,'image_attr_title'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model,'image_attr_alt'); ?>
        <?php echo $form->textArea($model,'image_attr_alt', array('class' => 'form-control input-large')); ?>
        <?php echo $form->error($model,'image_attr_alt'); ?>
    </div>

	<div class="buttons">
		<?php echo CHtml::submitButton('Сохранить', array('class' => 'btn btn-primary')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

