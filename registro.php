<script>
    function LlamaModal() {
        $("#aviso").click();
    }
</script>


<?php
if(isset($_POST['boton2']))
{
  header("Location:logout.php");
}

session_start();
$message="";

$mysqli = new mysqli('localhost','root','','tributos');	

if(count($_POST)>0) {
	$result = $mysqli->query("SELECT * FROM contribuyentes WHERE nombres='" . $_POST["user_nombres"] ."'");
	$row  = $result->fetch_assoc();
	$result->free();
	if(is_array($row)) {
        $message = "Nombres y Apellidos ya registrados!";
	} else {
        $result = $mysqli->query("SELECT * FROM contribuyentes WHERE cedula='" . $_POST["user_cedula"] ."'");
	    $row  = $result->fetch_assoc();
	    $result->free();
	    if(is_array($row)) {
            $message = "Número de cedula registrada a: ".$row["nombres"];
        } else {
            $result = $mysqli->query("SELECT * FROM contribuyentes WHERE correo='" . $_POST["user_correo"] ."'");
	        $row  = $result->fetch_assoc();
	        $result->free();
	        if(is_array($row)) {    
                $message = "Direccion de correo ya esta ocupada por: ".$row["nombres"];
            } else{
               include_once "alerta_modal.php";
               MensajeAlerta("index.php");
               //echo '<script> function LlamaModal(); </script>';
               exit;
               $result = $mysqli->query("INSERT INTO `contribuyentes` (`cedula`, `nombres`, `clave`, `correo`, `telefono`) VALUES
               ('$_POST[user_cedula]','$_POST[user_nombres]','$_POST[user_password]','$_POST[user_correo]','$_POST[user_telefono]')");
               $message = "Registro Exitoso";
               header("Location:index.php");
            }
        }
	}
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
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
        
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
                                <label>Nombres:</label>
                                <input type="text" name="user_nombres" placeholder="nombres y apellidos">
                                <br></br><label>Cédula:</label>
                                <input type="text" name="user_cedula" placeholder="cedúla">
                                <br></br><label>Correo:</label>
                                <input type="email" name="user_correo" placeholder="correo">
                                <br></br><label>Contraseña:</label>
                                <input type="password" name="user_password" placeholder="contraseña">
                                <br></br><label>Telefono:</label>
                                <input type="text" name="user_telefono" placeholder="telefono">
                            </div>
                            <p class="text-center">
                                <button type="submit" class="boton" name="boton1">Ingresar</button>
                                <button type="submit" class="boton" name="boton2">Regresar</button>
                                    <button type="button" name="aviso" id="aviso" data-toggle="modal" data-target="#modalExito" class="btn btn-primary">AVISO</button>
                            </p>
                        </form>
                    </p>
               </section>
           
               <section class="posts col-md-3">
                    <h2>ACCESOS</h2>
               </section>
            </div>
        </section>
        
        <div id="modalExito" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">¡REGISTRO EXITOSO!</h4>
                    </div>
                    <div class="modal-body">
                        <p>Usted ha sido debidamene registrado en nuestro Sistema.</p> 
                        <p>Procederemos a buscar su estado de cuenta 
                           y en un periodo no mayor de 72 horas estará disponible para su pago o consulta.</p>
                        </br><p class="gracias">...Gracias por su registro</p>    
                    </div>
                    <div class="modal-footer">
                        <!--<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button> -->
                        <a class="btn btn-primary" id="boton_redirec" href="index.php">OK</a>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="js/jquery-last.js"></script>
        <script src="js/bootstrap.min.js"></script>  
        
        
    </body>
</html>

