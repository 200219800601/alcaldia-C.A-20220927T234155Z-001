<?php 


include_once "../conexion/conexion.php";
//include 'index.php';



//la conexion
$con = mysqli_connect($servidor,$usuario,$contra,$base_datos);
$phone = mysqli_real_escape_string($con,$_REQUEST['phone']??'') ;
$modulo = $_REQUEST['modulo']??'';
// precio partida autentica
 

//captua de datos del formulario



 
 $nombre = mysqli_real_escape_string($con,$_REQUEST['names']??'') ;
 $fecha = mysqli_real_escape_string($con,$_REQUEST['trip-start']??'') ;
 $nombre_padre = mysqli_real_escape_string($con,$_REQUEST['nombre_padre']??'') ;
 $nombre_madre = mysqli_real_escape_string($con,$_REQUEST['nombre_madre']??'') ;

 $fecha_retiro = mysqli_real_escape_string($con,$_REQUEST['cita']??'') ;
 $hora_retiro = mysqli_real_escape_string($con,$_REQUEST['hora_retiro']??'') ;
 $phone = mysqli_real_escape_string($con,$_REQUEST['phone']??'') ;
// $answer = mysqli_real_escape_string($con,$_REQUEST['answer']??'') ;



 $email = mysqli_real_escape_string($con,$_REQUEST['email']??'') ;
 $dui = mysqli_real_escape_string($con,$_REQUEST['dui']??'') ;



 if ($email == "" && $dui <> "" ) {
  $email = "null";
}if ($email <> "" && $dui == "") {
  $dui =  "null";
} 



 $query_insertar ="INSERT INTO partida_de_solteria(nombre_titular,fecha_nacimiento,nombre_padre,nombre_madre,
 dia_retiro,hora_retiro,telefono,email,dui)
  VALUES ('".$nombre."','".$fecha."','".$nombre_padre."','".$nombre_madre."','".$fecha_retiro."','".$hora_retiro."','".$phone."',
  '".$email."','".$dui."')";


   $res = mysqli_query($con,$query_insertar);

if ($res) {

             $consulta = "SELECT * FROM partida_de_solteria WHERE telefono = '".$phone."' ";
             $row = mysqli_query($con,$consulta);
             $id_solteria = mysqli_fetch_assoc($row);



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
    box-shadow: 0 0 0px 0 rgba(87, 137, 231, 0.3);
    border-radius: 10px;
    background-color: #fff;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; ">
        
            <div style=" background-color: #0a568e" class="contact-form"><br><p class="title" style=" text-align: center; font-size: x-large;">Cita reservada con los siguientes datos:</p><br></div>
           
               <form action="" class="tabla" style="
               "  >
                <div class="datos_personales" style="color: #000; padding: 1em;">
               <h3 >Datos personales</h3>
                <p>
                    <label for="" style="text-align:right; color: black;">Nombre del titular:
                         <span style="color:#0a568e ;"><?php  echo $id_solteria['nombre_titular'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Fecha de nacimiento:
                    <span style="color: #0a568e ;"> <?php  echo $id_solteria['fecha_nacimiento'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Nombre padre:
                     <span style="color: #0a568e ;"><?php  echo $id_solteria['nombre_padre'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:right; color: black;">Nombre madre:
                    <span style="color: #0a568e ;"><?php  echo $id_solteria['nombre_madre'] ?></span> </label>
               </p>
               <p>
               
            </div>
               <div class="info_cita" style="color: #000; padding: 1em;">
               <h3>Informacion cita</h3>
               <p>
                <label for="" style="text-align:center; color: black;">Dia retiro:
                      <span style="color:#0a568e;"> <?php  echo $id_solteria['dia_retiro'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">Hora de retiro: 
                     <span style="color: #0a568e ;"><?php  echo $id_solteria['hora_retiro'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">Telefono: 
                     <span style="color: #0a568e ;"><?php  echo $id_solteria['telefono'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">Email: 
                    <span style="color: #0a568e ;"><?php  echo $id_solteria['email'] ?></span> </label>
               </p>
               <p>
                <label for="" style="text-align:center; color: black;">DUI:  
                    <span style="color: #0a568e ;"><?php  echo $id_solteria['dui'] ?></span> </label>
               </p>
               <p style="margin-right: auto; margin-left: auto;">
                <a name="guardar"  id="btnEnviarForm" class="info" href="../index.html">Regresar al Inicio</a>
               </p>
            </div>
            
            </form>
            
        </div> 
          
    </div>
</div>
</body>
</html>