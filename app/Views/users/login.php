<?php if ($errors) : ?>
    <div class="alert alert-danger">Identifiants incorrects</div>
<?php endif; ?>

<form method="POST">
    <?= $form->input('username', 'Pseudo'); ?>
    <?= $form->input('password', 'Mot de passe', ['type' => 'password']); ?>
    <?= $form->submit(); ?>
</form>