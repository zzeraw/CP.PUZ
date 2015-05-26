<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

    <?php $this->widget('LoadBlockWidget', array('alias' => 'header')); ?>

    <?php if (isset($this->breadcrumbs)) : ?>
        <div class="container">
        <br>
            <?php $this->widget('BWBreadcrumbs', array(
                'homeLink' => CHtml::link('Главная', '/'),
                'links' => $this->breadcrumbs,
                'tagName' => 'ol',
                'htmlOptions' => array(
                    'class' => 'breadcrumb',
                ),
                'activeLinkTemplate' => '<li><a href="{url}" title="{label}">{label}</a></li>',
                'inactiveLinkTemplate' => '<li class="active">{label}</li>',
                'separator' => false,
                'encodeLabel' => false,
            )); ?>
        </div>
    <?php endif; ?>

    <?php if (isset($this->page->id) && $this->page->show_title == 1) : ?>
        <h1><?=$this->page->title?></h1>
    <?php endif; ?>

    <?php if (isset($this->page->id)) : ?>
        <div>
            <?=$this->decodeWidgets($this->page->begin_body)?>
        </div>
    <?php endif; ?>

    <?php echo $content; ?>

    <?php if (isset($this->page->id)) : ?>
        <div>
            <?=$this->decodeWidgets($this->page->end_body)?>
        </div>
    <?php endif; ?>

    <?php $this->widget('LoadBlockWidget', array('alias' => 'footer')); ?>

<?php $this->endContent(); ?>