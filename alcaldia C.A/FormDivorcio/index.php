<?php



//include_once "conexion.php";
include_once "../conexion/conexion.php";
//la conexion
$con = mysqli_connect($servidor,$usuario,$contra,$base_datos);

$modulo = $_REQUEST['modulo']??'';
// precio partida autentica
$consulta_precio = "SELECT * FROM precios_doc where nombre_documento = 'partida_autentica_FormDivorcio' ";
$row = mysqli_query($con,$consulta_precio);
$precio_doc_autentica = mysqli_fetch_assoc($row);
// precio partida
$consulta_precio = "SELECT * FROM precios_doc where nombre_documento =  'partida_normal_FormDivorcio' ";
$row = mysqli_query($con,$consulta_precio);
$precio_doc_patida = mysqli_fetch_assoc($row);

$mensaje =  "";



?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css\style.css">
    <link rel="stylesheet" href="css\radio.css">
    <link rel="stylesheet" href="css\main.css">
    <link rel="stylesheet" href="css\select.css">
    <link rel="stylesheet" href="css\button.css">
    <title>Partida de Divorcio</title>
    <!-- SweetAlert -->
    <script src="assets\sweet\sweetalert2.min.js"></script>
    <link rel="stylesheet" href="assets\sweet\sweetalert2.css">
      <!-- intlTelInput -->
      <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
    <!-- CALENDARIO JQUERY -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.4/themes/cupertino/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <!-- GOOGLE FONTs -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- ANIMATE CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
</head>
<body>
    <div class="container">

        <h1 class="logo">Partida de <span>Divorcio</span></h1>

        <div class="contact-wrapper animated bounceInUp">
            <div class="contact-form">
                <h3>Completa el formulario</h3>
                <!-- HTML INFO -->
               <a class="readMore_btn" name="btn_info">Costos
                <i class="fas fa-dollar-sign"></i>
               </a>
               <p name="info" class="infor" style="max-width:50%;width:auto;height:auto;">Normal: $<?php echo $precio_doc_patida['precio']  ?></p>
                <form id="datos" method="post" action="pagina.php" >
                    <p>
                        <label for="names">Nombre del titular de la partida</label>
                        <input type="text" name="names" id="names" placeholder="Nombre completo " required>
                    </p>
                    
                    <p>
                        <label for="start">Fecha de divorcio:</label>

                        <span class="fecha"></span><input type="date" id="start" name="trip-start"
                           value="aaaa-mm-dd"
                             min="1950-01-01" max="2025-12-31" required></span>

                    </p> 
                    <p>
                        <label for="surnames">Nombre del ex conyuge</label>
                        <input type="text" name="ex_conyuge" id="surnames" placeholder="Nombre completo" required>
                    </p>
                   
                    <p>
                        <label for="start">Dia de retiro:</label>

                        <span class="fecha" id="date"></span><input type="text" name="cita" 
                      value="dd/mm/aaaa"
                      min="2022-01-01" max="2025-12-31" ></span>
                    </p>
                    <p>
                        <label for="surnames">Hora de retiro</label>
                        <select name="hora_retiro" class="select" required="required" >
                            <option value="" selected>Selecione</option>
                            <option value="9:00 AM">9:00 AM</option>
                            <option value="10:00 AM">10:00 AM</option>
                            <option value="11:00 AM">11:00 AM</option>
                            <option value="1:00 PM">1:00 PM</option>
                            <option value="2:00 PM">2:00 PM</option>
                            <option value="3:00 PM">3:00 PM</option>
                            
                            
                          </select>
                    </p>
                   
                    <p>
                    <label for="tel">Telefono</label>
                        <input id="phone" type="tel" name="phone" pattern="^[0-9]{8}$" required/>

                    </p>
                   
                    <div class="questions">
                    <a >Seleccione el tipo de Identificación</a>
                        <div class="questions__question" >
                          <input type="radio" name="answer" id="answer-1">
                          <label for="answer-1" data-question-number="">Email</label>
                        </div>
                        <div class="questions__question">
                          <input type="radio" name="answer" id="answer-2" > 
                          <label for="answer-2" data-question-number="">DUI</label>
                        </div>
                      </div>
                <p id="div2" style="display:none">
                    <label for="email">Correo electronico</label>
                    <input type="email" name="email" id="email"  placeholder="elisa12@gmail.com">
                </p>
                
                <p id="div1" style="display:none">
                    <label for="dui">DUI</label>
                    <input type="text" name="dui" id="dui"  placeholder="00000000-0" pattern="^[0-9]{8}-[0-9]{1}$">
                </p>
          <p class="block">
                        <button type="submit" id="btnEnviarForm" name="guardar">Enviar</button>
                    </p>
                    <?php echo $mensaje ?>
                </form>
            </div>
            <div class="contact-info">
                <h4>Mas Informacion</h4>
                <ul>
                    <li><i class="fas fa-map-marker-alt"></i> Calle Gerardo Barrios, Av.Badem Powell. Barrio el Centro, Ciudad Arce, La Libertad, El Salvador. </li><br>
                    <li><i class="fas fa-phone"></i> 23492308 </li>
                    
                </ul>
                <p></p><br>
<br>                <p>Alcaldia Municipal de Ciudad Arce.</p>
            </div>
        </div>
    </div>
    <script src="js\espanol.js"></script>
    <script src="js\desplegar.js"></script>
    <script src="js\finesSemana.js"></script>
    <!-- <script src="js\alert.js"></script>-->
    <script>
        $(document).ready(function() {
          $("#answer-1").click(function() {
            $("#div1").hide();
            $("#div2").show();
      
          });
      
          $("#answer-2").click(function() {
            $("#div1").show();
            $("#div2").hide();
      
          });
        });
    </script>
</body>
<script>
    const phoneInputField = document.querySelector("#phone");
    const phoneInput = window.intlTelInput(phoneInputField, {
      utilsScript:
        "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js",
    });
  </script>
</html>