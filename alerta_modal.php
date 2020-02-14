<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos_bootstrap.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<div class="container">
<!--  http://www.w3im.com/es/bootstrap/bootstrap_ref_js_modal.html -->    
<!-- ***************************   PASO 1    CREAR EL MODAL(VENTANA) EN HTML    *****************************-->
<!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
              <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
                    <h4 class="modal-title" id="#modalTitle" >¡REGISTRO EXITOSO!</h4> 
                </div>
                <div class="modal-body">
                    <p>Usted ha sido debidamene registrado en nuestro Sistema.</p> 
                    <p>Procederemos a buscar su estado de cuenta y en un periodo no mayor de 72 horas estará disponible para su pago o consulta.</p>
                    </br><p class="gracias">...Gracias por su registro</p>    
                     <font size="6"> <label id="label1"> </label> </font>
                </div>
                <div class="modal-footer">
                    <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button> -->
                    <a class="btn btn-primary" id="boton_redirec" href="">OK</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
	
	//VACIAR VARIEBLES EN CASO DE QUE CONTENGAN ALGUN DATO
	$redireccion="";
	  
	  /***************************** PASO 2   ENVIAR DATOS AL MODAL(VENTANA)    ****************************************/
	  //se crea la funcion que llamara al modal y le enviara la informacion, la funcion creara el modal, pero no lo mostrara. 
	  function MensajeAlerta($redireccion)
	  {
	    //Se crea un boton para llamar al modal
	    echo '
            <button type="button" 
            id="verModal" 
            style="display: none;" 
            class="btn btn-info btn-lg" 
            data-toggle="modal" 
            data-target="#myModal" 
            data-redireccion="'.$redireccion.'">Open Modal</button>';
	  }

?>



<script type="text/javascript">

	/***************************** PASO 3   MOSTRAR MODAL(VENTANA)      ****************************************/
  $(document).ready(function (){ //Para llamar a la funcion despues de cargar la pagina
   LlamarModal();//Se llama a la funcion para que se llene el modal, antes de llamar al modal, si se llama despues el modal aparecera vacio.
   $("#verModal").click(); //Como no encontre otra forma de mandarle datos al modal, se hace a traves del boton "verModal" y aqui se le hace click automaticamente.
  });



	/*****************************  CONTENIDO DEL MODAL(VENTANA)  ********************************************/
  function LlamarModal()
  {
    $('#myModal').on('show.bs.modal', function (event) { //la funcion show.bs.modal mostrara el modal myModal
      var button = $(event.relatedTarget) // Button que lanza el modal y recibe los datos escritos en el boton.
      var dato_r = button.data('redireccion')

      //Se actualiza el contenido del modal.
      var modal = $(this)
      $('#boton_redirec').attr('href', dato_r); //indicar valor al boton que redirecciona
      
     
    });
    
  }
  
</script>

