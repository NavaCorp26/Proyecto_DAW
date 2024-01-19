<?php
session_start();

include '../database/connection.php';

if (mysqli_connect_error()) {
    exit('Fallo en la conexión de MySQL: ' . mysqli_connect_error());
}

// Verifica si se enviaron datos de inicio de sesión
if (!isset($_POST['username'], $_POST['password'])) {
    // Redirecciona si no hay datos
    header('Location: /app/views/login.html');
    exit;
}


try {
    // Evitar inyección SQL
    if ($stmt = $conexion->prepare('SELECT id, password FROM accounts WHERE username = ?')) {
        $stmt->bind_param('s', $_POST['username']);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            $stmt->bind_result($id, $hashed_password);
            $stmt->fetch();

            // Verifica la contraseña usando password_verify
            if (password_verify($_POST['password'], $hashed_password)) {
                // Autenticación exitosa, crea la sesión
                session_regenerate_id();
                $_SESSION['loggedin'] = true;
                $_SESSION['name'] = $_POST['username'];
                $_SESSION['id'] = $id;

                // Redirecciona al usuario autenticado a index.php
                header('Location: ../../index.php');
                exit;
            } else {
                // Contraseña incorrecta
                throw new Exception('Contraseña incorrecta');
            }
        } else {
            // Usuario incorrecto
            throw new Exception('Usuario incorrecto');
        }
    }
} catch (Exception $e) {
    // Manejar la excepción y redirigir según el tipo de error
    header('Location: /app/views/login.html?error=' . urlencode($e->getMessage()));
    exit;
}