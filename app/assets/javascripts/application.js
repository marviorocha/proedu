//= require jquery/dist/jquery.min.js
//= require rails-ujs
//= require clipboard/dist/clipboard.min.js
//= require bootstrap/dist/js/bootstrap.min
//= require chart.js/dist/Chart.min.js
//= require shards-dashboards.1.1.0.min
//= require datatables
//= require form_licao
//= require select_all.js

var clipboard = new ClipboardJS('.btn')

$("#selectAll").select_all({
	infinite_scroll_select: true
});
