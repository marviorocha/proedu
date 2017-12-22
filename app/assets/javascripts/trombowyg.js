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
      ['fullscreen']],
 removeformatPasted: true,
  autogrow: true
});
})
