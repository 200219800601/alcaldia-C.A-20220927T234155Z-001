const boton = document.querySelector('#datos');
boton.addEventListener('submit', aplicar);

function aplicar(e){
    e.preventDefault();
   
    if (!document.querySelector('input[name="answer"]:checked')) {
        Swal.fire({
            title:  'Error!',
            text: 'Seleccione tipo de identificacion(DUI o Email)',
            icon: 'error',
            confirmButtonText: 'OK'
        })
    
    }
}