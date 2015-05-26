<?php $this->pageTitle = $model->title . ' ' . $model->author . ' | ' . Yii::app()->name; ?>

<div class="event">
    <div class="media actual">
        <div class="media-left">
            <?php if (!empty($model->image)) : ?>
                <img class="preview-foto" src="<?=$model->getImageUrl()?>">
            <?php else: ?>
                <img class="preview-foto" src="http://placehold.it/100x100&text=PUZZLE">
            <?php endif; ?>
        </div>
        <div class="media-body">
            <h4><?=$model->title?></h4>
            <p><?=CHelper::sqlDateTimeToRussianDateTime($model->datetime);?></p>
            <p><?=$model->author?></p>
        </div>
    </div>

    <hr>

    <?php $this->decodeWidgets($model->body) ?>
</div>
