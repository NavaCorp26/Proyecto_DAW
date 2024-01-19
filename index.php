<?php
session_start();


if (!isset($_SESSION['loggedin'])) {

    header('Location: /app/views/login.html');
    exit;
}
?>

    <?php include_once 'app/views/templates/header.php'; ?>

    <main id="main-content">
        <!-- aca aun no se que poner ATT// Navarrete -->
        <h2 class="text-untitle"> Aun estoy aprendiendo tenganme paciencia</h2>
    </main>

    <?php include_once 'app/views/templates/footer.php'; ?>



