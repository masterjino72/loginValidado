<?php
session_start();
?>
<html>
    <head>
        <title>User Login</title>
        <link rel="stylesheet" type="text/css" href="styles.css" />
    </head>
    
    <body>
        <table border="0" cellpadding="10" cellspacing="1" width="500" align="center">
            <tr class="tableheader">
                <td align="center">Ventana de Usuario</td>
            </tr>
            <tr class="tablerow">
                <td>
                    <?php if($_SESSION["user_nombre"]) {?>
                        Bienvenido <?php echo $_SESSION["user_nombre"]; ?>. Click aqui para <a href="logout.php" tite="Logout">regresar.
                    <?php } ?>
                </td>
            </tr>
        </table>
    </body>
</html>