<?php

require "./Connection.php";

class Comentario
{
    public $id;
    public $nome;
    public $email;
    public $msg;
    public $dia;

    public static function getAll()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("SELECT * FROM comentarios");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function register()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("INSERT INTO comentarios (nome, email, msg) values ('$this->nome', '$this->email', '$this->msg')");
        
        if ($stmt->rowCount() > 0) {
            return true;
        } else {
            return false;
        }
    }
}
