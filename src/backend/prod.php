<?php

require "./Models/Produto.php";


$produtos = Produto::getAll();

// Permite que outras aplicações consumam a api
header("Access-Control-Allow-Origin:*"); 

//Indicação de arquivo JSON
header("Content-type: application/json"); 

echo json_encode($produtos);