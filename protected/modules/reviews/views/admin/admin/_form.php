<div class="form">

<?php $form = $this->beginWidget('CActiveForm', array(
	'id' => 'review-form',
	'enableAjaxValidation' => false,
	'clientOptions' => array(
    	'validateOnSubmit' => true,
    ),
)); ?>

	<p class="note">Поля, отмеченные <span class="required">*</span>, обязательны для заполнения.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'annotation'); ?>
		<?php echo $form->textArea($model,'annotation', array('class' => 'form-control input-large')); ?>
		<?php echo $form->error($model,'annotation'); ?>
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

