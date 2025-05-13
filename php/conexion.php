<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "restaurante";
$conn = new mysqli($host, $user, $pass, $db);
if($conn->connect_error){
    die('Error al conectar a la base de datos: '.$conn->connect_error);
}

function imprimirDatos($fila){
    echo "
            <div class='carta'>
                <img src='{$fila['imagen']}'>
                <h2>".ucfirst($fila['nombre'])."</h2>
                <p>$ ".number_format($fila['precio'],0,',','.')."</p>
            </div>
            ";
}