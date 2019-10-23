console.log('Hello World from Webpacker')

require("trix")
require("@rails/actiontext")
require("flatpickr/dist/flatpickr.css")
require("plyr/dist/plyr.css")

import flatpickr from 'flatpickr'
import animatedmodal from 'animatedmodal'
import Plyr from 'plyr';
const player = new Plyr('#player');



$("#licaoclick").click(function(){
    player.pause();
});

 
