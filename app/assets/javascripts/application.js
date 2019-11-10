// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require jquery
//= require rails-ujs
//= require clipboard/dist/clipboard.min.js
//= require bootstrap/dist/js/bootstrap.min
//= require chart.js/dist/Chart.min.js
//= require extras.1.1.0.min
//= require shards-dashboards.1.1.0.min
//= require app/app-blog-overview.1.1.0
//= require datatables
//= require form_licao
//= require select_all.js

$(document).on('turbolinks:load', function() {
var clipboard = new ClipboardJS('.btn')

$("#selectAll").select_all({
	infinite_scroll_select: true
});

});

