<?php

namespace Core\Database;

use \PDO;

class MySQLDatabase extends Database
{

    private $db_name;
    private $db_user;
    private $db_password;
    private $db_host;
    private $pdo;

    public function __construct($db_name, $db_user = 'root', $db_password = '', $db_host = 'localhost')
    {
        $this->db_name = $db_name;
        $this->db_user = $db_user;
        $this->db_password = $db_password;
        $this->db_host = $db_host;
    }

    private function getPDO()
    {
        if ($this->pdo === null)
        {
            $dsn = 'mysql:dbname=' . $this->db_name . ';host=' . $this->db_host;
            $pdo = new PDO($dsn, $this->db_user, $this->db_password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->pdo = $pdo;
        }
        return $this->pdo;
    }

    public function query($statement, $class_name = null, $one = false)
    {
        $res = $this->getPDO()->query($statement);
        if (strpos($statement, 'UPDATE') === 0 || strpos($statement, 'INSERT') === 0 || strpos($statement, 'DELETE') === 0)
        {
            return $res;
        }
        if ($class_name === null)
        {
            $res->setFetchMode(PDO::FETCH_OBJ);
        }
        else
        {
            $res->setFetchMode(PDO::FETCH_CLASS, $class_name);
        }

        if ($one)
        {

            $datas = $res->fetch();
        }
        else
        {
            $datas = $res->fetchAll();
        }
        return $datas;
    }

    public function prepare($statement, $attributes, $class_name = null, $one = false)
    {
        $req = $this->getPDO()->prepare($statement);
        $res = $req->execute($attributes);
        if (strpos($statement, 'UPDATE') === 0 || strpos($statement, 'INSERT') === 0 || strpos($statement, 'DELETE') === 0)
        {
            return $res;
        }
        if ($class_name === null)
        {
            $req->setFetchMode(PDO::FETCH_OBJ);
        }
        else
        {
            $req->setFetchMode(PDO::FETCH_CLASS, $class_name);
        }
        if ($one)
        {
            $datas = $req->fetch();
        }
        else
        {
            $datas = $req->fetchAll();
        }
        return $datas;
    }

    public function lastInsertId()
    {
        return $this->getPDO()->lastInsertId();
    }
}
