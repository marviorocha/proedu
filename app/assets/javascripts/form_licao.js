$(document).ready(function(){

    $('.publish-show').hide();
    $("#jobs").click(function(){
      $('.publish-show').toggle(10)
    });

    
    $('#content_publish_on').on('input',function(){
       
        $('#content_publish_on_display').text($(this).val());

    })

 

});

// Form datapick
 
 
$(function() {
   
    $('.calendar').flatpickr({
        minDate: "today",
        dateFormat: "d-m-Y",
        allowInput: true
        
    }

       
    );

 
  });