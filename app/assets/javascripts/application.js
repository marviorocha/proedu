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
//= require vendor/jquery/jquery.min
//= require trumbowyg/trumbowyg
//= require trumbowyg/plugins/insertaudio/insertaudio
//= require trumbowyg/plugins/cleanpaste/trumbowyg.cleanpaste
//= require trumbowyg/plugins/noembed/noembed
//= require vendor/popper.js/umd/popper.min
//= require vendor/bootstrap/bootstrap.min
//= require vendor/jquery.cookie/jquery.cookie
//= require vendor/chart.js/Chart.min
//= require vendor/jquery-validation/jquery.validate.min
//= require charts-home
//= require front
//= require rails-ujs
//= require turbolinks

document.addEventListener("turbolinks:load", function() {
  $.trumbowyg.svgPath = '/assets/icons/icons.svg'

  $('#editor')
  .trumbowyg({
    btns: [ ['viewHTML'],
        ['undo', 'redo'], // Only supported in Blink browsers
        ['formatting'],
        ['strong', 'em', 'del'],
        ['superscript', 'subscript'],
        ['link'],
        ['insertImage'],
        ['noembed'],
        ['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
        ['unorderedList', 'orderedList'],
        ['horizontalRule'],
        ['removeformat'],
        ['insertAudio'],
        ['fullscreen']],
   removeformatPasted: true,
    autogrow: true
  });

})
