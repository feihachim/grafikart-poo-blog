<?php

namespace App\Table;

use \Core\Table\Table;

class PostTable extends Table
{
    protected $table = "articles";
    /**
     *Récupère les derniers articles
     *@return array
     */
    public function last()
    {
        return $this->query("SELECT articles.id,articles.title,articles.content,articles.date,categories.title AS category
        FROM articles 
        LEFT JOIN categories ON category_id=categories.id 
        ORDER BY articles.date DESC");
    }

    /**
     * Récupère les derniers articles de la catégorie demandéd
     *@param int $category_id
     *@return array
     */
    public function lastByCategory($category_id)
    {
        return $this->query("SELECT articles.id,articles.title,articles.content,articles.date,categories.title AS category 
        FROM articles 
        LEFT JOIN categories ON category_id=categories.id 
        WHERE category_id=? 
        ORDER BY articles.date DESC", [$category_id]);
    }

    /**
     * Récupère un article en liant la catégorie associée
     * @param int $id
     * @return \App\Entity\PostEntity
     */
    public function find($id)
    {
        return $this->query("SELECT articles.id,articles.title,articles.content,articles.date,categories.title AS category 
        FROM articles 
        LEFT JOIN categories ON category_id=categories.id 
        WHERE articles.id=?", [$id], true);
    }
}
