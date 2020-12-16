<?php

require "./Connection.php";

class Produto
{
    public $id_produto;
    public $categoria;
    public $descricao_produto;
    public $preco_real;
    public $preco_desc;
    public $imagem;
    public $marca;

    public static function getAll()
    {
        $connection = Connection::getDb();

        $stmt = $connection->query("SELECT * FROM produtos JOIN categorias ON produtos.id_categoria = categorias.id_categoria");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
