<?php
$this->pageTitle = Yii::app()->name . ' - '.UserModule::t("Login");
$this->breadcrumbs = array(
	UserModule::t("Login"),
);
?>

<h1><?php echo UserModule::t("Login"); ?></h1>

<?php if (Yii::app()->user->hasFlash('loginMessage')): ?>

<div class="alert alert-success" role="alert">
	<?php echo Yii::app()->user->getFlash('loginMessage'); ?>
</div>

<?php endif; ?>

<blockquote>
    <p><?php echo UserModule::t("Please fill out the following form with your login credentials:"); ?></p>
</blockquote>

<div class="form">
<?php echo CHtml::beginForm(); ?>

	<p class="note"><?php echo UserModule::t('Fields with <span class="required">*</span> are required.'); ?></p>

	<?php echo CHtml::errorSummary($model); ?>

	<div class="form-group">
		<?php echo CHtml::activeLabelEx($model,'username'); ?>
		<?php echo CHtml::activeTextField($model,'username', array('class' => 'form-control')) ?>
	</div>

	<div class="form-group">
		<?php echo CHtml::activeLabelEx($model,'password'); ?>
		<?php echo CHtml::activePasswordField($model,'password', array('class' => 'form-control')) ?>
	</div>

	<div class="form-group">
		<p class="hint">
		      <?php echo CHtml::link(UserModule::t("Register"),Yii::app()->getModule('user')->registrationUrl); ?> | <?php echo CHtml::link(UserModule::t("Lost Password?"),Yii::app()->getModule('user')->recoveryUrl); ?>
		</p>
	</div>

	<div class="form-group rememberMe">
		<?php echo CHtml::activeCheckBox($model,'rememberMe'); ?>
		<?php echo CHtml::activeLabelEx($model,'rememberMe'); ?>
	</div>

	<div class="form-group submit">
		<?php echo CHtml::submitButton(UserModule::t("Login"), array('class' => 'btn btn-default')); ?>
	</div>

<?php echo CHtml::endForm(); ?>
</div><!-- form -->


<?php
$form = new CForm(array(
    'elements'=>array(
        'username'=>array(
            'type'=>'text',
            'maxlength'=>32,
        ),
        'password'=>array(
            'type'=>'password',
            'maxlength'=>32,
        ),
        'rememberMe'=>array(
            'type'=>'checkbox',
        )
    ),

    'buttons'=>array(
        'login'=>array(
            'type'=>'submit',
            'label'=>'Login',
        ),
    ),
), $model);
?>