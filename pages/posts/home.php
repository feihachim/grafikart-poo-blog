<div class="row">
    <div class="col-sm-8">

        <?php
        $articles = App::getInstance()->getTable('Post')->last();
        foreach ($articles as $post) :
            //var_dump($post);
        ?>
            <h2>
                <a href="<?= $post->url; ?>"><?= $post->title; ?></a>
            </h2>
            <p><em><?= $post->category; ?></em></p>
            <p><?= $post->extrait; ?></p>
        <?php endforeach; ?>

    </div>
    <div class="col-sm-4">
        <ul>
            <?php
            $categories = App::getInstance()->getTable('Category')->all();
            foreach ($categories as $category) :
            ?>
                <li><a href="<?= $category->url; ?>"><?= $category->title; ?></a></li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>