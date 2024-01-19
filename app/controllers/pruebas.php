
<?php
include '../database/connection.php';

if (mysqli_connect_error()) {
    exit('Fallo en la conexión de MySQL: ' . mysqli_connect_error());
}
function userExists($username, $conexion) {
    $query = "SELECT id FROM accounts WHERE username = ?";
    $stmt = $conexion->prepare($query);
    if ($stmt) {
        $stmt->bind_param('s', $username);
        $stmt->execute();
        $stmt->store_result();
        return $stmt->num_rows > 0;
    } else {
        return false;
    }
}

$usernameToCheck = 'usuarioprueba4';
if (userExists($usernameToCheck, $conexion)) {
    echo "El usuario '$usernameToCheck' existe en la base de datos.";
} else {
    echo "El usuario '$usernameToCheck' no existe en la base de datos.";
}
?>