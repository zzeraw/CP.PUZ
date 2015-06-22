<?php $this->pageTitle =  'Отзывы резидентов о коворкинге ПАЗЛ' . ' | ' . Yii::app()->name; ?>

<h1>Отзывы резидентов о коворкинге &laquo;ПАЗЛ&raquo;</h1>

<hr>

<?php if (count($models)) : ?>
    <?php foreach ($models as $model) : ?>
        <div class="review">
            <div class="media">
                <div class="media-left">
                    <?php if (!empty($model->image)) : ?>
                        <img class="media-object img-circle preview-foto" src="<?=$model->getImageUrl()?>" width=100>
                    <?php else: ?>
                        <img class="media-object img-circle preview-foto" src="http://placehold.it/100x100&text=PUZZLE?>">
                    <?php endif; ?>
                </div>
                <div class="media-body">
                    <h3 class="media-heading"><?=$model->name?></h3>
                    <p class="profession"><?=$model->annotation?></p>
                    <?=$model->body?>
                </div>
            </div>
        </div>
        <hr>
    <?php endforeach; ?>
<?php else: ?>
    <p>К сожалению, пока никто из резидентов не оставил отзывов</p>
<?php endif; ?>
