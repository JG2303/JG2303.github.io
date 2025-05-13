<?php
require 'conexion.php';
$orden = $_POST['orden'];
$sql = "SELECT * FROM platos ORDER BY precio ".$orden;
$resultado = $conn->query($sql);
if($resultado->num_rows > 0){
    while($fila = $resultado->fetch_assoc()){
        imprimirDatos($fila);
    }
}
