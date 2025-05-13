<?php
require 'conexion.php';
$sql = "SELECT * FROM platos";
$resultado = $conn->query($sql);
while($fila = $resultado->fetch_assoc()){
    imprimirDatos($fila);
}