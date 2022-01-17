<h1>Administrer les catégories</h1>

<p>
    <a href="?page=admin.categories.add" class="btn btn-success">ajouter</a>
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
        <?php foreach ($categories as $category) : ?>
            <tr>
                <td><?= $category->id; ?></td>
                <td><?= $category->title; ?></td>
                <td>
                    <a class="btn btn-primary" href="?page=admin.categories.edit&id=<?= $category->id; ?>">Editer</a>
                    <form action="?page=admin.categories.delete" method="POST" style="display:inline">
                        <input type="hidden" name="id" value="<?= $category->id; ?>">
                        <input class="btn btn-danger" type="submit" value="Supprimer">
                    </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>