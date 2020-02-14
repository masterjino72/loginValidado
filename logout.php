<?php
session_start();
unset($_SESSION["user_nombre"]);
unset($_SESSION["user_correo"]);
header("Location:index.php");
?>