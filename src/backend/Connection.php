<?php

class Connection
{
    public static function getDb()
    {
        $conn = new PDO(
            //no meu caso tenho uma porta 3307 e nao 3306 padrao
            //banco com senha usbw e so tira a senha e a porta 3307
            "mysql:host=localhost:3307;dbname=fulleletro;charset=utf8",
            "root",
            "usbw"
        );

        if ($conn) {
            return $conn;
        } else {
            //falha na conexao com a base de dado
            return "<h1>Erro ao realizar a conexão com o Banco de dados!</h1>";
        }
    }
}


