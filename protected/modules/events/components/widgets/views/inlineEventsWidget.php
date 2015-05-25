<div class="row">
    <?php foreach ($models as $model) : ?>
            <div class="col-xs-2 event">
                <div class="day"><?=date_format(date_create($model->datetime), "d");?></div>
                <div class="month"><?=Yii::app()->getLocale('ru')->getMonthName((int)date_format(date_create($model->datetime), "m"), 'wide');?></div>
                <div class="time"><?=date_format(date_create($model->datetime), "H:i");?></div>
                <div class="image">
                    <img class="preview-foto" src="<?=$model->getImageUrl()?>">
                </div>
                <div class="coucher"><?=$model->author?></div>
                <div>
                    <div class="title">
                        <?=$model->title?>
                    </div>
                </div>
            </div>
    <?php endforeach; ?>
</div>