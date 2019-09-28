$(document).ready(function(){

    $("#jobs").click(function(){
       
        $('.publish-show').toggle(10)
    })

});

// Form datapick

 
$(function() {

    $('.calendar').flatpickr({
        minDate: "today",
        dateFormat: "d-m-Y",
    }

       
    );

 
  });