<?php foreach (array_chunk($models, 2) as $chunk) : ?>

    <div class="row">

        <?php if (isset($chunk[0])) : ?>
            <div class="col-xs-6">
                <div class="media">
                    <div class="media-left media-top">
                        <img class="media-object img-circle" src="<?=$chunk[0]->getImageUrl()?>" alt="<?=$chunk[0]->name?>">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading"><?=$chunk[0]->name?></h3>
                        <p class="profession"><?=$chunk[0]->annotation?></p>
                        <?=$chunk[0]->body?>
                    </div>
                </div>
            </div>
        <?php endif; ?>

        <?php if (isset($chunk[1])) : ?>
            <div class="col-xs-6">
                <div class="media">
                    <div class="media-left media-top">
                        <img class="media-object img-circle" src="<?=$chunk[1]->getImageUrl()?>" alt="<?=$chunk[1]->name?>">
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading"><?=$chunk[1]->name?></h3>
                        <p class="profession"><?=$chunk[1]->annotation?></p>
                        <?=$chunk[1]->body?>
                    </div>
                </div>
            </div>
        <?php endif; ?>

    </div>


<?php endforeach; ?>
