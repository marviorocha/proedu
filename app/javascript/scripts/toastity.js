import Toastify from 'toastify-js';
import "toastify-js/src/toastify.css";

document.addEventListener('DOMContentLoaded',() => {

    JSON.parse(document.body.dataset.flashMensagers).forEach(flashMensage => {

 
        const colorMensager = {

            alert: "#c93636",
            error: "#c93636",
            notice: "#009688"

        };
 
        const [type, messager] = flashMensage
       
            const notify = new Toastify({
                text: messager,
                duration: 3000, 
                newWindow: true,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: 'right', // `left`, `center` or `right`
                backgroundColor: colorMensager[type],
                stopOnFocus: true, // Prevents dismissing of toast on hover
                onClick: function(){} // Callback after click
              }).showToast();

             

        });


    });

 



