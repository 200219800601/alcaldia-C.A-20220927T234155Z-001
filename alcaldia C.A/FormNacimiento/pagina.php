<?php 


include_once "../conexion/conexion.php";
//include 'index.php';



//la conexion
$con = mysqli_connect($servidor,$usuario,$contra,$base_datos);
$phone = mysqli_real_escape_string($con,$_REQUEST['phone']??'') ;
$modulo = $_REQUEST['modulo']??'';
// precio partida autentica
// recibir datos de formulario




  
    // session_start();
    // $email = $_REQUEST['email']??'';
    // $pasword = $_REQUEST['pass']??'';
    // $pasword =md5($pasword);
   
    
    $nombres = mysqli_real_escape_string($con,$_REQUEST['names']??'') ;
    $apellidos = mysqli_real_escape_string($con,$_REQUEST['surnames']??'') ;
    $fecha_nacimiento = mysqli_real_escape_string($con,$_REQUEST['trip-start']??'') ;
    $tipo_certificado = mysqli_real_escape_string($con,$_REQUEST['tipo_certificado']??'') ;
    $fullname_madre = mysqli_real_escape_string($con,$_REQUEST['fullname_madre']??'') ;
    $fullname_padre = mysqli_real_escape_string($con,$_REQUEST['fullname_padre']??'') ;
    $dia_cita = mysqli_real_escape_string($con,$_REQUEST['cita']??'') ;
    $hora_retiro = mysqli_real_escape_string($con,$_REQUEST['hora_retiro']??'') ;
    $phone = mysqli_real_escape_string($con,$_REQUEST['phone']??'') ;
   
   
   
    $email = mysqli_real_escape_string($con,$_REQUEST['email']??'') ;
    $dui = mysqli_real_escape_string($con,$_REQUEST['dui']??'') ;
    
   
   
    if ($email == "" && $dui <> "" ) {
     $email = "null";
   }if ($email <> "" && $dui == "") {
     $dui =  "null";
   } 
   
   
   
    $query_insertar_nacimiento ="INSERT INTO partida_de_nacimiento(Nombres,Apellidos,Fecha_nacimiento,Tipo_certificado,
    Nombre_madre,Nombre_padre,Dia_retiro,Hora_retiro,Telefono,Email,DUI)
     VALUES ('".$nombres."','".$apellidos."','".$fecha_nacimiento."','".$tipo_certificado."','".$fullname_madre."','".$fullname_padre."','".$dia_cita."','".$hora_retiro."',
     '".$phone."','".$email."','".$dui."')";
   
      $res = mysqli_query($con,$query_insertar_nacimiento);
   
     
  
   if ($res) {
   
    $consulta = "SELECT * FROM partida_de_nacimiento where telefono = '".$phone."' ";
    $row = mysqli_query($con,$consulta);
    $id_nacimiento = mysqli_fetch_assoc($row);
   
   
   
    // echo '<meta http-equiv="refresh" content="0 url=panel.php?modulo=solicitudes&mensaje=Solicitud Ingresada con exitosamente"/>';
   
             }
             else {
              echo $con;
             }
   
   
   
   


?>



<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>infoCita</title>
    <link rel="stylesheet" href="css\button.css">
    <link rel="stylesheet" href="css\clasePagina.css">
    
    
</head>
<body style="height: 100%;
        width: 100%;
        background-image: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url(./img/fondo_ref.jpg);
        background-position: center;
        background-size: cover;
        position: relative;
        ">
    <div class="container1" >
        <br>
        <br>
    <div class="informacion" style="max-width: 570px;
    margin-left: auto;
    margin-right: auto;
    padding: 0;
    color: #fff;
    text-align: left;
    box-shadow: 0 0 20px 0 rgba(87, 137, 231, 0.3);
    border-radius: 10px;
    background-color: #fff;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   
   
    ">
        
        <div style=" background-color: #0a568e" class="contact-form"><br><p class="title" style=" text-align: center; font-size: large;">Cita reservada con los siguientes datos: <br>(¡Tomar captura como comprobante de reservacion!) </p><br></div>
           
               <form action="" class="tabla" style="
               "  >
                <div class="datos_personales" style="color: #000; padding: 1em;">
               <h3 >Datos personales</h3>
                <p>
                    <label for="" style="text-align:right; color: black;">Nombres:
                         <span style="color:#0a568e ;"><?php  echo $id_nacimiento['Nombres'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Apellidos:
                    <span style="color: #0a568e ;"><?php  echo $id_nacimiento['Apellidos'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Fecha nacimiento:
                     <span style="color: #0a568e ;"><?php  echo $id_nacimiento['Fecha_nacimiento'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Tipo de partida:
                    <span style="color: #0a568e ;"><?php  echo $id_nacimiento['Tipo_certificado'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Nombre Madre:
                    <span style="color:#0a568e ;"><?php  echo $id_nacimiento['Nombre_madre'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Nombre Padre:
                    <span style="color:#0a568e ;"><?php  echo $id_nacimiento['Nombre_padre'] ?></span> </label>
               </p>
            </div>
               <div class="info_cita" style="color: #000; padding: 1em;">
               <h3>Informacion cita</h3>
               <p>
                <label for="" style="text-align:center; color: black;">Dia de retiro: 
                     <span style="color:#0a568e;"><?php  echo $id_nacimiento['Dia_retiro'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">Hora de retiro: 
                     <span style="color: #0a568e ;"><?php  echo $id_nacimiento['Hora_retiro'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">Telefono: 
                     <span style="color: #0a568e ;"><?php  echo $id_nacimiento['Telefono'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">Email:
                     <span style="color: #0a568e ;"><?php  echo $id_nacimiento['Email'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">DUI: 
                     <span style="color: #0a568e ;"><?php  echo $id_nacimiento['DUI'] ?></span> </label>
               </p>
               <p style="margin-right: auto; margin-left: auto;">
               <a name="guardar"  id="btnEnviarForm" class="info" href="../index.html">Regresar al Inicio</a>
               </p>
            </div>
            
            </form>
            
            
          
    </div>
</div>
</body>
</html>