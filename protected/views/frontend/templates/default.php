<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

    <?php $this->widget('LoadBlockWidget', array('alias' => 'header')); ?>

    <main>

        <div class="content">

            <div class="container">

                <br><br>

                <?php if (isset($this->breadcrumbs)) : ?>
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
                <?php endif; ?>

                <?php if (isset($this->page->id) && $this->page->show_title == 1) : ?>
                    <div class="font-h1 font-h-color margin-h2"><?=$this->page->title?></div>
                <?php endif; ?>

                <?php echo $content; ?>

            </div>

            <br><br>

        </div>

    </main>

    <?php $this->widget('LoadBlockWidget', array('alias' => 'footer')); ?>

<?php $this->endContent(); ?>