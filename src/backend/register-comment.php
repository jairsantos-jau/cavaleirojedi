<?php

require "./Models/Comentario.php";

header("Access-Control-Allow-Origin:*");
header("Content-type: application/json");

$comentarios        = new Comentario;
$comentarios->nome  = $_POST['nome'];
$comentarios->email = $_POST['email'];
$comentarios->msg   = $_POST['msg'];

$validate = $comentarios->register();

if ($validate) {
    echo json_encode(true);
} else {
    echo json_encode(false);
}
