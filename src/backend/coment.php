<?php

require "./Models/Comentario.php";

header("Access-Control-Allow-Origin:*");
header("Content-type: application/json");

$comentarios = Comentario::getAll();

echo json_encode($comentarios);
