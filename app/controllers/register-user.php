<?php

include '../database/connection.php';

$full_name = mysqli_real_escape_string($conexion, $_POST['full_name']);
$email = mysqli_real_escape_string($conexion, $_POST['email']);
$username = mysqli_real_escape_string($conexion, $_POST['username']);
$password = mysqli_real_escape_string($conexion, $_POST['password']);

// Password Hashing (Usando password_hash())
$passwordHash = password_hash($password, PASSWORD_BCRYPT);

$query = "INSERT INTO accounts (full_name, email, username, password) VALUES ('$full_name', '$email', '$username', '$passwordHash')";

//Verificar que el correo no se repita en la base de datos
$verificar_correo = mysqli_query($conexion, "SELECT * FROM accounts WHERE email ='$email' ");

if(mysqli_num_rows($verificar_correo) > 0 ){
    echo '
    <script>
        alert("Este correo ya esta registrado, intenta con otro...");
        window.location = "/app/views/login.html";
    </script>    
    ';
    exit();
}

//Verificar que el usuario no se repita en la base de datos
$verificar_usuario = mysqli_query($conexion, "SELECT * FROM accounts WHERE username ='$username' ");

if(mysqli_num_rows($verificar_usuario) > 0 ){
    echo '
    <script>
        alert("Este usuario ya esta registrado, intenta con otro...");
        window.location = "/app/views/login.html";
    </script>    
    ';
    exit();
}    

$ejecutar = mysqli_query($conexion, $query);

if($ejecutar){
    echo '
        <script>
            alert("Usuario almacenado exitosamente");
            window.location = "/app/views/login.html";
        </script>    
    ';
}else{
    echo '
        <script>
            alert("Intentalo de nuevo, usuario no almacenado");
            window.location = "/app/views/login.html";
        </script>    
    ';
}

mysqli_close($conexion);
