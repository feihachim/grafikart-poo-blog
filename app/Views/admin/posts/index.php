<h1>Administrer les articles</h1>

<p>
    <a href="?page=admin.posts.add" class="btn btn-success">ajouter</a>
</p>

<table class="table">
    <thead>
        <tr>
            <td>ID</td>
            <td>Titre</td>
            <td>Actions</td>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($posts as $post) : ?>
            <tr>
                <td><?= $post->id; ?></td>
                <td><?= $post->title; ?></td>
                <td>
                    <a class="btn btn-primary" href="?page=admin.posts.edit&id=<?= $post->id; ?>">Editer</a>
                    <form action="?page=admin.posts.delete" method="POST" style="display:inline">
                        <input type="hidden" name="id" value="<?= $post->id; ?>">
                        <input class="btn btn-danger" type="submit" value="Supprimer">
                    </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>