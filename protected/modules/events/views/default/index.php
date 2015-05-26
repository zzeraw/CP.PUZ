<?php $this->pageTitle =  'Мероприятия в коворкинге ПАЗЛ' . ' | ' . Yii::app()->name; ?>

<h1>Мероприятия в коворкинге &laquo;ПАЗЛ&raquo;</h1>

<hr>

<?php if (count($actual_models)) : ?>
    <?php foreach ($actual_models as $model) : ?>
        <div class="event">
            <div class="media actual">
                <div class="media-left">
                    <?php if (!empty($model->image)) : ?>
                        <?=CHtml::link('<img class="preview-foto" src="<?=$model->getImageUrl()?>">', array('/events/default/view', 'id' => $model->id)); ?>
                    <?php else: ?>
                        <?=CHtml::link('<img class="preview-foto" src="http://placehold.it/100x100&text=PUZZLE?>">', array('/events/default/view', 'id' => $model->id)); ?>
                    <?php endif; ?>
                </div>
                <div class="media-body">
                    <p><?=CHelper::sqlDateTimeToRussianDateTime($model->datetime);?></p>
                    <?=CHtml::link($model->title , array('/events/default/view', 'id' => $model->id)); ?>
                    <p><?=$model->author?></p>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
<?php else: ?>
    <p>К сожалению, актуальных мероприятий пока не ожидается</p>
<?php endif; ?>

<?php if (count($closed_models)) : ?>
    <hr>
    <h3>Завершившиеся мероприятия</h3>
    <?php foreach ($closed_models as $model) : ?>

        <div class="event">
            <div class="media closed">
                <div class="media-left">
                    <?php if (!empty($model->image)) : ?>
                        <?=CHtml::link('<img class="preview-foto" src="<?=$model->getImageUrl()?>">', array('/events/default/view', 'id' => $model->id)); ?>
                    <?php else: ?>
                        <?=CHtml::link('<img class="preview-foto" src="http://placehold.it/100x100&text=PUZZLE?>">', array('/events/default/view', 'id' => $model->id)); ?>
                    <?php endif; ?>
                </div>
                <div class="media-body">
                    <p><?=CHelper::sqlDateTimeToRussianDateTime($model->datetime);?></p>
                    <?=CHtml::link($model->title , array('/events/default/view', 'id' => $model->id)); ?>
                    <p><?=$model->author?></p>
                </div>
            </div>
        </div>

    <?php endforeach; ?>
<?php endif; ?>