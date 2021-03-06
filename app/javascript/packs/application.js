// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import "bootstrap";

// rails
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels");

// custom scripts
require("../scripts/main");
require("../scripts/toastity");
require ("font-awesome/css/font-awesome.min");
require("../scripts/pace");
require('../scripts/flatpickr.js')
// libary
require("chart.js/dist/Chart.min");
require("../stylesheet/application");