<?php
$app = App::getInstance();
$category = $app->getTable('Category');
$categorie = $category->find($_GET['id']);
if ($categorie === false)
{
    $app->notFound();
}
$articles = $app->getTable('Post')->lastByCategory($_GET['id']);
$categories = $category->all();

?>

<div class="row">
    <div class="col-sm-8">
        <h1><?= $categorie->title; ?></h1>
        <?php
        foreach ($articles as $post) :

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
            foreach ($categories as $category) :
            ?>
                <li><a href="<?= $category->url; ?>"><?= $category->title; ?></a></li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>