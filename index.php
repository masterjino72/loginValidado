<?php
session_start();
$message="";
$captcha = true;

if(count($_POST)>0 && isset($_POST["captcha_code"]) && $_POST["captcha_code"]!=$_SESSION["captcha_code"]) {
    $captcha = false;
    $message = "Introduce los datos de la <br>imagen de caputra correctamente";
}

$mysqli = new mysqli('localhost','root','','tributos');	
$ip = $_SERVER['REMOTE_ADDR'];
$result = $mysqli->query("SELECT count(ip_address) AS failed_login_attempt FROM failed_login WHERE ip_address = '$ip'  AND date BETWEEN DATE_SUB( NOW() , INTERVAL 1 DAY ) AND NOW()");

$row  = $result->fetch_assoc();
$failed_login_attempt = $row['failed_login_attempt'];
$result->free();


if(count($_POST)>0 && $captcha == true) {
	$result = $mysqli->query("SELECT * FROM contribuyentes WHERE correo='" . $_POST["user_correo"] . "' and clave = '". $_POST["user_password"]."'");
	$row  = $result->fetch_assoc();
	$result->free();
	if(is_array($row)) {
		$_SESSION["user_nombre"] = $row["nombres"];
		$_SESSION["user_correo"] = $row["correo"];
		$mysqli->query("DELETE FROM failed_login WHERE ip_address = '$ip'");
	} else {
        
		$message = "Direccion de correo o clave no valida!";
		if ($failed_login_attempt <= 3) {
			$mysqli->query("INSERT INTO failed_login (ip_address,date) VALUES ('$ip', NOW())");
		} else {
			$message = "Has tenido más de 3 intentos";
		}
	}
}
if(isset($_SESSION["user_nombre"])) {
header("Location:user_dashboard.php");
}
?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Ingreso de Contribuyentes</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos_bootstrap.css">
        <!--<link rel="stylesheet" type="text/css" href="css/styles.css" /> !-->
    <head>
        <title>Registro Contribuyentes</title>
    </head>

    <body>
        <section class="jumbotron jumbotron-jl">
            <div class="container">
                <h1 class="titulo-blog">Alcaldía Municipal de Jinotega</h1>
                <h2>Dirección Tributaria</h2>
            </div>
        </section>
        
        <section class="main container">
           <div class="row">
              <section class="posts col-md-3">
                    <div class="centrado"><img class="img-responsive" src="img/escudo.png" alt=""></div>
              </section>
          
              <section class="posts col-md-6">
                    <h2 class="post-title">INGRESE SUS DATOS</h2>
                    <p class="post-contenido text-justify">
                        <form name="frmUser" method="post" action="" class="login-formulario">
                            <div class="text-center"><?php if($message!="") { echo $message; } ?></div>
                            <div class="form-group">
                                <label>Correo:</label>
                                <input type="email" name="user_correo" placeholder="correo">
                                <br></br><label>Contraseña:</label>
                                <input type="password" name="user_password" placeholder="contraseña">
                            </div>
                            <?php if (isset($failed_login_attempt) && $failed_login_attempt >= 3) { ?>
                                    <div class="form-group">
                                        <label>Captcha:</label>
                                        <input name="captcha_code" type="text" placeholder="texto de captura">
                                    </div>  
                                <p class="text-center">       
                                    <img src="captcha_code.php" />
                                </p>
                            <?php } ?>
                            <p class="text-center"><button id="boton" class="boton">Ingresar</button></p>
                            <p class="text-center">No tienes cuenta? <a href="registro.php" class="btn btn-primary">Ingresa aqui</a></p>
                        </form>
                    </p>
               </section>
           
               <section class="posts col-md-3">
                    <h2>ACCESOS</h2>
               </section>
            </div>
        </section>
        
        <script src="js/jquery-last.js"></script>
        <script src="js/bootstrap.min.js"></script>    
    </body>
</html>