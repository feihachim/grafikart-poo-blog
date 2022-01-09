<?php

define('ROOT', dirname(__DIR__));
require ROOT . '/app/App.php';
App::load();

if (isset($_GET['page']))
{
    $page = $_GET['page'];
}
else
{
    $page = 'home';
}

ob_start();
if ($page === 'home')
{
    require ROOT . '/pages/posts/home.php';
}
elseif ($page === 'posts.category')
{
    require ROOT . '/pages/posts/category.php';
}
elseif ($page === 'posts.show')
{
    require ROOT . '/pages/posts/show.php';
}
$content = ob_get_clean();
require ROOT . '/pages/templates/default.php';
