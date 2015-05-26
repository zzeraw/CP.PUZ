<div class="row">
    <?php foreach ($models as $model) : ?>
            <div class="col-xs-2 event">
                <div class="day"><?=date_format(date_create($model->datetime), "d");?></div>
                <div class="month"><?=Yii::app()->getLocale('ru')->getMonthName((int)date_format(date_create($model->datetime), "m"), 'wide');?></div>
                <div class="time"><?=date_format(date_create($model->datetime), "H:i");?></div>
                <div class="image">
                    <?php if (!empty($model->image)) : ?>
                        <?=CHtml::link('<img class="preview-foto" src="<?=$model->getImageUrl()?>">', array('/events/default/view', 'id' => $model->id)); ?>
                    <?php else: ?>
                        <?=CHtml::link('<img class="preview-foto" src="http://placehold.it/100x100&text=PUZZLE?>">', array('/events/default/view', 'id' => $model->id)); ?>
                    <?php endif; ?>
                </div>
                <div class="coucher"><?=$model->author?></div>
                <div>
                    <div class="title">
                        <?=CHtml::link($model->title , array('/events/default/view', 'id' => $model->id)); ?>
                    </div>
                </div>
            </div>
    <?php endforeach; ?>
</div>