enviar=document.getElementById("enviar");
enviar.onclick=validarDatos;

function validarDatos () {
    var elemento =document.getElementById("names");
    var elemento =document.getElementById("surnames");
    if (elemento.checkValidity() ==false && elemento.required){
    //document.getElementById("mensajes").innerHTML=`<p>Debe ingresar un ${elemento.id} valido</p>`;
    document.getElementById("mensajes").innerHTML="<p>Debe ingresar un "+elemento.id +" valido</p>";
}
}