<?php
require 'conexion.php';
$busqueda =$_POST['busqueda'];
$sql = "SELECT * FROM platos WHERE nombre LIKE '%$busqueda%'";
$resultado = $conn->query($sql);
if($resultado->num_rows > 0){
    while($fila = $resultado->fetch_assoc()){
        imprimirDatos($fila);
    }
}else{
    echo "
        <h2>No hay resultados</h2>
    ";
}