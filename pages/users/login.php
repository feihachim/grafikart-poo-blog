<?php

use Core\Auth\DBAuth;
use Core\HTML\BootstrapForm;

if (!empty($_POST)) {
    $auth = new DBAuth(App::getInstance()->getDb());
    if ($auth->login($_POST['username'], $_POST['password'])) :
        header('Location: admin.php');
    else : ?>
        <div class="alert alert-danger">
            Identifiants incorrects
        </div>
<?php endif;
}

$form = new BootstrapForm($_POST);
?>

<form method="POST">
    <?= $form->input('username', 'Pseudo'); ?>
    <?= $form->input('password', 'Mot de passe', ['type' => 'password']); ?>
    <?= $form->submit(); ?>
</form>