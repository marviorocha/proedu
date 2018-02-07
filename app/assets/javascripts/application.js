// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery3

//= require trumbowyg/trumbowyg
//= require trombowyg
//= require vendor/jquery-validation/jquery.validate.min
//= require vendor/popper.js/umd/popper.min
//= require datatables.min
//= require vendor/jquery.cookie/jquery.cookie
//= require vendor/chart.js/Chart.min
//= require plyr/plyr
//= require comment
//= require charts-home
//= require front
//= require jquery.turbolinks
//= require rails-ujs
//= require popper
//= require bootstrap-sprockets
//= require turbolinks

// $(document).addEventListener("page:change", function() {
//    $(".collapse .dropdown").hover((function() {
//        $(this).find(".dropdown-menu").first().stop(true, true).delay(150).slideDown();
//   }), function() {
//        $(this).find(".dropdown-menu").first().stop(true, true).delay(50).slideUp();
//   });
// });

document.addEventListener("turbolinks:load", function() {

plyr.setup();

  $('#datatable').DataTable();
})
