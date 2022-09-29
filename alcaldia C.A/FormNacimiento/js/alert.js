const boton = document.querySelector('#datos');
boton.addEventListener('submit', aplicar);

function aplicar(e){
    e.preventDefault();
   
    if (!document.querySelector('input[name="answer"]:checked')) {
        Swal.fire({
            title:  'Enviado!',
            text: 'Seleccione tipo de identificacion(DUI o Email)',
            icon: 'error',
            confirmButtonText: 'OK'
        })
    } else {
        
        Swal.fire({
            title: 'Enviado!',
            text: "Se a creado correctamente tu cita, retirar partida en Alcaldia, registro familiar.",
            icon: 'success',
            
            confirmButtonText: 'OK!'
          })
            
    }
}